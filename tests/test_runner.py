import argparse
import importlib.util
import io
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch
import zipfile

import yaml

spec = importlib.util.spec_from_file_location("runner", Path(__file__).resolve().parents[1] / "daze_tests.py")
runner = importlib.util.module_from_spec(spec)
spec.loader.exec_module(runner)


class ProvisioningTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        self.source = self.root / "source"
        self.source.mkdir()
        (self.source / "TOOL.EXE").write_bytes(b"MZ accepted fixture")
        (self.source / "debris.obj").write_bytes(b"unrelated")
        self.archive = self.root / "asset.zip"
        with zipfile.ZipFile(self.archive, "w") as zf:
            zf.write(self.source / "TOOL.EXE", "TOOL.EXE")
        self.config = {"url": self.archive.as_uri(), "sha256": runner.sha256_file(self.archive),
                       "format": "zip", "provides": ["TOOL.EXE"]}
        self.config["content_sha256"] = runner.fixture_fingerprint("tool", self.config, self.source)
        self.addCleanup(patch.stopall)
        patch.object(runner, "CACHE_DIR", self.root / "cache").start()
        patch.object(runner, "load_fixtures", return_value={"tool": self.config}).start()
        patch.dict(runner.os.environ, {}, clear=True).start()

    def test_cold_download_and_warm_cache(self):
        cache = runner.fetch_fixture("tool")
        self.assertEqual((cache / "TOOL.EXE").read_bytes(), b"MZ accepted fixture")
        self.archive.unlink()
        self.assertEqual(runner.fetch_fixture("tool"), cache)

    def test_corrupt_cache_refetches(self):
        cache = runner.fetch_fixture("tool")
        (cache / "TOOL.EXE").write_bytes(b"corrupt")
        runner.fetch_fixture("tool")
        self.assertEqual((cache / "TOOL.EXE").read_bytes(), b"MZ accepted fixture")

    def test_incomplete_cache_refetches(self):
        cache = runner.fetch_fixture("tool")
        (cache / "TOOL.EXE").unlink()
        runner.fetch_fixture("tool")
        self.assertTrue((cache / "TOOL.EXE").is_file())

    def test_changed_digest_invalidates_cache(self):
        runner.fetch_fixture("tool")
        self.config["sha256"] = "0" * 64
        with self.assertRaisesRegex(RuntimeError, "SHA256 mismatch"):
            runner.fetch_fixture("tool")
        self.assertFalse(runner.fixture_cache_dir("tool").exists())

    def test_checksum_failure_never_installs(self):
        self.config["sha256"] = "0" * 64
        with self.assertRaisesRegex(RuntimeError, "SHA256 mismatch"):
            runner.fetch_fixture("tool")
        self.assertFalse(runner.fixture_cache_dir("tool").exists())

    def test_content_digest_failure(self):
        self.config["content_sha256"] = "0" * 64
        with self.assertRaisesRegex(RuntimeError, "extracted-content mismatch"):
            runner.fetch_fixture("tool")

    def test_local_override_copies_declared_files_only(self):
        runner.os.environ["DAZE_FIXTURE_TOOL"] = str(self.source)
        cache = runner.fetch_fixture("tool")
        self.assertFalse((cache / "debris.obj").exists())

    def test_unpublished_has_no_implicit_sibling_fallback(self):
        self.config["url"] = ""
        self.config["local_dir"] = str(self.source)
        with self.assertRaisesRegex(RuntimeError, "unpublished"):
            runner.fetch_fixture("tool")

    def test_package_is_repeatable_and_declared_only(self):
        sources = self.root / "sources.yaml"
        sources.write_text(yaml.safe_dump({"tool": str(self.source)}))
        outputs = [self.root / "one", self.root / "two"]
        for output in outputs:
            runner.command_package(argparse.Namespace(sources=str(sources), output=str(output), base_url=""))
        self.assertEqual((outputs[0] / "tool.zip").read_bytes(), (outputs[1] / "tool.zip").read_bytes())
        with zipfile.ZipFile(outputs[0] / "tool.zip") as zf:
            self.assertEqual(zf.namelist(), ["TOOL.EXE"])

    def test_release_catalogue_preserves_pinned_digests(self):
        assets = self.root / "assets"
        assets.mkdir()
        (assets / "tool.zip").write_bytes(self.archive.read_bytes())
        output = self.root / "release.yaml"
        original_digest = self.config["sha256"]
        original_content = self.config["content_sha256"]
        runner.command_release_catalogue(argparse.Namespace(
            base_url="https://example.invalid/releases/fixtures/", assets=str(assets), output=str(output)))
        config = yaml.safe_load(output.read_text())["fixtures"]["tool"]
        self.assertEqual(config["url"], "https://example.invalid/releases/fixtures/tool.zip")
        self.assertEqual(config["sha256"], original_digest)
        self.assertEqual(config["content_sha256"], original_content)

    def test_release_catalogue_rejects_wrong_archive_without_writing(self):
        assets = self.root / "assets"
        assets.mkdir()
        (assets / "tool.zip").write_bytes(b"different release")
        output = self.root / "release.yaml"
        with self.assertRaisesRegex(RuntimeError, "archive differs"):
            runner.command_release_catalogue(argparse.Namespace(
                base_url="https://example.invalid/releases/fixtures", assets=str(assets), output=str(output)))
        self.assertFalse(output.exists())


class RequiredTests(unittest.TestCase):
    def test_known_limit_is_failure(self):
        code, _ = runner.regress_one({"id": "limit", "known_limit": ["unicorn"]}, "unicorn", "unused", required=True, err=io.StringIO())
        self.assertEqual(code, 1)

    def test_unusable_kvm_is_failure(self):
        with patch.object(runner, "kvm_available", return_value=False):
            for backend in ("kvm", "auto", "omitted"):
                code, _ = runner.regress_one({"id": "test"}, backend, "unused", required=True, err=io.StringIO())
                self.assertEqual(code, 1)

    def test_per_step_status_and_absent_output(self):
        result = argparse.Namespace(returncode=3, stdout=b"guest error", stderr=b"")
        step = {"program": "ASM", "expect": {"exit_code": 3, "stdout_contains": ["guest error"], "files": [{"path": "BAD.OBJ", "absent": True}]}}
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            runner.step_checks(step, root, result)
            (root / "BAD.OBJ").write_bytes(b"stale")
            with self.assertRaisesRegex(RuntimeError, "unexpected output"):
                runner.step_checks(step, root, result)
            result.returncode = 0
            with self.assertRaisesRegex(RuntimeError, "expected status 3"):
                runner.step_checks(step, root, result)

    def test_empty_selection_rejected(self):
        with self.assertRaisesRegex(RuntimeError, "no case/backend pairs"):
            runner.selected_pairs(argparse.Namespace(group=None, backend=["auto"], filter=None), {"case": {}})


if __name__ == "__main__":
    unittest.main()
