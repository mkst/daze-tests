Golden result blessed from Daze Unicorn output (Unicorn and KVM agree
on exit code, stdout, stderr, and object).

Stderr holds CC1's pass-timing report, all zeros at this size — same
stability note as cygnus-cc1-tiny: exact compare is safe while timings
stay at zero; nonzero timings at larger sizes would need the
`stderr: null` treatment.

DOSEMU2 oracle (`CC1.EXE -o foo.s foo.i` on the frozen seed): exit 0,
`foo.s` byte-identical to Daze (`c5e53d4a…`). Three-way agreement.
