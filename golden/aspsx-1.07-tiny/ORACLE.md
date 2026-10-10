Golden result blessed from Daze Unicorn output (KVM agrees
byte-for-byte on stdout, stderr, and object).

Object is 101 bytes, `4aab8d16…7b20` — the same hash daze's own
byte-checked regression expects for ASPSX 1.05/1.07.

DOSEMU2 oracle (dosemu 2.0pre9, `dosemu -dumb -K <dir> -E "ASPSX.EXE
-o FOO.O MIPS.S"`) on the same inputs:

- exit code: 0
- program stdout text identical modulo boot banner / leading CRLF
- object: 101 bytes (same size as Daze),
  `fedf3608eb399071d65f9fc024dff19774cd431dfb85202646bef6417a1f2b3f`

Same-size/different-hash pattern as aspsx-1.05-tiny: presumably the
same `48h` allocator-dependent section metadata (verified only for
1.05-tiny — see its notes). Per policy the committed golden is the
accepted Daze result, not a copy of oracle output.
