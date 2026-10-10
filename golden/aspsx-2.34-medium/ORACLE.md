Golden result blessed from Daze Unicorn output (Unicorn and KVM agree
byte-for-byte on stdout, stderr, and object).

DOSEMU2 oracle (dosemu 2.0pre9, `dosemu -dumb -K <dir> -E "ASPSX.EXE
-o FOO.O MIPS.S"`) on the same inputs:

- exit code: 0
- program text equivalent modulo banner/leading-CRLF, except the timing
  field: dosemu reports `0 error(s) from 926 lines in 0.6 seconds`,
  Daze reports `in 0.0 seconds` (Daze serves a fixed zero clock, so its
  figure is deterministic; dosemu's varies with host speed — one more
  reason goldens are Daze-derived, not oracle copies)
- stderr: dosemu emits host-side warnings; golden stderr is empty
- object: 4602 bytes (same size as Daze), hash
  `3bc2624f66f63f763571e2c7bbf43c2efbc2c9503b2fec2c8794f87a1666b169`
  vs Daze `e7b4068853318082970d3ffc556cc2cb836ee78ad53fb9ff7e9de1c0dcfcead6`

So 2.34-medium shows the familiar same-size/different-hash pattern as
1.05 (likely the same `48h` allocator-dependent section slots, though
that was verified only for 1.05-tiny), while 2.34-tiny agrees with the
oracle byte-for-byte. Whatever 2.34 changed, small objects come out
canonical and larger ones retain environment-dependent metadata.

Historical-testing caveat from the 1.05 notes applies: golden hashes
move if Daze's allocator floor ever moves.
