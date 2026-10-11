Daze vs DOSEMU2 (dosemu 2.0pre9, `ASPSX.EXE -o FOO.O MIPS.S`):

- exit: 0 both; `0 error(s) from 34561 lines`.
- stdout: identical modulo banner/CRLF (`Psy-Q ASPSX version 1.07`
  banner line).
- stderr: Daze empty; dosemu host warnings.
- FOO.O (207527 B): same size, hash differs (dosemu `aaa6e81f…` vs Daze
  `bdca81b7…`, byte-identical to the 1.05-xlarge Daze object) —
  allocator-base shift. Golden is the exact Daze hash (no mask).
