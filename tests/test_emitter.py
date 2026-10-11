import argparse
import contextlib
import io
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

from test_runner import runner


class EmissionTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)

    def emit(self, backends=None, hermetic=False):
        args = runner.build_parser().parse_args([
            "emit-ctest", "--group", "required", "--manifest", str(self.root / "selection.json"),
            "--evidence-dir", str(self.root / 'evidence with "quotes"'),
            *(["--hermetic-fixtures"] if hermetic else []),
            *[arg for backend in backends or [] for arg in ("--backend", backend)],
        ])
        output = io.StringIO()
        with contextlib.redirect_stdout(output):
            self.assertEqual(runner.command_emit_ctest(args), 0)
        return output.getvalue(), json.loads((self.root / "selection.json").read_text())

    def test_manifest_matches_emitted_required_tests_for_each_selection(self):
        for backends, count in ((None, 40), (["unicorn"], 19), (["kvm", "auto", "omitted"], 21)):
            with self.subTest(backends=backends):
                cmake, manifest = self.emit(backends)
                self.assertEqual(manifest["schema_version"], 1)
                self.assertEqual(len(manifest["pairs"]), count)
                for test in manifest["tests"]:
                    self.assertIn(f"NAME {test}\n", cmake)
                self.assertEqual(cmake.count("add_test("), len(manifest["tests"]))
                cases = runner.load_cases()
                fixtures = {cases[name]["fixture"] for name, _ in manifest["pairs"]}
                self.assertEqual(fixtures, set(manifest["fixtures"]))
                self.assertEqual(manifest["corpus_sha256"], runner.corpus_fingerprint())
                self.assertEqual(cmake.count("--evidence-dir"), count)
                self.assertIn('evidence with \\"quotes\\"', cmake)

    def test_hermetic_properties_cover_every_test_and_catalogue_override(self):
        cmake, manifest = self.emit(["unicorn"], hermetic=True)
        for test in manifest["tests"]:
            self.assertIn(f'set_property(TEST "{test}" APPEND PROPERTY ENVIRONMENT_MODIFICATION', cmake)
        self.assertIn("DAZE_FIXTURE_SOURCES=unset:", cmake)
        for fixture in runner.load_fixtures():
            name = "DAZE_FIXTURE_" + fixture.upper().replace("-", "_")
            self.assertIn(name + "=unset:", cmake)

    def test_standalone_emission_preserves_local_overrides(self):
        cmake, _ = self.emit(["unicorn"])
        self.assertNotIn("ENVIRONMENT_MODIFICATION", cmake)

    def test_acceptance_environment_reuses_only_the_given_fresh_invocation(self):
        invocation = self.root / "acceptance-run"
        invocation.mkdir()
        case = {"id": "synthetic"}
        args = argparse.Namespace(case="synthetic", backend="unicorn", daze="fake",
                                  required=True, evidence_dir=str(self.root / "unused"))
        with patch.dict(runner.os.environ, {"DAZE_TEST_INVOCATION_DIR": str(invocation)}), \
             patch.object(runner, "get_case", return_value=case), \
             patch.object(runner, "_regress_one", return_value=(0, "pass")):
            self.assertEqual(runner.command_regress(args), 0)
            self.assertTrue((invocation / "synthetic.unicorn/result.json").is_file())
            self.assertFalse((self.root / "unused").exists())
            with self.assertRaisesRegex(RuntimeError, "pair evidence already exists"):
                runner.command_regress(args)

    def test_missing_acceptance_directory_is_rejected(self):
        args = argparse.Namespace(case="unused")
        with patch.dict(runner.os.environ, {"DAZE_TEST_INVOCATION_DIR": str(self.root / "missing")}), \
             patch.object(runner, "get_case", return_value={"id": "unused"}):
            with self.assertRaisesRegex(RuntimeError, "directory does not exist"):
                runner.command_regress(args)


if __name__ == "__main__":
    unittest.main()
