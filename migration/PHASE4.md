# Phase 4 preparation and publication handoff

Preparation and published-asset validation are complete. The catalogue now
uses the `init` release assets. Commit and publish the runner/cases/goldens
and catalogue before Daze can pin a usable corpus revision. No historical
fixtures have been removed from Daze yet.

## Required functional coverage

`required.yaml` declares 40 case/backend pairs. Required selection is strict:
19 explicit Unicorn, 19 explicit KVM, and two backend-selection workloads.
The complete corpus remains available independently of this admission set.

| Legacy functional area | Required external coverage |
| --- | --- |
| ASPSX versions and checked objects | Existing tiny cases for all seven versions, both explicit backends |
| CC1PSX compilation and optimization | Existing tiny cases for 2.6.0/2.6.3/2.7.2 plus 2.6.0 `-O2`, both backends |
| BCC real-mode overlays / protected-mode exceptions | Existing BCC 2.0/3.1 tiny compile cases, both backends |
| MSC CL -> C1 -> C2 -> C3 | Existing MSC 5.1 tiny driver case and checked object, both backends |
| Cygnus CPP -> CC1 -> AS, mounts and environment | New split-drive pipeline: tools on D:, inputs/outputs on C:, PATH/TEMP/TMP overrides, checked intermediate/final results |
| Cygnus archive lifecycle | New AS/AR/NM workflow: create, symbol index, list, extract, replace, delete; checked member contents and absent deleted member |
| PsyQ child EXEC / compilation / linking / errors | Existing medium compiler case plus new CCPSX link and compiler-error workflow; checked linked CPE and propagated status 1 with absent error object |
| ASMPSX / PSYLINK / guest errors | New assembly/link/error workflow; checked object and raw binary, status 3 and absent error object |
| KVM admission and automatic selection | Strict KVM for every required workflow; ASPSX 2.34 also checks `auto` and omitted backend against KVM completion/selection |

Pre-start fallback and terminal post-start failure remain focused local Daze
contracts/smokes. The external suite adds real-tool admission evidence.
Inputs and test counts need not match the legacy subcases exactly. No existing
goldens or known-limit masks were loosened to obtain these passes.

The four new workflows preserve assertions from the accepted CMake scripts.
Their reference notes explain hashes from those contracts/saved successful
artifacts. New COFF masks cover only the established timestamp bytes 4–7;
archive headers are not blessed wholesale, because extraction and replacement
checks directly verify the member contents. Every new step asserts stdout and
its expected status, including nonzero guest errors. Existing goldens keep
their original stream/hash comparisons.

## Runner and provisioning changes

- Ordered steps can declare expected status, stream assertions, file
  hash/size/equality/absence checks, and explicit generated-file copy/removal.
  Expected nonzero statuses continue the workflow; unexpected statuses fail.
- Cases may declare mount drives/paths, fixture destination and guest
  environment, without embedding runner command lines.
- Required tests retain ordinary output comparisons and add a separate fresh
  diagnostic repeat. Raw debug stderr is never passed off as oracle stderr.
  Both executions must satisfy stdout/artifact assertions; diagnostic steps
  additionally require DOS status and the expected metrics selection line.
- Evidence is written before assertions/cleanup, including partial timeout
  streams. Failed workspaces are retained. Matrix results compare actual and
  expected pairs and record binary/version, corpus and fixture fingerprints.
- Fixture overrides are explicit, copy declared assets only, and validate
  contents against the catalogue. Default sibling-tree references are gone.
- Cache markers bind the expected archive digest and extracted-file digest.
  Changed assets, incomplete caches and corrupt files invalidate the cache;
  bad downloads never install. Existing older markers refetch automatically.
- Packaging includes AR/NM and PSYLINK, BCC DPMI loader/DLL, MSC child tools,
  Cygnus GO32 and PsyQ configuration. Existing standalone assembler/linker
  cases retain their declared tools. No unused installation debris is packed.

## Validation on 2026-10-09

Using Daze's existing debug binary:

- Required Unicorn matrix: 19 passed, zero skips/failures/timeouts.
- Required KVM/auto/omitted matrix: 21 passed, zero skips/failures/timeouts.
- Independent corpus copy, empty isolated cache, HTTP-served archives and
  no fixture-source overrides: all 40 required pairs passed. The download
  server served only packaged archives from a separate directory, not Daze's
  fixture tree. KVM access allowed actual VM creation.
- Runner unit tests exercise cold/warm provisioning, corrupt/incomplete
  caches, changed archive digests, archive/content checksum failures,
  declared-only local staging, unpublished fixtures without implicit fallback,
  repeatable packaging, unusable KVM, known limits, empty selection, and
  expected guest errors with absent outputs. All 15 tests passed, including
  release-catalogue digest preservation and rejection before writing output.
- Release catalogue generation verified all 16 prepared archive/content
  digests without needing the original installations.
- Generated CTest execution passed all 56 tests (40 required compatibility
  pairs plus 16 serial fixture setups), with no skips. Required registrations
  have no skip allowance.

Results and raw evidence are in Daze's `build/fixture-migration-phase4/`.
The corpus currently has no Git HEAD; matrix reports use a content fingerprint
and record the tested Daze binary hash/version. These are preparation results,
not a claim that public release downloads have been tested.

## Publish, then finish acceptance

1. Push this repository, retaining the catalogue and goldens but excluding
   binaries, caches, evidence and release archives from normal Git history.
2. Create a release and attach the 16 prepared ZIPs plus `SHA256SUMS` from
   Daze's `build/fixture-migration-phase4/assets/` (or reproduce them with
   `package --sources ... --output release-assets`).
3. Fill URLs from the prepared archives, preserving the pinned checksums:

   ```sh
   .venv/bin/python daze_tests.py release-catalogue \
     --base-url <release-download-directory> \
     --assets ../daze/build/fixture-migration-phase4/assets --output fixtures.yaml
   ```

   The command verifies archive and extracted-content digests before writing;
   no original installations or repackaging are needed.
   Commit/publish the catalogue update. Explicit development overrides remain
   optional; CI must leave them unset.
4. From an independent checkout, unset fixture-source overrides, set
   `DAZE_TEST_CACHE` to a new empty directory, and run:

   ```sh
   .venv/bin/python daze_tests.py matrix --group required --daze /path/to/daze \
     -j 1 --evidence-dir evidence/release-validation
   ```

5. Require all 40 pairs to pass, record the published corpus commit and asset
   digests, then proceed to Daze's Phase 5 CI/CTest wiring and harness removal.

## Published-asset validation on 2026-10-10

All 16 archives downloaded from
`https://github.com/mkst/daze-tests/releases/download/init` into an empty
cache and passed the existing archive/content digests. An independent corpus
snapshot ran all 40 required pairs serially with fixture overrides unset:
**40 passed, zero skips/failures/timeouts, exit status 0.** KVM used real
VM execution through elevated device access. The catalogue update changes
only URLs.

Evidence is in Daze's `build/fixture-migration-phase4/public-release/`,
including `acceptance.json`, `matrix.json`, streams, artifacts and `run.log`.
The tested corpus fingerprint is
`f3d9d2ef4b8a0c5d4782fc36aff687430eeccb90477b7d5bd3a4a5a35e48dde9`;
the Daze binary SHA256 is
`62eaff56d28b20aec51b31c76eeaba75f683e98a3b723aef2706b3463b360fca`.

Local HEAD `57aa3943ff3a82611f0bf96a03ecf8a85a08799e` currently contains
only `.gitignore`; corpus files are untracked. These results validate an
independent snapshot, not a published checkout. Commit/push the corpus and
catalogue, then Phase 5 can pin that revision and repeat checkout acceptance.

## Verified reconstruction

After the installation preservation mistake, all 19 affected existing cases
passed their retained goldens on both Unicorn and KVM (38 checks, zero skips
or failures). The BCC reference note was rebuilt from verified evidence.
[RECONSTRUCTION.md](RECONSTRUCTION.md) records what was revalidated and what
original edits remain unrecoverable. Publication can proceed on this verified
functional baseline.
