Daze vs DOSEMU2 (dosemu 2.0pre9, `ASPSX.EXE -o FOO.O MIPS.S`):

- exit: 0 both; `0 error(s) from 926 lines`.
- stdout: identical modulo boot banner + leading CRLF.
- stderr: Daze empty; dosemu host warnings.
- FOO.O (4665 B): same size, hash differs (dosemu `851e0cc3…` vs Daze
  `85784b32…`) — ~205 allocator-dependent section-slot words plus 2
  drive-letter bytes (`C:` vs `G:`), measured by binary diff; code bytes
  identical. Golden is the exact Daze hash (no mask).
