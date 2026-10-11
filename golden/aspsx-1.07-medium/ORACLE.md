Daze vs DOSEMU2 (dosemu 2.0pre9, `ASPSX.EXE -o FOO.O MIPS.S`):

- exit: 0 both.
- stdout: equivalent modulo banner/CRLF and timing field (Daze
  `in 0.0 seconds`, fixed zero clock).
- stderr: Daze empty; dosemu host warnings.
- FOO.O (4608 B): same size, hash differs (dosemu `2f188738…` vs Daze
  `45ba582c…`) — presumed allocator slots (verified only for
  1.05-tiny). Golden is the exact Daze hash (no mask).
