Golden result blessed from Daze Unicorn output (Unicorn and KVM agree
on exit code, stdout, stderr, and object).

Stderr timing report still all zeros at this size — same stability note
as tiny applies; revisit if a larger input pushes timings nonzero.

DOSEMU2 oracle (`CC1.EXE -o foo.s foo.i` on the frozen seed): exit 0,
`foo.s` byte-identical to Daze (`dbb6f235…`). Three-way agreement.
