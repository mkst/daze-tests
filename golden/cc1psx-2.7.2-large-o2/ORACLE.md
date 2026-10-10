Golden result blessed from Daze Unicorn output (KVM agrees on exit
code, stdout, and object; stderr null per the 43h rationale — Unicorn
prints the tolerated diagnostic line, KVM stays silent, verified by
the initial bless-then-KVM-regress cycle on this exact case). -O2
variant on the frozen `large.i` seed.

DOSEMU2 oracle: exit 0, byte-identical (`6abe22fc…`). Three-way
agreement on exit code and object. Well under the 60s bound.
