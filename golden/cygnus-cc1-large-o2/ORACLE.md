Golden result blessed from Daze output (Unicorn and KVM agree
throughout — but see timings). -O2 variant of cygnus-cc1-large.

PASS TIMINGS: 31s under Unicorn (1.4s KVM) on the optimised build —
green with margin
on Unicorn under the hard 60s policy
and 2 benchmark iterations. Slowest green case in the corpus; the
instruction guard does not trip. Stderr timings all zeros even here.

DOSEMU2 oracle: exit 0, byte-identical (`0f4cd3f9…`).
