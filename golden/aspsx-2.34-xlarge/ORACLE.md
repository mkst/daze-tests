Golden result blessed from Daze output (Unicorn and KVM agree
byte-for-byte on stdout, stderr, and object — golden files taken from
the KVM run, verified identical to the Unicorn run).

DOSEMU2 oracle (dosemu 2.0pre9, `dosemu -dumb -K <dir> -E "ASPSX.EXE
-o FOO.O MIPS.S"`) on the same inputs:

- exit code: 0, `0 error(s) from 34561 lines`
- object: 207527 bytes,
  `bbbe97f54b1a711729e7dab2f959bacf7cf57f30daeab96a2ca2ecd96d68cb32`
  — byte-identical to the Daze object on both backends

Three-way agreement (dosemu/unicorn/kvm), so no golden-policy tension
at all here. Contrast with 1.05-xlarge (known limit): the same 34560-line
input trips Unicorn's instruction guard under 1.05 but completes under
2.34 on both backends — a same-input cross-version data point for the
instruction-cap investigation (2.34 assembles far fewer guest
instructions per line, or the guard budget happens to suffice).
No `known_limit` marker: this case is green.
