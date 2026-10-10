Golden result blessed from Daze output (Unicorn and KVM agree on exit
code, streams, and object; also matches daze's own pinned `9f3912a3…`).

DOSEMU2 oracle (`CC1PSX.EXE -o BAZ.S simple.c`): exit 0, `BAZ.S`
byte-identical to Daze. Three-way agreement — no environment-dependent
bytes in this output at all.

Stderr holds CC1PSX's pass-timing report, all zeros (same stability
note as cygnus-cc1-tiny: exact compare safe while zero; revisit if a
larger input goes nonzero). Stdout empty.
