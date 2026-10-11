#!/usr/bin/env python3

from __future__ import annotations

import argparse
import concurrent.futures
import hashlib
import io
import json
import os
import platform
import re
import shutil
import statistics
import subprocess
import sys
import tempfile
import time
import urllib.request
import zipfile
from pathlib import Path

import yaml


ROOT = Path(__file__).resolve().parent
FIXTURES_FILE = ROOT / "fixtures.yaml"
CASES_DIR = ROOT / "cases"
GOLDEN_DIR = ROOT / "golden"

CACHE_DIR = Path(
    os.environ.get("DAZE_TEST_CACHE", "~/.cache/daze-tests")
).expanduser()


def load_yaml(path: Path):
    with path.open("r", encoding="utf-8") as f:
        return yaml.safe_load(f)


def sha256_file(path: Path) -> str:
    h = hashlib.sha256()

    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)

    return h.hexdigest()


def masked_sha256(path: Path, mask) -> str:
    """Hash a file with masked byte ranges zeroed first.

    Some tool outputs embed wall/execution-clock timestamps (e.g. COFF
    bytes 4-7). The case declares `mask: [[start, end], ...]` (half-open)
    on the output entry; bless and verify both hash the masked bytes, so
    only the unmasked content gates. An absent mask hashes raw bytes.
    """
    data = bytearray(path.read_bytes())

    for start, end in mask or []:
        for index in range(start, min(end, len(data))):
            data[index] = 0

    return hashlib.sha256(bytes(data)).hexdigest()


def load_fixtures():
    return load_yaml(FIXTURES_FILE)["fixtures"]


def load_cases():
    cases = {}

    for path in sorted(CASES_DIR.glob("*.yaml")):
        case = load_yaml(path)
        case["_path"] = path

        case_id = case["id"]

        if case_id in cases:
            raise RuntimeError(f"duplicate case id: {case_id}")

        cases[case_id] = case

    return cases


def get_case(case_id: str):
    cases = load_cases()

    try:
        return cases[case_id]
    except KeyError:
        raise SystemExit(f"unknown case: {case_id}")


def fixture_cache_dir(name: str) -> Path:
    return CACHE_DIR / "fixtures" / name


def validate_fixture(name: str, config, root: Path):
    for relative in config.get("provides", []):
        path = root / relative

        if not path.is_file() or Path(relative).is_absolute() or ".." in Path(relative).parts:
            raise RuntimeError(
                f"fixture {name!r} does not provide expected file: {relative}"
            )


def safe_extract_zip(archive: Path, dest: Path):
    dest_resolved = dest.resolve()

    with zipfile.ZipFile(archive) as zf:
        for info in zf.infolist():
            target = (dest / info.filename).resolve()

            if target != dest_resolved and dest_resolved not in target.parents:
                raise RuntimeError(
                    f"unsafe path in zip archive: {info.filename}"
                )

        zf.extractall(dest)


def fixture_fingerprint(name: str, config, root: Path):
    """Content fingerprint of a fixture tree over its `provides` files."""
    digest = hashlib.sha256()

    for relative in config.get("provides", []):
        digest.update(relative.encode("utf-8") + b"\x00")
        digest.update(sha256_file(root / relative).encode("utf-8") + b"\x00")

    return digest.hexdigest()


def fixture_fingerprint_path(name: str) -> Path:
    return fixture_cache_dir(name) / ".daze-tests-fingerprint"


def check_fixture_cache(name: str, config) -> Path | None:
    """Return the cache dir if present, valid, and fingerprint-clean."""
    dest = fixture_cache_dir(name)

    if not dest.exists():
        return None

    try:
        validate_fixture(name, config, dest)
    except RuntimeError:
        print(f"cached fixture {name} is invalid; fetching again")
        shutil.rmtree(dest)
        return None

    # Pin both the catalogue asset and extracted bytes, even on a cache hit.
    marker = fixture_fingerprint_path(name)

    try:
        recorded = json.loads(marker.read_text(encoding="utf-8"))
    except (OSError, ValueError):
        recorded = None

    expected = {"asset_sha256": config["sha256"], "content": fixture_fingerprint(name, config, dest)}
    if recorded != expected or config.get("content_sha256") != expected["content"]:
        print(f"cached fixture {name} fingerprint mismatch; fetching again")
        shutil.rmtree(dest)
        return None

    return dest


def fetch_fixture(name: str) -> Path:
    fixtures = load_fixtures()

    try:
        config = fixtures[name]
    except KeyError:
        raise SystemExit(f"unknown fixture: {name}")

    hit = check_fixture_cache(name, config)

    if hit is not None:
        return hit

    dest = fixture_cache_dir(name)

    # Local sources are explicit overrides; published runs use pinned assets.
    sources_file = os.environ.get("DAZE_FIXTURE_SOURCES")
    sources = load_yaml(Path(sources_file)) if sources_file else {}
    local_dir = os.environ.get(
        f"DAZE_FIXTURE_{name.upper().replace('-', '_')}"
    ) or sources.get(name)
    if local_dir:
        source = Path(local_dir)
        if not source.is_absolute():
            source = (ROOT / source).resolve()
        validate_fixture(name, config, source)
        dest.parent.mkdir(parents=True, exist_ok=True)
        dest.mkdir()
        for relative in config["provides"]:
            target = dest / relative
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(source / relative, target)
        if config.get("content_sha256") != fixture_fingerprint(name, config, dest):
            shutil.rmtree(dest)
            raise RuntimeError(f"local fixture {name} differs from the catalogue")
        fixture_fingerprint_path(name).write_text(
            json.dumps({"asset_sha256": config["sha256"], "content": fixture_fingerprint(name, config, dest)}),
            encoding="utf-8",
        )
        print(f"fixture ready (local): {dest}", file=sys.stderr)
        return dest

    CACHE_DIR.mkdir(parents=True, exist_ok=True)

    with tempfile.TemporaryDirectory(
        prefix=f"daze-fetch-{name}-"
    ) as tmp_name:
        tmp = Path(tmp_name)
        archive = tmp / "fixture"

        print(f"fetching {name}...", file=sys.stderr)
        if not config.get("url"):
            raise RuntimeError(f"fixture {name} is unpublished; set DAZE_FIXTURE_SOURCES for an explicit local override")
        urllib.request.urlretrieve(config["url"], archive)

        actual = sha256_file(archive)
        expected = config["sha256"].lower()

        if actual != expected:
            raise RuntimeError(
                f"SHA256 mismatch for {name}\n"
                f"expected: {expected}\n"
                f"actual:   {actual}"
            )

        unpacked = tmp / "unpacked"
        unpacked.mkdir()

        if config.get("format") == "zip":
            safe_extract_zip(archive, unpacked)
        else:
            raise RuntimeError(
                f"unsupported fixture format: {config.get('format')}"
            )

        validate_fixture(name, config, unpacked)
        if config.get("content_sha256") != fixture_fingerprint(name, config, unpacked):
            raise RuntimeError(f"fixture {name} extracted-content mismatch")

        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copytree(unpacked, dest)

        fixture_fingerprint_path(name).write_text(
            json.dumps({"asset_sha256": config["sha256"], "content": fixture_fingerprint(name, config, dest)}),
            encoding="utf-8",
        )

    print(f"fixture ready: {dest}", file=sys.stderr)
    return dest


def stage_case(case):
    fixture = fetch_fixture(case["fixture"])

    tmp = tempfile.TemporaryDirectory(
        prefix=f"daze-test-{case['id']}-"
    )

    work = Path(tmp.name)

    # Stage the DOS fixture installation tree.
    fixture_dest = work / case.get("fixture_dest", ".")
    for relative in load_fixtures()[case["fixture"]]["provides"]:
        target = fixture_dest / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(fixture / relative, target)

    # Stage test inputs.
    for item in case.get("inputs", []):
        source = ROOT / item["source"]
        dest = work / item.get("dest", item["source"])

        dest.parent.mkdir(parents=True, exist_ok=True)

        if item.get("crlf"):
            # Old DOS tools (e.g. ASPSX 1.05/1.07) reject bare LF.
            # Tracked sources stay LF/CRLF-agnostic; materialize DOS
            # line endings in the guest drive. Normalize first so
            # already-CRLF sources are not doubled.
            raw = source.read_bytes().replace(b"\r\n", b"\n")
            dest.write_bytes(raw.replace(b"\n", b"\r\n"))
        else:
            shutil.copy2(source, dest)

    return tmp, work


def find_output(work: Path, relative: str) -> Path | None:
    """Locate a declared guest output, tolerating DOS case folding.

    DOSEMU2's EMUFS may materialize ``-o FOO.O`` as ``foo.o`` while
    Daze preserves the requested case. Exact match wins; otherwise
    fall back to a case-insensitive match within the same directory.
    """
    exact = work / relative
    if exact.exists():
        return exact

    parent = work / Path(relative).parent
    wanted = Path(relative).name.lower()

    if parent.is_dir():
        for child in parent.iterdir():
            if child.name.lower() == wanted:
                return child

    return None


def case_timeout(case) -> int:
    """Seconds bounding any single run of this case: hard 60, no overrides.

    Policy: nothing in the corpus may need longer than 60s for one
    invocation. Workloads that exceed it on a backend are SKIP-listed
    for that backend (see known_limit_backends) rather than given room —
    suite speed is a feature. Shared by the runner (subprocess timeout)
    and CTest (TIMEOUT property).
    """
    return 60


def case_commands(case):
    """Return a case's ordered commands, retaining the single-command form."""
    commands = case.get("commands")
    if commands is None:
        commands = [case["command"]]
    if not commands:
        raise RuntimeError(f"case {case['id']} has no commands")
    return commands


def step_checks(step, work, result):
    expected = step.get("expect", {})
    if result.returncode != expected.get("exit_code", 0):
        raise RuntimeError(f"{step['program']}: expected status {expected.get('exit_code', 0)}, got {result.returncode}")
    for stream in ("stdout", "stderr"):
        if f"{stream}_equals" in expected and getattr(result, stream) != expected[f"{stream}_equals"].encode():
            raise RuntimeError(f"{step['program']}: unexpected {stream}")
        for text in expected.get(f"{stream}_contains", []):
            if text.encode() not in getattr(result, stream):
                raise RuntimeError(f"{step['program']}: missing {stream} text {text!r}")
    for item in expected.get("files", []):
        path = find_output(work, item["path"])
        if item.get("absent"):
            if path is not None:
                raise RuntimeError(f"unexpected output: {item['path']}")
            continue
        if path is None:
            raise RuntimeError(f"missing step output: {item['path']}")
        if "sha256" in item and masked_sha256(path, item.get("mask")) != item["sha256"]:
            raise RuntimeError(f"step output hash mismatch: {item['path']}")
        if "size" in item and path.stat().st_size != item["size"]:
            raise RuntimeError(f"step output size mismatch: {item['path']}")
        if "equals" in item and path.read_bytes() != (work / item["equals"]).read_bytes():
            raise RuntimeError(f"step output differs from {item['equals']}: {item['path']}")


def run_daze(case, work: Path, daze: str, backend: str, diagnostic=False, evidence=None):
    # Keep comparison runs free of debug diagnostics so golden stderr remains meaningful.
    started = time.perf_counter()
    commands_run = []
    stdout = []
    stderr = []

    for index, step in enumerate(case_commands(case)):
        for relative in step.get("remove", []):
            path = find_output(work, relative)
            if path is not None:
                path.unlink()
        for source, target in step.get("copy", {}).items():
            shutil.copy2(work / source, work / target)
        command = [daze]
        if backend != "omitted":
            command += ["--backend", backend]
        if diagnostic:
            command += ["--debug", "--metrics"]
        for mount in case.get("mounts", [{"path": "."}]):
            prefix = mount.get("drive", "")
            command += ["--mount", (prefix + ":" if prefix else "") + str(work / mount["path"])]
        for key, value in {**case.get("env", {}), **step.get("env", {})}.items():
            command += ["--env", f"{key}={value}"]
        command += [step["program"], *step.get("args", [])]
        commands_run.append(command)
        try:
            result = subprocess.run(command, cwd=work, stdout=subprocess.PIPE,
                                    stderr=subprocess.PIPE, timeout=case_timeout(case))
        except subprocess.TimeoutExpired as error:
            if evidence:
                evidence.mkdir(parents=True, exist_ok=True)
                (evidence / f"step-{index}-stdout").write_bytes(error.stdout or b"")
                (evidence / f"step-{index}-stderr").write_bytes(error.stderr or b"")
                (evidence / f"step-{index}.json").write_text(json.dumps({"command": command, "timeout": True}))
            raise
        if evidence:
            evidence.mkdir(parents=True, exist_ok=True)
            (evidence / f"step-{index}-stdout").write_bytes(result.stdout)
            (evidence / f"step-{index}-stderr").write_bytes(result.stderr)
            artifacts = []
            for item in step.get("expect", {}).get("files", []) + case.get("outputs", []):
                path = find_output(work, item["path"])
                artifacts.append({"path": item["path"], "present": path is not None,
                                  "size": path.stat().st_size if path else None,
                                  "sha256": sha256_file(path) if path else None})
            (evidence / f"step-{index}.json").write_text(json.dumps({
                "command": command, "host_status": result.returncode, "artifacts": artifacts,
                "terminal_records": re.findall(r"[^\n]*command=\d+[^\n]*", result.stderr.decode(errors="replace")),
                "selection_records": re.findall(r"metrics: backend=[^\n]+", result.stderr.decode(errors="replace")),
            }, indent=2))
        step_checks(step, work, result)
        if diagnostic:
            text = result.stderr.decode(errors="replace")
            status = step.get("expect", {}).get("exit_code", 0)
            if not re.search(rf"command=0 .*exit={status}(?: |\n)", text):
                raise RuntimeError(f"{step['program']}: missing DOS completion {status}")
            selected = "unicorn" if backend == "unicorn" else "kvm"
            selection = "unicorn" if selected == "unicorn" else "kvm-completed"
            if f"metrics: backend={selected} selection={selection}\n" not in text:
                raise RuntimeError(f"{step['program']}: unexpected backend selection")
        stdout.append(result.stdout)
        stderr.append(result.stderr)

    elapsed = time.perf_counter() - started
    result = subprocess.CompletedProcess(
        commands_run,
        result.returncode,
        stdout=b"".join(stdout),
        stderr=b"".join(stderr),
    )
    return result, elapsed


def dos_command(command) -> str:
    """Render the guest command line for DOSEMU2's ``-E`` option."""
    parts = [command["program"], *command.get("args", [])]

    quoted = []
    for part in parts:
        if any(c in part for c in (' ', '"')):
            quoted.append('"' + part.replace('"', '') + '"')
        else:
            quoted.append(part)

    return " ".join(quoted)


def run_dosemu2(case, work: Path, dosemu2: str):
    validate_oracle_case(case)
    # This deliberately isolates the DOSEMU2 invocation in one place.
    # Host binary is `dosemu` (package dosemu2); guest command goes
    # through a single `-E` string with `-K <dir>` as the drive root.
    started = time.perf_counter()
    commands_run = []
    stdout = []
    stderr = []

    for step in case_commands(case):
        command = [
            dosemu2,
            "-dumb",
            "-K",
            str(work),
            "-E",
            dos_command(step),
        ]
        commands_run.append(command)
        result = subprocess.run(
            command,
            cwd=work,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            timeout=case_timeout(case),
        )
        stdout.append(result.stdout)
        stderr.append(result.stderr)
        if result.returncode != 0:
            break

    elapsed = time.perf_counter() - started
    result = subprocess.CompletedProcess(
        commands_run,
        result.returncode,
        stdout=b"".join(stdout),
        stderr=b"".join(stderr),
    )
    return result, elapsed


def lowercase_kvikdos_aliases(work: Path):
    """Mirror staged names in lowercase for KvikDOS's lowercase drive mode."""
    paths = sorted(work.rglob("*"), key=lambda path: len(path.parts))

    for path in paths:
        relative = path.relative_to(work)
        lower = work.joinpath(*(part.lower() for part in relative.parts))

        if lower == path:
            continue

        if path.is_dir():
            lower.mkdir(parents=True, exist_ok=True)
        elif not lower.exists():
            lower.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(path, lower)


def remove_declared_outputs(case, work: Path):
    """Prevent pre-existing fixture debris from satisfying output checks."""
    for output in case.get("outputs", []):
        relative = Path(output["path"])
        parent = work / relative.parent
        if not parent.is_dir():
            continue

        wanted = relative.name.lower()
        for path in parent.iterdir():
            if path.name.lower() != wanted:
                continue
            if path.is_dir() and not path.is_symlink():
                shutil.rmtree(path)
            else:
                path.unlink()


def run_kvikdos(case, work: Path, kvikdos: str):
    """Run ordered case commands with KvikDOS on a lowercase C: mount."""
    # KvikDOS applies one host filename case mode per drive. Mirroring staged
    # names before timing lets existing cases retain DOS spelling regardless
    # of whether their fixture files are upper-, lower-, or mixed-case.
    remove_declared_outputs(case, work)
    lowercase_kvikdos_aliases(work)

    started = time.perf_counter()
    commands_run = []
    stdout = []
    stderr = []

    for step in case_commands(case):
        relative_program = Path(step["program"].replace("\\", "/"))
        program = work.joinpath(
            *(part.lower() for part in relative_program.parts)
        )
        command = [
            kvikdos,
            f"--mount=C-{work}/",
            "--tty-in=-3",
            str(program),
            *step.get("args", []),
        ]
        commands_run.append(command)
        result = subprocess.run(
            command,
            cwd=work,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            timeout=case_timeout(case),
        )
        stdout.append(result.stdout)
        stderr.append(result.stderr)
        if result.returncode != 0:
            break

    elapsed = time.perf_counter() - started
    result = subprocess.CompletedProcess(
        commands_run,
        result.returncode,
        stdout=b"".join(stdout),
        stderr=b"".join(stderr),
    )
    return result, elapsed


def golden_path(case):
    return GOLDEN_DIR / case["id"]


def validate_oracle_case(case):
    unsupported = [key for key in ("mounts", "env") if case.get(key)]
    for key in ("copy", "remove", "env", "expect"):
        if any(step.get(key) for step in case_commands(case)):
            unsupported.append(f"step {key}")
    if unsupported:
        raise RuntimeError(f"oracle does not support case {case['id']}: {', '.join(unsupported)}")


def validate_golden_contract(case, manifest):
    declared = {output["path"]: output for output in case.get("outputs", [])}
    files = manifest.get("files", [])
    paths = [entry["path"] for entry in files]
    missing = declared.keys() - set(paths)
    if missing:
        raise RuntimeError(f"golden omits declared outputs: {', '.join(sorted(missing))}")
    if len(paths) != len(set(paths)):
        raise RuntimeError("golden contains duplicate output paths")
    for entry in files:
        if entry["path"] in declared and entry.get("mask", []) != declared[entry["path"]].get("mask", []):
            raise RuntimeError(f"golden mask differs from case: {entry['path']}")
    if manifest.get("stdout") is None and not all(
        any(key in step.get("expect", {}) for key in ("stdout_equals", "stdout_contains"))
        for step in case_commands(case)
    ):
        raise RuntimeError("A null stdout golden requires explicit stdout assertions on every step")


def collect_golden_outputs(case, work):
    files = []
    for output in case.get("outputs", []):
        path = find_output(work, output["path"])
        if path is None or not path.is_file():
            raise RuntimeError(f"missing declared output: {output['path']}; blessing nothing")
        entry = {"path": output["path"], "sha256": masked_sha256(path, output.get("mask"))}
        if output.get("mask"):
            entry["mask"] = output["mask"]
        files.append(entry)
        print(f"{output['path']}: {entry['sha256']} ({path.stat().st_size} bytes)")
    return files


def write_golden(case, result, files):
    manifest = {
        "exit_code": result.returncode,
        "stdout": None if case.get("ignore_stdout") else "stdout",
        "stderr": None if case.get("ignore_stderr") else "stderr",
        "files": files,
    }
    validate_golden_contract(case, manifest)
    golden = golden_path(case)
    golden.mkdir(parents=True, exist_ok=True)
    for stream in ("stdout", "stderr"):
        if manifest[stream] is not None:
            (golden / stream).write_bytes(getattr(result, stream))
    (golden / "manifest.yaml").write_text(yaml.safe_dump(manifest, sort_keys=False), encoding="utf-8")
    print(f"blessed golden result: {golden} (review with git diff)")


def compare_bytes(label: str, expected: bytes, actual: bytes, err=None):
    if expected == actual:
        return True

    err = err or sys.stderr
    print(f"{label}: differs", file=err)

    try:
        expected_text = expected.decode("utf-8")
        actual_text = actual.decode("utf-8")

        print("---- expected ----", file=err)
        print(expected_text, file=err)

        print("---- actual ----", file=err)
        print(actual_text, file=err)

    except UnicodeDecodeError:
        print(
            f"expected sha256: {hashlib.sha256(expected).hexdigest()}",
            file=err,
        )
        print(
            f"actual sha256:   {hashlib.sha256(actual).hexdigest()}",
            file=err,
        )

    return False


def verify_result(case, work: Path, result, err=None, diagnostic=False) -> bool:
    err = err or sys.stderr
    golden = golden_path(case)
    manifest_file = golden / "manifest.yaml"

    if not manifest_file.exists():
        print(
            f"no golden result for {case['id']}; "
            "run oracle --bless first",
            file=err,
        )
        return False

    manifest = load_yaml(manifest_file)
    try:
        validate_golden_contract(case, manifest)
    except RuntimeError as error:
        print(f"invalid golden for {case['id']}: {error}", file=err)
        return False

    ok = True

    if result.returncode != manifest["exit_code"]:
        print(
            f"exit code: expected {manifest['exit_code']}, "
            f"got {result.returncode}",
            file=err,
        )
        ok = False

    if manifest.get("stdout") is not None:
        expected_stdout = (golden / manifest["stdout"]).read_bytes()
        ok &= compare_bytes("stdout", expected_stdout, result.stdout, err)

    # A null stderr key skips stderr comparison. DPMI-heavy tools print
    # backend-specific diagnostics there (Unicorn register dumps whose
    # stack-relative fields vary run to run; KVM stays silent), so exact
    # matching is meaningless; exit/stdout/objects still gate. See the
    # case's ORACLE.md for the recorded evidence.
    if not diagnostic and manifest.get("stderr") is not None:
        expected_stderr = (golden / manifest["stderr"]).read_bytes()
        ok &= compare_bytes("stderr", expected_stderr, result.stderr, err)

    for expected_file in manifest.get("files", []):
        relative = expected_file["path"]
        path = find_output(work, relative)

        if path is None:
            print(f"missing output: {relative}", file=err)
            ok = False
            continue

        actual_sha = masked_sha256(path, expected_file.get("mask"))
        expected_sha = expected_file["sha256"]

        if actual_sha != expected_sha:
            print(
                f"{relative}: SHA256 mismatch\n"
                f"expected: {expected_sha}\n"
                f"actual:   {actual_sha}",
                file=err,
            )
            ok = False

    return ok


def command_fetch(args):
    fetch_fixture(args.fixture)
    return 0


def command_package(args):
    sources = load_yaml(Path(args.sources))
    fixtures = load_fixtures()
    output = Path(args.output)
    output.mkdir(parents=True, exist_ok=True)
    checksums = []
    for name, config in fixtures.items():
        source = Path(sources[name]).resolve()
        validate_fixture(name, config, source)
        archive = output / f"{name}.zip"
        with zipfile.ZipFile(archive, "w", compression=zipfile.ZIP_DEFLATED) as zf:
            for relative in config["provides"]:
                info = zipfile.ZipInfo(relative, (1980, 1, 1, 0, 0, 0))
                info.compress_type = zipfile.ZIP_DEFLATED
                info.external_attr = 0o100644 << 16
                zf.writestr(info, (source / relative).read_bytes())
        config.pop("local_dir", None)
        config["url"] = f"{args.base_url.rstrip('/')}/{name}.zip" if args.base_url else ""
        config["sha256"] = sha256_file(archive)
        config["content_sha256"] = fixture_fingerprint(name, config, source)
        checksums.append(f"{config['sha256']}  {name}.zip")
    (output / "fixtures.yaml").write_text(yaml.safe_dump({"fixtures": fixtures}, sort_keys=False))
    (output / "SHA256SUMS").write_text("\n".join(checksums) + "\n")
    print(f"Prepared {len(fixtures)} archives and fixtures.yaml in {output}")
    return 0


def command_release_catalogue(args):
    base = args.base_url.rstrip("/")
    if not base.startswith(("https://", "http://")):
        raise RuntimeError("Release download base URL must start with https:// or http://")
    fixtures = load_fixtures()
    assets = Path(args.assets)
    for name, config in fixtures.items():
        archive = assets / f"{name}.zip"
        if sha256_file(archive) != config["sha256"]:
            raise RuntimeError(f"release archive differs from catalogue: {archive}")
        with tempfile.TemporaryDirectory(prefix="daze-release-check-") as tmp:
            unpacked = Path(tmp)
            safe_extract_zip(archive, unpacked)
            validate_fixture(name, config, unpacked)
            if fixture_fingerprint(name, config, unpacked) != config["content_sha256"]:
                raise RuntimeError(f"release contents differ from catalogue: {name}")
        config["url"] = f"{base}/{name}.zip"
    Path(args.output).write_text(yaml.safe_dump({"fixtures": fixtures}, sort_keys=False))
    print(f"Wrote {len(fixtures)} verified release URLs to {args.output}")
    return 0


def command_bless(args):
    """Bless a golden result from a Daze run (developer operation).

    Stages the case, runs it once under the requested backend, and writes
    golden/<id>/{manifest.yaml,stdout[,stderr]}. Honors the case's
    `ignore_stderr` flag and per-output `mask` entries so the written
    manifest verifies cleanly. Prints everything written for review;
    the actual review is `git diff` afterwards. Refuses known_limit
    backends unless --force is given. Version/hash pinning of the daze
    binary is deliberately deferred (see bench's daze provenance).
    """
    case = get_case(args.case)
    backend = args.backend

    if backend in known_limit_backends(case) and not args.force:
        print(
            f"refusing to bless {case['id']} [{backend}]: documented "
            "known limit (see KNOWN-LIMITS.md); use --force",
            file=sys.stderr,
        )
        return 1

    tmp, work = stage_case(case)

    try:
        try:
            result, elapsed = run_daze(case, work, args.daze, backend)
        except subprocess.TimeoutExpired:
            print(
                f"TIMEOUT {case['id']} [{backend}] after "
                f"{case_timeout(case)}s; blessing nothing",
                file=sys.stderr,
            )
            return 124

        print(f"case:      {case['id']}")
        print(f"backend:   {backend}")
        print(f"exit code: {result.returncode}")
        print(f"time:      {elapsed * 1000:.3f} ms")

        files = collect_golden_outputs(case, work)
        write_golden(case, result, files)
        return 0

    finally:
        tmp.cleanup()


def command_oracle(args):
    case = get_case(args.case)
    validate_oracle_case(case)

    tmp, work = stage_case(case)

    try:
        try:
            result, elapsed = run_dosemu2(case, work, args.dosemu2)
        except subprocess.TimeoutExpired:
            print(
                f"TIMEOUT {case['id']} [dosemu2] after "
                f"{case_timeout(case)}s",
                file=sys.stderr,
            )
            return 124

        print(f"case:      {case['id']}")
        print(f"exit code: {result.returncode}")
        print(f"time:      {elapsed * 1000:.3f} ms")

        files = collect_golden_outputs(case, work)
        if not args.bless:
            print("not updating golden data; use --bless to accept")
            return 0
        write_golden(case, result, files)

        return 0

    finally:
        tmp.cleanup()


def kvm_available():
    try:
        import fcntl
        with open("/dev/kvm", "rb", buffering=0) as device:
            if fcntl.ioctl(device, 0xAE00, 0) != 12:
                return False
            os.close(fcntl.ioctl(device, 0xAE01, 0))
        return True
    except (ImportError, OSError):
        return False


def known_limit_backends(case) -> tuple:
    """Backends for which this case is a documented known limit.

    `known_limit: true` skips every backend; a list (e.g. `[unicorn]`)
    skips only those, so a green backend keeps its coverage while the
    broken one stays explicitly tracked. See KNOWN-LIMITS.md.
    """
    value = case.get("known_limit")

    if value is True:
        return ("unicorn", "kvm")

    if isinstance(value, list):
        return tuple(b for b in value if b in ("unicorn", "kvm"))

    return ()


def new_invocation(evidence_dir):
    base = Path(evidence_dir or ROOT / "evidence")
    base.mkdir(parents=True, exist_ok=True)
    evidence = Path(tempfile.mkdtemp(prefix="run-", dir=base))
    latest = base / f".latest-{evidence.name}"
    try:
        latest.symlink_to(evidence.name, target_is_directory=True)
        latest.replace(base / "latest")
    finally:
        latest.unlink(missing_ok=True)
    return evidence


def write_summary(path, **fields):
    summary = json.loads(path.read_text()) if path.exists() else {}
    summary.update(fields)
    path.write_text(json.dumps(summary, indent=2) + "\n")


def regress_one(case, backend: str, daze: str, out=None, err=None, required=False,
                evidence_dir=None, _invocation=None):
    evidence = Path(_invocation) if _invocation is not None else new_invocation(evidence_dir)
    pair = evidence / f"{case['id']}.{backend}"
    if _invocation is not None and pair.exists():
        raise RuntimeError(f"pair evidence already exists in this invocation: {pair}")
    pair.mkdir(parents=True, exist_ok=True)
    summary = pair / "result.json"
    write_summary(summary, case=case["id"], backend=backend, state="running")
    if _invocation is None:
        (evidence / "selection.json").write_text(json.dumps([[case["id"], backend]]))
        print(f"evidence: {evidence}", file=err or sys.stderr)
    try:
        code, detail = _regress_one(case, backend, daze, out, err, required, evidence)
    except (RuntimeError, OSError) as error:
        print(f"FAIL {case['id']} [{backend}]: {error}", file=err or sys.stderr)
        code, detail = 1, str(error)
    except Exception as error:
        write_summary(summary, state="failed", detail=str(error))
        raise
    write_summary(summary, state="finished", status=code, detail=detail)
    return code, detail


def _regress_one(case, backend: str, daze: str, out=None, err=None, required=False, evidence_dir=None):
    """Run one case/backend pair, returning (returncode, detail).

    Shared core behind `regress` (single pair) and `matrix` (many pairs
    in parallel threads): 0 pass, 1 fail, 77 skip, 124 timeout. Callers
    may pass explicit streams; `matrix` uses per-thread buffers so
    diagnostics never interleave.
    """
    out = out or sys.stdout
    err = err or sys.stderr

    if backend in known_limit_backends(case):
        print(
            f"SKIP: {case['id']} [{backend}] is a documented "
            "known limit (see KNOWN-LIMITS.md)",
            file=err,
        )
        return (1 if required else 77), "known limit"

    if (backend == "kvm" or required and backend in ("auto", "omitted")) and not kvm_available():
        print("SKIP: /dev/kvm is not available", file=err)
        return (1 if required else 77), "/dev/kvm unavailable"

    tmp, work = stage_case(case)
    evidence = Path(evidence_dir or ROOT / "evidence") / f"{case['id']}.{backend}"
    evidence.mkdir(parents=True, exist_ok=True)
    passed = False

    try:
        try:
            result, _ = run_daze(
                case,
                work,
                daze,
                backend,
                evidence=evidence / "comparison",
            )
        except subprocess.TimeoutExpired:
            print(
                f"TIMEOUT {case['id']} [{backend}] after "
                f"{case_timeout(case)}s",
                file=err,
            )
            return 124, "timeout"

        if verify_result(case, work, result, err):
            if required:
                diagnostic_tmp, diagnostic_work = stage_case(case)
                try:
                    diagnostic_result, _ = run_daze(case, diagnostic_work, daze, backend,
                                                    diagnostic=True, evidence=evidence / "diagnostic")
                    if not verify_result(case, diagnostic_work, diagnostic_result, err, diagnostic=True):
                        shutil.copytree(diagnostic_work, evidence / "failed-diagnostic")
                        return 1, "diagnostic result differs"
                except Exception:
                    shutil.copytree(diagnostic_work, evidence / "failed-diagnostic")
                    raise
                finally:
                    diagnostic_tmp.cleanup()
            passed = True
            print(f"PASS {case['id']} [{backend}]", file=out)
            return 0, "pass"

        print(f"FAIL {case['id']} [{backend}]", file=err)
        return 1, "fail"

    except (RuntimeError, OSError) as error:
        print(f"FAIL {case['id']} [{backend}]: {error}", file=err)
        return 1, str(error)
    except subprocess.TimeoutExpired:
        return 124, "diagnostic timeout"
    finally:
        if not passed:
            shutil.copytree(work, evidence / "failed-work")
        tmp.cleanup()


def command_regress(args):
    case = get_case(args.case)
    invocation = os.environ.get("DAZE_TEST_INVOCATION_DIR")
    if invocation:
        invocation = Path(invocation).resolve()
        if not invocation.is_dir():
            raise RuntimeError(f"acceptance invocation directory does not exist: {invocation}")
    code, _ = regress_one(case, args.backend, args.daze, required=args.required,
                          evidence_dir=args.evidence_dir, _invocation=invocation)
    return code


def selected_pairs(args, cases):
    if args.group:
        groups = load_yaml(ROOT / "required.yaml")["groups"]
        pairs = set()
        for name in args.group:
            if name not in groups:
                raise RuntimeError(f"unknown group: {name}")
            for entry in groups[name]:
                if entry["case"] not in cases:
                    raise RuntimeError(f"missing required case: {entry['case']}")
                pairs.update((entry["case"], b) for b in entry["backends"])
    else:
        pairs = {(name, b) for name in cases for b in ("unicorn", "kvm")}
    pairs = sorted((c, b) for c, b in pairs
                   if (not args.backend or b in args.backend)
                   and (not getattr(args, "filter", None) or args.filter in f"{c}.{b}"))
    if not pairs:
        raise RuntimeError("selection contains no case/backend pairs")
    for name, backend in pairs:
        if backend not in ("unicorn", "kvm", "auto", "omitted"):
            raise RuntimeError(f"unknown backend in selection: {backend}")
        if args.group and backend in known_limit_backends(cases[name]):
            raise RuntimeError(f"required pair is a known limit: {name}.{backend}")
        if args.group and not (golden_path(cases[name]) / "manifest.yaml").is_file():
            raise RuntimeError(f"missing required golden: {name}")
    return pairs


def corpus_fingerprint():
    digest = hashlib.sha256()
    paths = [ROOT / name for name in ("daze_tests.py", "fixtures.yaml", "required.yaml", "requirements.txt")]
    for directory in ("cases", "sources", "golden"):
        paths.extend(p for p in (ROOT / directory).rglob("*") if p.is_file())
    for path in sorted(paths):
        digest.update(str(path.relative_to(ROOT)).encode() + b"\0" + path.read_bytes())
    return digest.hexdigest()


def command_matrix(args):
    evidence = new_invocation(args.evidence_dir)
    summary = evidence / "matrix.json"
    write_summary(summary, state="running", groups=args.group, backends=args.backend)
    print(f"evidence: {evidence}", file=sys.stderr)
    try:
        return run_matrix(args, evidence)
    except Exception as error:
        write_summary(summary, state="failed", error=str(error))
        raise


def run_matrix(args, evidence):
    """Run every case/backend pair in parallel, regress-only.

    Benchmarks are deliberately excluded: timing under contention is
    meaningless. Fixtures prefetch serially (cache races), then pairs
    run on a thread pool since every case stages an isolated workdir.
    Required groups also reject skips and missing pairs.
    """
    import threading

    cases = load_cases()

    pairs = selected_pairs(args, cases)
    (evidence / "selection.json").write_text(json.dumps(pairs, indent=2))
    write_summary(evidence / "matrix.json", expected=pairs)

    if not pairs:
        print("matrix: no pairs match", file=sys.stderr)
        return 1

    for fixture in sorted({cases[c].get("fixture") for c, _ in pairs}):
        fetch_fixture(fixture)

    jobs = max(1, args.jobs or (1 if args.group else (os.cpu_count() or 4)))
    lock = threading.Lock()
    results = []

    def work(pair):
        case_id, backend = pair
        case = cases[case_id]
        out_buffer = io.StringIO()
        err_buffer = io.StringIO()

        code, detail = regress_one(case, backend, args.daze, out_buffer, err_buffer,
                                  required=bool(args.group), _invocation=evidence)

        with lock:
            label = {0: "PASS", 1: "FAIL", 77: "SKIP"}.get(code, "TIMEOUT")
            print(f"{label} {case_id} [{backend}]", flush=True)

            if code != 0:
                for line in (out_buffer.getvalue() + err_buffer.getvalue()).splitlines():
                    line = line.strip()
                    if line:
                        print(f"  | {line}", flush=True)

        results.append({"case": case_id, "backend": backend, "status": code, "detail": detail})
        return code

    with concurrent.futures.ThreadPoolExecutor(max_workers=jobs) as pool:
        list(pool.map(work, pairs))

    counts = {
        label: sum(1 for c in results if c["status"] == code)
        for label, code in (("pass", 0), ("fail", 1), ("skip", 77))
    }
    timeouts = sum(1 for c in results if c["status"] not in (0, 1, 77))
    write_summary(evidence / "matrix.json",
                  results=sorted(results, key=lambda r: (r["case"], r["backend"])))
    write_summary(evidence / "matrix.json", state="finished",
                  daze_sha256=sha256_file(Path(args.daze)), fixtures=load_fixtures(),
                  daze_version=subprocess.run([args.daze, "--version"], capture_output=True,
                                              text=True, check=True).stdout.strip(),
                  corpus_sha256=corpus_fingerprint())

    print(
        f"matrix: {counts['pass']} pass, {counts['skip']} skip, "
        f"{counts['fail']} fail, {timeouts} timeout "
        f"({len(results)} pairs, -j{jobs})"
    )

    executed = {(r["case"], r["backend"]) for r in results}
    if counts["fail"] or args.group and counts["skip"] or executed != set(pairs):
        return 1
    if timeouts:
        return 124
    return 0


def percentile_ms(values, pct: float):
    """Linear-interpolation percentile over a non-empty sample list."""
    ordered = sorted(values)
    if len(ordered) == 1:
        return ordered[0]
    rank = (pct / 100) * (len(ordered) - 1)
    low = int(rank)
    frac = rank - low
    high = min(low + 1, len(ordered) - 1)
    return ordered[low] + frac * (ordered[high] - ordered[low])


def stats(samples):
    valid = [s for s in samples if s is not None]
    timeouts = len(samples) - len(valid)

    outcome = {
        "samples_ms": samples,
        "timeouts": timeouts,
    }

    if not valid:
        outcome.update({
            "min_ms": None,
            "max_ms": None,
            "mean_ms": None,
            "median_ms": None,
            "p90_ms": None,
            "stddev_ms": None,
        })
        return outcome

    outcome.update({
        "min_ms": min(valid),
        "max_ms": max(valid),
        "mean_ms": statistics.mean(valid),
        "median_ms": statistics.median(valid),
        "p90_ms": percentile_ms(valid, 90),
        "stddev_ms": (
            statistics.stdev(valid)
            if len(valid) > 1
            else 0.0
        ),
    })
    return outcome


def check_external_emulator_outputs(case, work: Path, result, target: str) -> bool:
    """Lenient correctness gate for external benchmark emulators.

    These emulators can produce valid but environment-dependent files, so
    require a clean exit plus presence of every declared output rather than
    byte identity with Daze's golden.
    """
    ok = True

    if result.returncode != 0:
        print(
            f"{target} exit code: expected 0, got {result.returncode}",
            file=sys.stderr,
        )
        ok = False

    for output in case.get("outputs", []):
        relative = output["path"]

        if find_output(work, relative) is None:
            print(f"{target} missing output: {relative}", file=sys.stderr)
            ok = False

    return ok


def command_bench(args):
    case = get_case(args.case)

    benchmark = case.get("benchmark", {})
    iterations = args.iterations or benchmark.get("iterations", 10)

    kvikdos = args.kvikdos or default_kvikdos_path()
    if kvikdos:
        kvikdos = str(Path(shutil.which(kvikdos) or kvikdos).resolve())
    targets = [("dosemu2", None)]

    if kvikdos and (benchmark.get("kvikdos") or args.only == "kvikdos"):
        targets.append(("kvikdos", "kvikdos"))

    if kvm_available():
        targets.append(("kvm", "kvm"))
    targets.append(("unicorn", "unicorn"))

    if args.only:
        targets = [t for t in targets if t[0] == args.only]

        if not targets:
            if args.only == "kvikdos":
                print(
                    "KvikDOS was not found; pass --kvikdos <path> to enable it",
                    file=sys.stderr,
                )
                return 1
            print(f"unknown bench target: {args.only}", file=sys.stderr)
            return 1

    try:
        daze_digest = sha256_file(Path(args.daze))[:16]
    except OSError:
        daze_digest = None

    kvikdos_provenance = None
    if any(target_name == "kvikdos" for target_name, _ in targets):
        try:
            kvikdos_digest = sha256_file(Path(kvikdos))[:16]
        except OSError:
            kvikdos_digest = None
        kvikdos_provenance = {
            "path": kvikdos,
            "sha256_prefix": kvikdos_digest,
        }

    output = {
        "case": case["id"],
        "size": benchmark.get("size"),
        "iterations": iterations,
        "host": {
            "platform": platform.platform(),
            "machine": platform.machine(),
        },
        "daze": {
            "path": args.daze,
            "sha256_prefix": daze_digest,
        },
        "targets": {},
    }
    if kvikdos_provenance is not None:
        output["kvikdos"] = kvikdos_provenance

    for target_name, backend in targets:
        samples = []

        # Known-slow backends record instant N/A without burning the
        # 60s bound per iteration: the outcome is already documented.
        # Unexpected timeouts below still record attempted N/A samples.
        if backend is not None and backend in known_limit_backends(case):
            print(
                f"skipping {target_name}: documented known limit; "
                f"recording N/A x{iterations}",
                file=sys.stderr,
            )
            samples = [None] * iterations
            output["targets"][target_name] = stats(samples)
            continue

        print(
            f"benchmarking {target_name}: "
            f"{iterations} iterations",
            file=sys.stderr,
        )

        for _ in range(iterations):
            tmp, work = stage_case(case)

            try:
                try:
                    if target_name == "dosemu2":
                        result, elapsed = run_dosemu2(
                            case,
                            work,
                            args.dosemu2,
                        )
                        ok = check_external_emulator_outputs(
                            case, work, result, target_name
                        )
                    elif target_name == "kvikdos":
                        result, elapsed = run_kvikdos(
                            case,
                            work,
                            kvikdos,
                        )
                        ok = check_external_emulator_outputs(
                            case, work, result, target_name
                        )
                    else:
                        result, elapsed = run_daze(
                            case,
                            work,
                            args.daze,
                            backend,
                        )
                        ok = verify_result(case, work, result)
                except subprocess.TimeoutExpired:
                    print(
                        f"TIMEOUT {case['id']} [{target_name}] after "
                        f"{case_timeout(case)}s; recording N/A",
                        file=sys.stderr,
                    )
                    samples.append(None)
                    continue

                if not ok:
                    raise RuntimeError(
                        f"{target_name} failed correctness check; "
                        "refusing to benchmark"
                    )

                samples.append(elapsed * 1000)

            finally:
                tmp.cleanup()

        output["targets"][target_name] = stats(samples)

    rendered = json.dumps(output, indent=2)

    if args.output:
        path = Path(args.output)
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(rendered + "\n", encoding="utf-8")
        print(f"wrote {path}", file=sys.stderr)
    else:
        print(rendered)

    return 0


def cmake_quote(value: str) -> str:
    return value.replace("\\", "\\\\").replace('"', '\\"')


def fixture_cmake_name(name: str):
    return "daze_" + "".join(
        c if c.isalnum() else "_"
        for c in name
    )


def default_kvikdos_path():
    """Find a sibling checkout first, then an installed KvikDOS on PATH."""
    sibling = ROOT.parent / "kvikdos" / "kvikdos"
    if sibling.is_file() and os.access(sibling, os.X_OK):
        return str(sibling)
    return shutil.which("kvikdos")


def command_emit_ctest(args):
    cases = load_cases()
    pairs = selected_pairs(args, cases)

    fixtures = sorted({
        case["fixture"]
        for name, _ in pairs for case in [cases[name]]
    })
    catalogue = load_fixtures()
    tests = sorted([f"compat.{name}.{backend}" for name, backend in pairs]
                   + [f"fixture.{fixture}" for fixture in fixtures])
    if args.manifest:
        Path(args.manifest).write_text(json.dumps({
            "schema_version": 1, "pairs": pairs, "tests": tests,
            "fixtures": {name: catalogue[name] for name in fixtures},
            "corpus_sha256": corpus_fingerprint(),
        }, indent=2) + "\n")
    evidence_flag = (f'--evidence-dir "{cmake_quote(args.evidence_dir)}"'
                     if args.evidence_dir else "")

    for fixture in fixtures:
        cmake_fixture = fixture_cmake_name(fixture)

        print(f"""
add_test(
    NAME fixture.{cmake_quote(fixture)}
    COMMAND
        "${{Python3_EXECUTABLE}}"
        "${{DAZE_TESTS_DIR}}/daze_tests.py"
        fetch
        "{cmake_quote(fixture)}"
)

set_tests_properties(
    fixture.{cmake_quote(fixture)}
    PROPERTIES
        FIXTURES_SETUP "{cmake_fixture}"
        LABELS "compat;fixture"
        RUN_SERIAL TRUE
        TIMEOUT 120
)
""".strip())

    for case_id, backend in pairs:
        case = cases[case_id]
        case_id = case["id"]
        fixture = case["fixture"]
        cmake_fixture = fixture_cmake_name(fixture)

        base_labels = ["compat", "integration", "external", *case.get("labels", [])]
        if args.group:
            base_labels.append("required")

        for backend in (backend,):
            labels = ";".join([*base_labels, backend])
            test_name = f"compat.{case_id}.{backend}"
            timeout = case_timeout(case) * len(case_commands(case)) * (2 if args.group else 1) + 30
            required_flag = "--required" if args.group else ""
            skip_property = "" if args.group else "SKIP_RETURN_CODE 77"

            print()
            print(f"""
add_test(
    NAME {cmake_quote(test_name)}
    COMMAND
        "${{Python3_EXECUTABLE}}"
        "${{DAZE_TESTS_DIR}}/daze_tests.py"
        regress
        --case "{cmake_quote(case_id)}"
        --backend "{backend}"
        --daze "$<TARGET_FILE:daze>"
        {required_flag}
        {evidence_flag}
)

set_tests_properties(
    {cmake_quote(test_name)}
    PROPERTIES
        FIXTURES_REQUIRED "{cmake_fixture}"
        LABELS "{cmake_quote(labels)}"
        {skip_property}
        TIMEOUT {int(timeout)}
)
""".strip())

    if args.hermetic_fixtures:
        overrides = ["DAZE_FIXTURE_SOURCES", *[
            "DAZE_FIXTURE_" + name.upper().replace("-", "_") for name in catalogue
        ]]
        modifications = ";".join(f"{name}=unset:" for name in overrides)
        for test in tests:
            print(f'set_property(TEST "{cmake_quote(test)}" APPEND PROPERTY '
                  f'ENVIRONMENT_MODIFICATION "{cmake_quote(modifications)}")')

    return 0


def build_parser():
    parser = argparse.ArgumentParser()

    sub = parser.add_subparsers(
        dest="command",
        required=True,
    )

    p = sub.add_parser("fetch")
    p.add_argument("fixture")
    p.set_defaults(func=command_fetch)

    p = sub.add_parser("package")
    p.add_argument("--sources", required=True, help="YAML mapping of fixture IDs to local directories")
    p.add_argument("--output", required=True)
    p.add_argument("--base-url", default="", help="Release download directory; may be filled after publication")
    p.set_defaults(func=command_package)

    p = sub.add_parser("release-catalogue")
    p.add_argument("--base-url", required=True, help="Published release download directory")
    p.add_argument("--assets", required=True, help="Directory containing the already prepared ZIPs")
    p.add_argument("--output", required=True, help="Catalogue destination; existing checksums stay pinned")
    p.set_defaults(func=command_release_catalogue)

    p = sub.add_parser("bless")
    p.add_argument("--case", required=True)
    p.add_argument(
        "--backend",
        choices=("unicorn", "kvm"),
        required=True,
    )
    p.add_argument("--daze", default=str(ROOT / "daze"))
    p.add_argument(
        "--force", action="store_true",
        help="bless even for known_limit backends",
    )
    p.set_defaults(func=command_bless)

    p = sub.add_parser("oracle")
    p.add_argument("--case", required=True)
    p.add_argument("--dosemu2", default="dosemu")
    p.add_argument("--bless", action="store_true")
    p.set_defaults(func=command_oracle)

    p = sub.add_parser("regress")
    p.add_argument("--case", required=True)
    p.add_argument(
        "--backend",
        choices=("unicorn", "kvm", "auto", "omitted"),
        required=True,
    )
    p.add_argument("--daze", default=str(ROOT / "daze"))
    p.add_argument("--required", action="store_true", help="Reject skips; verify diagnostic completion and selection in a fresh repeat")
    p.add_argument("--evidence-dir")
    p.set_defaults(func=command_regress)

    p = sub.add_parser("bench")
    p.add_argument("--case", required=True)
    p.add_argument("--daze", default=str(ROOT / "daze"))
    p.add_argument("--dosemu2", default="dosemu")
    p.add_argument(
        "--kvikdos",
        default=None,
        help="KvikDOS executable (default: sibling checkout or PATH)",
    )
    p.add_argument("--iterations", type=int)
    p.add_argument(
        "--only", choices=("dosemu2", "kvikdos", "unicorn", "kvm"),
        default=None,
        help="benchmark a single target (default: all available targets)",
    )
    p.add_argument("--output")
    p.set_defaults(func=command_bench)

    p = sub.add_parser("matrix")
    p.add_argument("--daze", default=str(ROOT / "daze"))
    p.add_argument("--backend", choices=("unicorn", "kvm", "auto", "omitted"), action="append")
    p.add_argument("--group", action="append", help="Named required group; rejects skips and omissions")
    p.add_argument("--evidence-dir")
    p.add_argument(
        "-j", "--jobs", type=int, default=None,
        help="parallel workers (default: cpu count)",
    )
    p.add_argument(
        "--filter", default=None,
        help="only run pairs whose 'case.backend' contains this",
    )
    p.set_defaults(func=command_matrix)

    p = sub.add_parser("emit-ctest")
    p.add_argument("--backend", choices=("unicorn", "kvm", "auto", "omitted"), action="append")
    p.add_argument("--group", action="append")
    p.add_argument("--manifest", help="Write the emitted selection and corpus metadata as JSON")
    p.add_argument("--evidence-dir", help="Base directory for direct CTest regression evidence")
    p.add_argument("--hermetic-fixtures", action="store_true", help="Unset fixture-source overrides in emitted tests")
    p.set_defaults(func=command_emit_ctest)

    return parser


def main():
    args = build_parser().parse_args()

    try:
        return args.func(args)
    except Exception as e:
        print(f"error: {e}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
