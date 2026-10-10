Golden result blessed from Daze Unicorn output (KVM agrees
byte-for-byte on stdout, stderr, and object).

Object is 127 bytes, `e18fc2b8…69df1bd` — identical to the 2.05,
2.08, and 2.30 tiny objects, and the hash daze's own byte-checked
regression expects for post-1.07 ASPSX versions.

DOSEMU2 oracle (dosemu 2.0pre9, same `-E` invocation as the 2.05
notes) exits 0 with a byte-identical object: full three-way
agreement. Program stdout text identical modulo boot banner /
leading CRLF.
