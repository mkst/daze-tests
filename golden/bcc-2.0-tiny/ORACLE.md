Golden result blessed from Daze Unicorn output (Unicorn and KVM agree
byte-for-byte on stdout, stderr, and object; object also matches daze's
own byte-checked regression: 220 bytes, `c0bc36e2…de889`).

DOSEMU2 oracle (dosemu 2.0pre9, `dosemu -dumb -K <dir> -E "bcc.exe -c
-oout.o simple.c"`) on the same inputs:

- exit code: 0
- program text equivalent: same banner + `simple.c:` + `Available
  memory` lines, except (a) the memory figure — dosemu reports 429216,
  Daze 366944 (guest-observed free RAM differs by environment; Daze's
  figure is stable run to run and across backends), and (b) whitespace
  before `Available` — 8 spaces under dosemu vs TAB under Daze
  (dosemu's `-dumb` terminal layer expands tabs; program bytes agree)
- stderr: dosemu emits host-side warnings; golden stderr is empty
- object: 220 bytes (same size as Daze), hash
  `b37e8da7ff3224360c4e6057ae908261f5f4f60ff94cec4cfcea6f39521fd794`
  vs Daze `c0bc36e2231299244e7e0e60fdfef9ca52b431938888933efaed7ccda79de889`

Same pattern as ASPSX 1.05: same-size objects with environment-dependent
bytes (free-memory figure plus embedded segment data), so the golden is
Daze-derived per policy; the oracle confirms exit code, program text,
and output presence. Daze's figures are deterministic (repeat runs and
both backends identical), so the golden is stable.

Performance note (correctness unaffected): BCC's overlay loader is
unicorn-heavy — tiny ~520ms / small ~690ms under Unicorn vs ~50ms under
KVM on both; dosemu ~2.4s startup-dominated. Same shape as ASPSX 2.34,
unlike 1.05 where the backends track closely on small inputs.
