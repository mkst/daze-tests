Daze vs DOSEMU2 (dosemu 2.0pre9, `ASPSX.EXE -o FOO.O MIPS.S`):

- exit: 0 both; `0 error(s) from 34561 lines`.
- stdout: identical modulo banner/CRLF.
- stderr: Daze empty; dosemu host warnings.
- FOO.O (207493 B): byte-identical three-way (Daze Unicorn/KVM +
  DOSEMU2): `bbbe97f5…`. (An earlier revision of this note said 207527
  bytes, copied from the 1.05-family size; re-running the oracle gives
  207493, matching the golden hash.)

