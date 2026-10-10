Golden result blessed from Daze Unicorn output (KVM agrees
byte-for-byte on stdout, stderr, and object).

Object is 4602 bytes, `e7b40688…fcead6` — byte-identical to the
aspsx-2.34-medium golden object: 2.30 and 2.34 assemble the medium
input to the same bytes under Daze.

DOSEMU2 oracle (dosemu 2.0pre9, same `-E` invocation) exits 0 with
an object hashed `3bc2624f…66b169` — likewise the hash recorded in
the 2.34-medium notes for the oracle side. So 2.30 ≡ 2.34 on both
sides of the comparison, with the familiar same-size/different-hash
split between them (likely `48h` allocator metadata; verified only
for 1.05-tiny). Committed golden is the accepted Daze result.
