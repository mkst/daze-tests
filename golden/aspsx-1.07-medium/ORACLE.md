Golden result blessed from Daze Unicorn output (KVM agrees
byte-for-byte on stdout, stderr, and object).

Object is 4608 bytes, `45ba582c…dd4fcf`.

DOSEMU2 oracle (dosemu 2.0pre9, same `-E` invocation as the tiny
case) on the same inputs:

- exit code: 0
- program text equivalent modulo banner/leading-CRLF (Daze reports
  `in 0.0 seconds`; it serves a fixed zero clock)
- object: 4608 bytes (same size as Daze),
  `2f18873843569f9e72e634f42b2ec148b21cfcd59a07d36a06d4bdbd31d797ca`

Same-size/different-hash pattern as the 1.05/1.07 tiny objects —
likely the same `48h` allocator-dependent section slots (verified
only for 1.05-tiny). Committed golden is the accepted Daze result.
