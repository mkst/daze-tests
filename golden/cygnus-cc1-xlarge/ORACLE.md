Golden result blessed from Daze KVM output; Unicorn verified green
at ~53s (margin noted in KNOWN-LIMITS.md)
for this case (`known_limit: [unicorn]` in the case file) — see
KNOWN-LIMITS.md for the Unicorn status.

The internal-counter fix (daze counter fix, uncommitted at bless time)
removed the ~72KB output wall both backends hit: KVM now completes all
300 functions. The object is byte-identical to the DOSEMU2 oracle output
(`3ffecdfb…`, 168846 bytes) — three-way agreement on content, so no
golden-policy tension; the golden pins the KVM bytes for regression.

Stderr timing report all zeros (Daze fixed clock) — same stability note
as the smaller CC1 cases; revisit if timings go nonzero.
