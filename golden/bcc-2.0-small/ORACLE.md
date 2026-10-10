Golden result blessed from Daze Unicorn output (Unicorn and KVM agree
byte-for-byte on stdout, stderr, and object).

DOSEMU2 oracle (dosemu 2.0pre9, `dosemu -dumb -K <dir> -E "bcc.exe -c
-osieve.obj sieve.c"`) on the same inputs:

- exit code: 0, no warnings despite the missing `#include` (BCC 2.0
  accepts the K&R source silently at default warning level)
- program text equivalent modulo banner/leading whitespace: dosemu
  reports `Available memory 424944`, Daze `362672` (same
  environment-dependent figure as the tiny case; Daze stable across
  runs and backends); same dosemu tab-expansion note as tiny
- stderr: dosemu host warnings only; golden stderr empty
- object: 469 bytes (same size as Daze), hash
  `c9d6769de5b748d9d13823490e06e978209b4838fa8c0d34272a2163f79da0be`
  vs Daze `4c622fa69423c724b3dab49d7aa1daf7b26c2c2d299e168f42fec52785e4e858`

Same same-size/different-hash story as tiny (and ASPSX 1.05): golden is
Daze-derived per policy.

Note: the sibling checkout's `BCC/2.0/sieve.obj` (478 bytes) is stale
debris from an earlier manual compile, not a reference — the fresh
compile here is 469 bytes under both Daze and DOSEMU2. Fixture staging
overwrites it every run, so it cannot cause false passes.
