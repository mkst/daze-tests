Golden result blessed from Daze Unicorn output (Unicorn and KVM agree
on exit code, stdout, stderr, and object).

PASS TIMINGS: CC1 needs ~2min under Unicorn for this input (0.65s under
KVM) — 13s on the optimised-Unicorn build, green with margin
(and 2 benchmark iterations). Notably the instruction-count guard
does NOT trip during those 2 minutes, while ASPSX 1.05-xlarge trips it
in ~1s: the guard is not wall-time; same-input cross-version data for
that investigation.

Stderr timing report still all zeros (Daze fixed clock) — exact compare
holds; revisit (`stderr: null`) if a bigger input ever goes nonzero.

DOSEMU2 oracle (`CC1.EXE -o foo.s foo.i` on the frozen seed): exit 0,
`foo.s` byte-identical to Daze (`0a964939…`). Three-way agreement.
