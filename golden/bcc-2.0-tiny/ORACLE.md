Daze vs DOSEMU2 (dosemu 2.0pre9, `bcc.exe -c -oout.o simple.c`):

- exit: 0 both.
- stdout: equivalent — same banner/lines; free-memory figure differs by
  environment (dosemu `429216` vs Daze `366944`; Daze stable across runs
  and backends); 8 spaces vs TAB before `Available` (dosemu `-dumb`
  tab expansion; program bytes agree).
- stderr: Daze empty; dosemu host warnings.
- out.o (220 B): same size, hash differs by environment (free-memory
  figure plus embedded segment data; oracle hashes vary run to run).
  Golden is the exact Daze hash.
