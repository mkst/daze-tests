Daze vs DOSEMU2 (dosemu 2.0pre9, `bcc.exe -c -olarge.o large.c`):

- exit: 0 both.
- stdout: Daze-pinned (no dosemu text equivalence recorded).
- stderr: null (DPMI diagnostics vary by backend/run).
- large.o (4356 B): same size, hash differs by environment (oracle
  `af709682…` today; oracle hashes vary run to run) — timestamp/allocator
  metadata. Golden is the exact Daze hash (`e1bbd4d3…`), no mask.
