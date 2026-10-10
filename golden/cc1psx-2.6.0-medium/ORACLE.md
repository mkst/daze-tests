Golden result blessed from Daze output (Unicorn and KVM agree on exit
code, stdout, stderr, and object).

Consumes the frozen `sources/medium/medium.i` seed (same file
cygnus-cc1-medium uses). See cc1psx-2.6.0-small/ORACLE.md for why
CC1PSX cases take `.i` input.

DOSEMU2 oracle (`CC1PSX.EXE -o BAZ.S foo.i` on the seed): exit 0,
`BAZ.S` byte-identical to Daze (`f0b4ef9e…`, 10710 bytes). Three-way
agreement — no environment-dependent bytes in this output at all.
Stderr timing zeros — same stability note as tiny applies.
