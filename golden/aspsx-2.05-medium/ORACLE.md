Golden result blessed from Daze Unicorn output (KVM agrees
byte-for-byte on stdout, stderr, and object).

Object is 4634 bytes, `5e640455…6d7c4` — identical across ASPSX
2.05, 2.08, and 2.21 under Daze.

DOSEMU2 oracle (dosemu 2.0pre9, same `-E` invocation) on the same
inputs:

- exit code: 0
- program text equivalent modulo banner/leading-CRLF and the timing
  field (Daze reports `in 0.0 seconds`; fixed zero clock)
- object: 4634 bytes (same size as Daze),
  `8607f466cef200eecf25cc6378da6a2505e23031f69f50f45bae0db89c61ea36`
  — likewise identical across 2.05/2.08/2.21

Same-size/different-hash pattern as the 1.05-family objects, likely
the same `48h` allocator-dependent section slots (verified only for
1.05-tiny). Committed golden is the accepted Daze result.
