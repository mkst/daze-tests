Daze vs DOSEMU2 (dosemu 2.0pre9, `ASPSX.EXE -o FOO.O MIPS.S`):

- exit: 0 both.
- stdout: identical modulo banner/CRLF.
- stderr: Daze empty; dosemu host warnings.
- FOO.O (127 B): byte-identical three-way (Daze Unicorn/KVM + DOSEMU2):
  `e18fc2b8…` (same bytes across post-1.07 versions).
