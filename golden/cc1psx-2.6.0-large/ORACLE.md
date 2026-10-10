Golden result blessed from Daze output (Unicorn and KVM agree on exit
code, stdout, stderr, and object).

PASS TIMINGS: 14s under Unicorn (0.45s KVM) on the optimised build —
green with margin
on Unicorn under the hard 60s policy
and 2 benchmark iterations, same treatment as cygnus-cc1-large. The
instruction guard does not trip; same non-wall-time evidence.

DOSEMU2 oracle on the frozen `sources/large/large.i` seed: exit 0
(hash recorded in the case run, Daze-derived golden per policy).
Stderr timings all zeros under Daze's fixed clock — exact compare
holds; revisit if a bigger input goes nonzero.
