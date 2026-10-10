Golden result blessed from Daze output (Unicorn and KVM agree on exit
code, stdout, and object — ~5m40s Unicorn vs 1.2s KVM (hence
42s on the optimised build, green with margin); stderr null per the 43h rationale). -O2 variant of
cc1psx-2.6.0-large.

DOSEMU2 oracle: exit 0, byte-identical (`24236b18…`).
