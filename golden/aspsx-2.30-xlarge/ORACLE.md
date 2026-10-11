Daze vs DOSEMU2 (dosemu 2.0pre9, `ASPSX.EXE -o FOO.O MIPS.S`):

- exit: 0 both.
- stdout: identical modulo banner/CRLF.
- stderr: Daze empty; dosemu host warnings.
- FOO.O (207493 B): byte-identical three-way (Daze Unicorn/KVM +
  DOSEMU2): `bbbe97f5…` (same bytes across 2.05–2.34).
