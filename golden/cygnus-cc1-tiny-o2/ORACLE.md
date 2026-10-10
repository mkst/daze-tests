Golden result blessed from Daze output (Unicorn and KVM agree on exit
code, stdout, stderr, and object).

-O2 variant of cygnus-cc1-tiny: same frozen `simple.i` seed, only the
flag varies, so output differences are pure optimizer behavior
(552 vs 378 bytes here). Added for benchmark contrast (optimizer working
harder) as well as optimizer-path regression coverage.

DOSEMU2 oracle (`CC1.EXE -O2 -o foo.s foo.i`): exit 0, byte-identical
(`46cb72c4…`). Stderr timings all zeros — same stability note as -O0.
