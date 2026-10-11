Daze vs DOSEMU2 (dosemu 2.0pre9, `ASPSX.EXE -o FOO.O MIPS.S`):

- exit: 0 both; `0 error(s) from 34561 lines`.
- stdout: identical modulo banner/CRLF.
- stderr: Daze empty; dosemu host warnings.
- FOO.O (207527 B): same size, hash differs (dosemu `4c584d7d…` vs Daze
  `bdca81b7…`) — allocator-base shift; code bytes identical. Golden is
  the exact Daze hash (no mask).
