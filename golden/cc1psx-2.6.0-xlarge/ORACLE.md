Golden result blessed from Daze KVM output; Unicorn verified green
at ~46s (margin noted in KNOWN-LIMITS.md)
(`known_limit: [unicorn]`) pending a bounded verification run — see
KNOWN-LIMITS.md.

The internal-counter fix removed the ~129KB output wall on KVM: exit 0,
199335-byte object byte-identical to the DOSEMU2 oracle (`1244c3d8…`).
No golden-policy tension. Stderr timings all zeros (fixed clock) —
same stability note as the smaller cases.
