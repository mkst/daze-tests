Daze vs DOSEMU2 (dosemu 2.0pre9, `ASPSX.EXE -o FOO.O MIPS.S`):

- exit: 0 both.
- stdout: equivalent modulo banner/CRLF and timing (Daze
  `in 0.0 seconds`, fixed zero clock).
- stderr: Daze empty; dosemu host warnings.
- FOO.O (4602 B): same size, hash differs (dosemu `3bc2624f…` vs Daze
  `e7b40688…`; identical on both sides with 2.34) — presumed allocator
  slots (verified only for 1.05-tiny). Golden is the exact Daze hash
  (no mask).
