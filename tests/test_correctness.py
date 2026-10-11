import argparse
import contextlib
import io
import json
from pathlib import Path
import subprocess
import tempfile
import unittest
from unittest.mock import patch

import yaml

from test_runner import runner


class HarnessTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        self.case = {"id": "synthetic", "fixture": "tool",
                     "command": {"program": "TOOL.EXE"},
                     "outputs": [{"path": "RESULT.OBJ"}]}
        self.result = subprocess.CompletedProcess([], 0, stdout=b"output", stderr=b"")
        self.addCleanup(patch.stopall)
        patch.object(runner, "GOLDEN_DIR", self.root / "golden").start()
        patch.object(runner, "get_case", return_value=self.case).start()
        patch.object(runner, "stage_case", side_effect=self.stage).start()
        patch.object(runner, "kvm_available", return_value=True).start()
        self.workspaces = []
        self.make_output = True

    def stage(self, case):
        tmp = tempfile.TemporaryDirectory(dir=self.root)
        work = Path(tmp.name)
        if self.make_output:
            (work / "RESULT.OBJ").write_bytes(b"object")
        self.workspaces.append(work)
        return tmp, work

    def seed_golden(self, files=None):
        golden = runner.golden_path(self.case)
        golden.mkdir(parents=True, exist_ok=True)
        (golden / "stdout").write_bytes(b"output")
        (golden / "stderr").write_bytes(b"")
        manifest = {"exit_code": 0, "stdout": "stdout", "stderr": "stderr",
                    "files": files if files is not None else [{
                        "path": "RESULT.OBJ", "sha256": runner.hashlib.sha256(b"object").hexdigest()}]}
        (golden / "manifest.yaml").write_text(yaml.safe_dump(manifest))
        return golden

    def bless(self, oracle=False):
        args = argparse.Namespace(case=self.case["id"], backend="unicorn", force=False,
                                  daze="fake", dosemu2="fake", bless=True)
        with patch.object(runner, "run_daze", return_value=(self.result, 0)), \
             patch.object(runner, "run_dosemu2", return_value=(self.result, 0)), \
             contextlib.redirect_stdout(io.StringIO()):
            return runner.command_oracle(args) if oracle else runner.command_bless(args)

    def regress(self, required=False):
        return runner.regress_one(self.case, "unicorn", "fake", required=required,
                                  evidence_dir=self.root / "evidence", out=io.StringIO(), err=io.StringIO())

    def test_missing_output_never_modifies_existing_golden(self):
        golden = self.seed_golden()
        before = {p.name: p.read_bytes() for p in golden.iterdir()}
        self.make_output = False
        for oracle in (False, True):
            with self.subTest(oracle=oracle), self.assertRaisesRegex(RuntimeError, "missing declared output"):
                self.bless(oracle)
            self.assertEqual(before, {p.name: p.read_bytes() for p in golden.iterdir()})

    def test_missing_output_never_creates_golden(self):
        self.make_output = False
        for oracle in (False, True):
            with self.subTest(oracle=oracle), self.assertRaises(RuntimeError):
                self.bless(oracle)
            self.assertFalse(runner.golden_path(self.case).exists())

    def test_verification_rejects_omitted_declared_output(self):
        self.seed_golden(files=[])
        err = io.StringIO()
        self.assertFalse(runner.verify_result(self.case, self.root, self.result, err))
        self.assertIn("golden omits declared outputs", err.getvalue())

    def test_verification_rejects_duplicate_paths_and_mask_drift(self):
        entry = {"path": "RESULT.OBJ", "sha256": "unused"}
        for files, message in (([entry, entry], "duplicate"),
                               ([dict(entry, mask=[[4, 8]])], "mask differs")):
            with self.subTest(message=message):
                self.seed_golden(files)
                err = io.StringIO()
                self.assertFalse(runner.verify_result(self.case, self.root, self.result, err))
                self.assertIn(message, err.getvalue())

    def test_both_bless_commands_write_verifiable_masked_goldens(self):
        self.case["outputs"][0]["mask"] = [[0, 2]]
        self.case["ignore_stderr"] = True
        for oracle in (False, True):
            with self.subTest(oracle=oracle):
                self.assertEqual(self.bless(oracle), 0)
                tmp, work = self.stage(self.case)
                try:
                    (work / "RESULT.OBJ").write_bytes(b"XXject")
                    self.assertTrue(runner.verify_result(self.case, work, self.result, io.StringIO()))
                finally:
                    tmp.cleanup()

    def test_assertion_based_stdout_policy_survives_blessing(self):
        self.case["ignore_stdout"] = True
        self.case["command"]["expect"] = {"stdout_contains": ["output"]}
        self.assertEqual(self.bless(), 0)
        manifest = runner.load_yaml(runner.golden_path(self.case) / "manifest.yaml")
        self.assertIsNone(manifest["stdout"])

    def test_null_stdout_without_assertions_cannot_be_blessed(self):
        self.case["ignore_stdout"] = True
        with self.assertRaisesRegex(RuntimeError, "explicit stdout assertions"):
            self.bless()
        self.assertFalse(runner.golden_path(self.case).exists())

    def test_oracle_rejects_features_before_staging_or_execution(self):
        for feature in ("mounts", "env", "copy", "remove", "expect"):
            with self.subTest(feature=feature):
                case = {"id": "unsupported", "command": {"program": "TOOL.EXE"}}
                if feature in ("mounts", "env"):
                    case[feature] = {"test": "value"}
                else:
                    case["command"][feature] = {"test": "value"}
                with patch.object(runner, "get_case", return_value=case), \
                     patch.object(runner, "stage_case") as stage, \
                     patch.object(runner.subprocess, "run") as run:
                    with self.assertRaisesRegex(RuntimeError, "oracle does not support"):
                        runner.command_oracle(argparse.Namespace(case="unsupported"))
                    with self.assertRaisesRegex(RuntimeError, "oracle does not support"):
                        runner.run_dosemu2(case, self.root, "fake")
                    stage.assert_not_called()
                    run.assert_not_called()

    def test_failure_then_success_has_separate_evidence(self):
        with patch.object(runner, "run_daze", return_value=(self.result, 0)), \
             patch.object(runner, "verify_result", side_effect=[False, True]):
            self.assertEqual(self.regress()[0], 1)
            first = (self.root / "evidence/latest").resolve()
            self.assertEqual(self.regress()[0], 0)
            latest = (self.root / "evidence/latest").resolve()
        self.assertNotEqual(first, latest)
        self.assertTrue((first / "synthetic.unicorn/failed-work").is_dir())
        self.assertFalse((latest / "synthetic.unicorn/failed-work").exists())
        summary = json.loads((latest / "synthetic.unicorn/result.json").read_text())
        self.assertEqual(summary["status"], 0)

    def test_repeated_failures_never_merge_workspaces(self):
        with patch.object(runner, "run_daze", return_value=(self.result, 0)), \
             patch.object(runner, "verify_result", return_value=False):
            self.regress()
            first = (self.root / "evidence/latest").resolve()
            (first / "synthetic.unicorn/failed-work/stale").write_bytes(b"old")
            self.regress()
            latest = (self.root / "evidence/latest").resolve()
        self.assertFalse((latest / "synthetic.unicorn/failed-work/stale").exists())

    def test_pair_provisioning_failure_records_current_failure(self):
        with patch.object(runner, "stage_case", side_effect=RuntimeError("fixture unavailable")):
            self.assertEqual(self.regress()[0], 1)
        latest = (self.root / "evidence/latest").resolve()
        summary = json.loads((latest / "synthetic.unicorn/result.json").read_text())
        self.assertEqual(summary["status"], 1)
        self.assertIn("fixture unavailable", summary["detail"])

    def test_matrix_preflight_failure_cannot_reuse_success_summary(self):
        args = argparse.Namespace(evidence_dir=str(self.root / "evidence"), group=["required"],
                                  backend=["unicorn"], jobs=1, daze="fake", filter=None)
        old = runner.new_invocation(args.evidence_dir)
        (old / "matrix.json").write_text('{"state":"finished","results":[{"status":0}]}')
        with patch.object(runner, "load_cases", return_value={self.case["id"]: self.case}), \
             patch.object(runner, "selected_pairs", return_value=[(self.case["id"], "unicorn")]), \
             patch.object(runner, "fetch_fixture", side_effect=RuntimeError("preflight failed")), \
             contextlib.redirect_stderr(io.StringIO()):
            with self.assertRaisesRegex(RuntimeError, "preflight failed"):
                runner.command_matrix(args)
        latest = (self.root / "evidence/latest").resolve()
        self.assertNotEqual(old, latest)
        summary = json.loads((latest / "matrix.json").read_text())
        self.assertEqual(summary["state"], "failed")
        self.assertNotIn("results", summary)
        self.assertTrue((latest / "selection.json").is_file())

    def test_required_flow_uses_fresh_comparison_and_diagnostic_workspaces(self):
        self.seed_golden()
        commands = []

        def execute(command, **kwargs):
            commands.append((command, kwargs["cwd"]))
            stderr = (b"command=0 finished exit=0\nmetrics: backend=unicorn selection=unicorn\n"
                      if "--debug" in command else b"")
            return subprocess.CompletedProcess(command, 0, stdout=b"output", stderr=stderr)

        with patch.object(runner.subprocess, "run", side_effect=execute):
            self.assertEqual(self.regress(required=True)[0], 0)
        self.assertEqual(len(commands), 2)
        self.assertNotEqual(commands[0][1], commands[1][1])
        self.assertNotIn("--debug", commands[0][0])
        self.assertIn("--debug", commands[1][0])
        latest = (self.root / "evidence/latest").resolve() / "synthetic.unicorn"
        for phase in ("comparison", "diagnostic"):
            self.assertTrue((latest / phase / "step-0.json").exists())

    def test_matrix_keeps_pairs_and_summary_in_one_invocation(self):
        self.seed_golden()
        binary = self.root / "fake-daze"
        binary.write_bytes(b"binary")
        args = argparse.Namespace(evidence_dir=str(self.root / "evidence"), group=["required"],
                                  backend=["unicorn"], jobs=1, daze=str(binary), filter=None)

        def execute(command, **kwargs):
            if "--version" in command:
                return argparse.Namespace(stdout="synthetic version\n")
            stderr = (b"command=0 finished exit=0\nmetrics: backend=unicorn selection=unicorn\n"
                      if "--debug" in command else b"")
            return subprocess.CompletedProcess(command, 0, stdout=b"output", stderr=stderr)

        with patch.object(runner, "load_cases", return_value={self.case["id"]: self.case}), \
             patch.object(runner, "selected_pairs", return_value=[(self.case["id"], "unicorn")]), \
             patch.object(runner, "fetch_fixture"), \
             patch.object(runner, "load_fixtures", return_value={"tool": {"sha256": "pinned"}}), \
             patch.object(runner, "corpus_fingerprint", return_value="corpus hash"), \
             patch.object(runner.subprocess, "run", side_effect=execute), \
             contextlib.redirect_stdout(io.StringIO()), contextlib.redirect_stderr(io.StringIO()):
            self.assertEqual(runner.command_matrix(args), 0)
        base = self.root / "evidence"
        self.assertEqual(len(list(base.glob("run-*"))), 1)
        latest = (base / "latest").resolve()
        summary = json.loads((latest / "matrix.json").read_text())
        self.assertEqual(summary["state"], "finished")
        self.assertEqual(summary["results"][0]["status"], 0)
        self.assertEqual(summary["daze_sha256"], runner.sha256_file(binary))
        self.assertTrue((latest / "synthetic.unicorn/result.json").is_file())

    def test_required_flow_rejects_missing_completion_wrong_backend_and_timeout(self):
        self.seed_golden()
        for diagnostic in (b"metrics: backend=unicorn selection=unicorn\n",
                           b"command=0 finished exit=0\nmetrics: backend=kvm selection=kvm-completed\n",
                           subprocess.TimeoutExpired("fake", 60)):
            with self.subTest(diagnostic=diagnostic):
                second = (diagnostic if isinstance(diagnostic, Exception) else
                          subprocess.CompletedProcess([], 0, stdout=b"output", stderr=diagnostic))
                with patch.object(runner.subprocess, "run", side_effect=[self.result, second]):
                    code, _ = self.regress(required=True)
                self.assertEqual(code, 124 if isinstance(diagnostic, Exception) else 1)
                latest = (self.root / "evidence/latest").resolve() / "synthetic.unicorn"
                self.assertTrue((latest / "failed-diagnostic").is_dir())

    def test_comparison_failure_does_not_start_diagnostic_run(self):
        self.seed_golden()
        bad = subprocess.CompletedProcess([], 0, stdout=b"wrong", stderr=b"")
        with patch.object(runner.subprocess, "run", return_value=bad) as run:
            self.assertEqual(self.regress(required=True)[0], 1)
            self.assertEqual(run.call_count, 1)

    def test_all_checked_in_goldens_have_valid_contracts(self):
        for case in runner.load_cases().values():
            with self.subTest(case=case["id"]):
                manifest = runner.load_yaml(runner.ROOT / "golden" / case["id"] / "manifest.yaml")
                runner.validate_golden_contract(case, manifest)


if __name__ == "__main__":
    unittest.main()
