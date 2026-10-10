# Legacy coverage migration inventory

Migration acceptance is representative functional coverage, as clarified by
the user. Reuse existing cases and add only missing behaviors. Identical
inputs, commands, goldens and one-to-one subcase mappings are unnecessary.
The manifest's proposed targets and assertion gaps are historical references,
not mandatory tasks. Its `migration_policy` takes precedence over those fields.

`legacy-parity.yaml` maps Daze's Phase 1 fixture-backed tests to proposed
external cases and retained local contracts. It is an inventory and work list,
not a claim that replacements are implemented or equivalent coverage has
passed.

The manifest records:

- Every discovered legacy registration, its source fingerprint, required
  backend, exact CLI command, inputs, assertion profile and proposed owner.
- Expected legacy artifact sizes/hashes and their precise normalization,
  separately from observed baseline output.
- Existing candidate cases, remaining assertion/runner gaps, and proposed
  cases for missing workflows.
- Exact input bytes, local binary inventory, and current corpus fingerprints.
  Daze binary hashes identify evidence; no application binaries are embedded.

The original audit suggested fourteen existing and fourteen new cases; that
count is not a target. Phase 2 removed the three redundant internal KVM
fixture tests, strengthened synthetic termination assertions and added a
fixture-free CLI smoke. Real-tool admission remains in the integration suite.
Current results are in `../daze/docs/TEST-FIXTURE-MIGRATION-PHASE2.md` and the
manifest's `phase2_result`; the original inventory remains historical evidence.
The initial dual-backend baseline passed all 29 selected registrations with
zero skips; its 91 recorded CLI invocations include five retained CLI checks.
The supplemental KVM-only selection check also passed, capturing three more
CLI invocations including rejection of uncompiled Unicorn.

Source and runtime evidence currently lives in the sibling Daze checkout at
`build/fixture-migration-phase1/evidence/`. The Daze report is
`docs/TEST-FIXTURE-MIGRATION-PHASE1.md`. Evidence paths in the manifest are
relative to that capture directory and are not portable committed artifacts.
Preserve that directory until the migrated cases have been validated.

`checks` records the old assertions. `baseline` and candidate comparisons
record observations only. Use them to understand behavior and investigate
regressions, rather than requiring every old assertion in a replacement.
Backend admission, pipelines and failure behavior still need meaningful
coverage. Pending targets are suggestions, not a required case list.

Choose the required regression set from the functional areas covered by
existing cases and any additions needed to close gaps.

Phase 4 preparation is now validated: [PHASE4.md](PHASE4.md) maps the functional
areas to the representative required set in `../required.yaml`. All 40 pairs
passed with isolated HTTP provisioning and no sibling fixture references.
Public release URLs and their acceptance run remain pending. The older
per-assertion gaps above remain historical inventory, not unfinished porting
requirements.
