Daze vs DOSEMU2 (dosemu 2.0pre9, `ASPSX.EXE -o FOO.O MIPS.S`):

- exit: 0 both.
- stdout: identical modulo banner/CRLF.
- stderr: Daze empty; dosemu host warnings.
- FOO.O (101 B): same size, hash differs (dosemu `fedf3608…` vs Daze
  `4aab8d16…`, the same Daze bytes as 1.05-tiny) — presumed same
  allocator-dependent section slots (verified by binary diff only for
  1.05-tiny). Golden is the exact Daze hash (no mask).
