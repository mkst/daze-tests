Daze vs DOSEMU2 (dosemu 2.0pre9, `bcc.exe -c -osieve.obj sieve.c`):

- exit: 0 both; no warnings (2.0 accepts the K&R source silently).
- stdout: equivalent modulo banner/whitespace; free-memory figure
  differs by environment (dosemu reports more than Daze); same
  tab-expansion note as tiny.
- stderr: Daze empty; dosemu host warnings.
- sieve.obj (469 B): same size, hash differs by environment (same story
  as tiny; oracle hashes vary run to run). Golden is the exact Daze
  hash. (The 478-byte `sieve.obj` in a sibling checkout is stale
  manual-compile debris, overwritten at staging.)
