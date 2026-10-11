# daze-tests

Integration tests for [Daze](../daze), exercising real DOS compilers,
assemblers, and toolchain workflows against checked-in golden results.
This repository contains the test runner, cases, sources, and goldens;
DOS tool binaries are fetched from the fixture catalogue or supplied locally.
It also supports benchmarks against other DOS runners.

## Setup

```sh
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt
```

Build Daze separately, then point the runner at the binary you want to test.
The examples below run from this repository with a sibling Daze checkout:

```sh
DAZE="$(realpath ../daze/build/debug/daze)"
```

Fixtures are downloaded on demand from the release URLs in
[fixtures.yaml](fixtures.yaml). Archives and extracted contents are checked
against pinned hashes and cached under `~/.cache/daze-tests`. Set
`DAZE_TEST_CACHE` to use another cache directory. KVM tests require usable
`/dev/kvm` access; the full required set also needs a Daze build with Unicorn.

## Run integration tests

Run the required integration set:

```sh
.venv/bin/python daze_tests.py matrix --group required --daze "$DAZE" -j 1 \
  --evidence-dir evidence/required
```

[required.yaml](required.yaml) selects representative toolchain functionality:
19 cases on each explicit backend, plus automatic and omitted-backend checks
(40 pairs total). Required tests fail on missing fixtures or goldens, unusable
KVM, known limits, timeouts, and skips.

Each required pair runs from two fresh mounts: a golden comparison, then a
`--debug --metrics` run checking DOS completion and backend selection.
Each matrix or single regression creates a fresh `run-*` directory under
`--evidence-dir` (default: `evidence/`) containing streams, statuses, artifact
hashes, and failed workspaces. `latest` points to the most recently started
invocation, including one that fails during preflight. Earlier runs are
preserved. Each pair has a `result.json`; a matrix invocation also has
`selection.json` and `matrix.json`, recording the selection, results, binary
identity, corpus hash, and fixture digests. The matrix summary records a
failed preflight explicitly; a `running` state indicates an unfinished run.

For a single regression or the full corpus:

```sh
.venv/bin/python daze_tests.py regress \
  --case bcc-2.0-small --backend kvm --daze "$DAZE"
.venv/bin/python daze_tests.py matrix --daze "$DAZE" -j 4
```

The full corpus runs Unicorn and KVM pairs and permits documented skips;
see [KNOWN-LIMITS.md](KNOWN-LIMITS.md). Add `--required` to a single regression
to enable the strict checks. Use repeated `--backend` options on `matrix` to
select a backend subset, or `--filter TEXT` to match `case.backend` names.
Named groups default to serial execution.

For CMake integration, `emit-ctest --group required` emits fixture setup and
regression test definitions using `Python3_EXECUTABLE`, `DAZE_TESTS_DIR`, and
the `daze` target. Fixture setup runs serially; required tests reject skips.
Add `--manifest PATH` to write the same selection as JSON and `--evidence-dir
PATH` to set the base directory for direct CTest evidence. Daze's integration
uses `--hermetic-fixtures` to emit properties that unset fixture overrides;
standalone emission preserves local overrides by default. The JSON manifest
has `schema_version: 1`, selected pairs and test names, selected fixture
metadata, and the corpus digest.

Daze's acceptance command sets `DAZE_TEST_INVOCATION_DIR` to an existing fresh
directory so all CTest regression evidence belongs to the acceptance run.
Without that variable, regressions create their own invocation directories.

## Local fixture sources

To use existing tool installations, set `DAZE_FIXTURE_SOURCES` to a YAML file
mapping fixture IDs to directories:

```yaml
aspsx-1.05: /path/to/aspsx/1.05
bcc-3.1: /path/to/bcc/3.1
```

Only declared files are copied, and their contents must match the catalogue.
An individual `DAZE_FIXTURE_<ID>` environment variable also overrides a source
(uppercase ID with hyphens replaced by underscores, for example
`DAZE_FIXTURE_BCC_3.1`). There is no implicit sibling checkout fallback for
fixtures.

## Benchmarks and goldens

```sh
.venv/bin/python daze_tests.py bench \
  --case bcc-2.0-small --iterations 20 --daze "$DAZE" \
  --output results/bcc-2.0-small.json
```

Benchmarks include DOSEMU2, Daze/Unicorn, and KVM when available. KvikDOS is
included for cases marked `benchmark.kvikdos: true`; use `--kvikdos PATH` to
select its binary. Use `--only dosemu2|kvikdos|unicorn|kvm` to select one target.
Results are JSON, printed to stdout unless `--output` is supplied.

Use `oracle --case CASE` to inspect a DOSEMU2 result. Use
`bless --case CASE --backend BACKEND --daze "$DAZE"` to regenerate a Daze
golden, then review the resulting diff before accepting it.

Both blessing commands require every declared output to exist before writing
any golden files. Regression verification rejects manifests that omit declared
outputs or disagree with case timestamp masks. Cases may use `ignore_stdout:
true` with explicit stdout assertions on every step, and `ignore_stderr: true`,
to keep stream comparison policies explicit during regeneration.

The DOSEMU2 adapter supports simple command sequences. It rejects cases using
mounts, guest environment, step copies/removals, or step assertions before
provisioning or execution. Use Daze for these richer workflows.

## Runner development and fixture releases

Runner tests need only Python and the dependencies installed above:

```sh
.venv/bin/python -m unittest discover -s tests -v
```

GitHub Actions runs these synthetic runner tests on pushes and pull requests;
they require no historical DOS tools or KVM access.

To prepare fixture release assets from local installations:

```sh
.venv/bin/python daze_tests.py package --sources /path/to/local-sources.yaml \
  --output release-assets
```

This creates deterministic ZIPs containing only declared files, `SHA256SUMS`,
and a generated catalogue. Publish the ZIPs and checksum file as release
attachments, then update the catalogue from the same archives:

```sh
.venv/bin/python daze_tests.py release-catalogue \
  --base-url https://github.com/OWNER/daze-tests/releases/download/TAG \
  --assets release-assets --output fixtures.yaml
```

The command verifies archive and content checksums while preserving the pinned
hashes. Validate the required set from a fresh checkout and empty cache with
fixture-source overrides unset before accepting a catalogue update.
DOS tool binaries belong in release assets, not Git history.

See [migration/PHASE4.md](migration/PHASE4.md) for the migration coverage and
historical validation record.
