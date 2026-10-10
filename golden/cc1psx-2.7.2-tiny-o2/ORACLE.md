Golden result blessed from Daze Unicorn output (KVM agrees on exit
code, stdout, and object; stderr null per the 43h rationale — Unicorn
prints the tolerated `DOS 21h/43h` diagnostic line, KVM stays silent,
same structural divergence as the sibling -O2 cases).

DOSEMU2 oracle: exit 0, byte-identical (`5a8c89d1…`). Three-way
agreement on exit code and object.
