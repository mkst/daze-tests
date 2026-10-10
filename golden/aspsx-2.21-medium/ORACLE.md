Golden result blessed from Daze Unicorn output (KVM agrees
byte-for-byte on stdout, stderr, and object).

Object is 4634 bytes, `5e640455…6d7c4` — identical to the 2.05 and
2.08 medium objects under Daze.

DOSEMU2 oracle (dosemu 2.0pre9, same `-E` invocation) exits 0 with
a 4634-byte object hashed `8607f466…c61ea36` — likewise identical
to the 2.05/2.08 oracle objects. Same-size/different-hash against
Daze (see the 2.05-medium notes for the allocator-metadata
analysis). Committed golden is the accepted Daze result.
