Golden result blessed from Daze output (Unicorn and KVM agree on exit
code, stdout, and object; stderr null — see below).

-O2 variant of cc1psx-2.6.0-tiny, same raw-`simple.c` input. DOSEMU2
agrees byte-for-byte on the object (`50b9ffa2…`).

STDERR HISTORY: first blessed with exact stderr (only Unicorn ran —
KVM died in `kvm-rm-procedure` fail-entry, since fixed). Now both
backends run and structurally disagree: Unicorn prints the tolerated
`DOS 21h/43h unsupported operation 1` line (CC1PSX -O2 issues AH=43h/
AL=01, set file attributes; compile proceeds normally), KVM stays
silent — same class as the sibling -O2 cases, so null like them. The
43h gap itself is untouched: implementing 4301h would unify the
streams.
