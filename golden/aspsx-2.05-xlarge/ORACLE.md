Golden result blessed from Daze Unicorn output (KVM agrees
byte-for-byte on stdout, stderr, and object).

Object is 207493 bytes, `bbbe97f5…96d68cb32` — identical across
ASPSX 2.05, 2.08, 2.21, and 2.30 under Daze.

DOSEMU2 oracle (dosemu 2.0pre9, same `-E` invocation) on the same
inputs exits 0 with a byte-identical object: full three-way
agreement (oracle/Unicorn/KVM). Unlike the medium inputs, this
workload carries no allocator-dependent metadata on any side.
