Daze vs DOSEMU2 (dosemu 2.0pre9, `ASPSX.EXE -o FOO.O MIPS.S`):

- exit: 0 both.
- stdout: equivalent modulo banner/CRLF and timing (Daze
  `in 0.0 seconds`, fixed zero clock).
- stderr: Daze empty; dosemu host warnings.
- FOO.O (4634 B): same size, hash differs (dosemu `8607f466…` vs Daze
  `5e640455…`; identical on both sides across 2.05/2.08/2.21) —
  presumed allocator slots (verified only for 1.05-tiny). Golden is the
  exact Daze hash (no mask).
