Golden result blessed from Daze output (Unicorn and KVM agree;
streams empty on both).

Second rung of the split pipeline (see cygnus-cpp-tiny/ORACLE.md for
the seeding rationale). Input `sources/small/sieve.i` frozen from the
verified CPP output below.

DOSEMU2 oracle (`CPP.EXE sieve.c foo.i`): exit 0, `foo.i`
byte-identical to Daze (`2f46065b…`) across all three environments —
no environment-dependent bytes in CPP output at this size either.
