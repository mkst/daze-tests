Golden result blessed from Daze Unicorn output (KVM agrees
byte-for-byte on stdout, stderr, and object).

Object is 127 bytes, `e18fc2b8…69df1bd` — the same hash daze's own
byte-checked regression expects for post-1.07 ASPSX versions.

DOSEMU2 oracle (dosemu 2.0pre9, `dosemu -dumb -K <dir> -E "ASPSX.EXE
-o FOO.O MIPS.S"`) on the same inputs exits 0 with a byte-identical
127-byte object: full three-way agreement (oracle/Unicorn/KVM), as
with aspsx-2.34-tiny. Program stdout text identical modulo boot
banner / leading CRLF.
