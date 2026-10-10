# Verified reconstruction after the Phase 4 installation

The installation replaced later dirty contents of 19 existing case YAMLs
and one BCC reference note with earlier copies. No backup of those later
contents is available. This reconstruction establishes a usable corpus from
retained case definitions, staged versions, unchanged inputs/goldens and fresh
regression results; it does not claim byte-for-byte recovery of unknown edits.

Seventeen affected cases now match their staged versions. ASMPSX's small case
and BCC 3.1's large case retain their earlier complete definitions and goldens.
The BCC large reference note was rewritten around its unchanged manifest and
fresh backend results, with the older DOSEMU observation clearly distinguished
from newly verified evidence.

The affected cases were run serially on explicit Unicorn and real KVM, from
fresh temporary mounts, against their existing exit/stdout/stderr/artifact
checks. No golden, output mask or known-limit marker was relaxed to make them
pass. The remaining `KNOWN-LIMITS.md` policy and marker for
`cc1psx-2.7.2-xlarge` were preserved. Required Phase 4 admission coverage
remains the independently validated 40-pair set.

All **38 case/backend pairs passed**, with zero skips, failures or timeouts.
These runs establish regression behavior, not recovery of unknown optional
benchmark settings, labels, comments or documentation wording. Existing
explicit KvikDOS opt-ins remain; no new opt-ins or skip markers were guessed.
If a specific missing behavior becomes apparent, add a focused assertion or
case based on evidence.

The affected-file list and original hashes remain in Daze's
`build/fixture-migration-phase4/preservation-recovery.json`. Fresh results,
raw streams and artifact details are under
`build/fixture-migration-phase4/reconstruction/`. Phase 4 preparation can
proceed to publication on this verified baseline; exact lost edits remain
unrecoverable.
