# Known limits

Cases with `known_limit` fail (or cannot finish) on the listed backends
for understood reasons. `known_limit: true` covers both backends; a
list (e.g. `[unicorn]`) covers only those, so a green backend keeps its
blessed golden and coverage while the blocked one stays explicitly
tracked. They stay in the corpus (oracle + documentation work) so
progress can be measured instead of silently dropping the workload.
(`bench` runs DOSEMU2 and records each known-limit Daze backend as N/A;
unmarked Daze backends still run through the normal correctness check.)

## cc1psx-2.7.2-xlarge (CC1PSX 2.7.2, 300-function input)

STATUS: Unicorn needs ~58-60s for this input, straddling the hard 60s
bound even unloaded (2 of 3 serial runs exceed it; one parallel-matrix
run timed out as well), while KVM completes in ~1.7s with a
byte-identical `0c1a98a4…` object (191663 bytes). The golden (blessed
from Unicorn output, KVM-verified) stays; the marker is
`known_limit: [unicorn]` so the suite stays deterministic and KVM
keeps its coverage. Sibling xlarge cases remain green on both
backends (cc1psx-2.6.0 ~46s, cygnus-cc1 ~53s Unicorn) — 2.7.2 is
simply slower under Unicorn on the same workload.

DOSEMU2 oracle (dosemu 2.0pre9, same `-o BAZ.S foo.i` invocation):
exit 0, byte-identical object — full three-way agreement on content.

Fixed means: Unicorn completes this input reliably inside the bound
(then the marker is removed; re-bless only if Unicorn's bytes differ
from the current golden). Do not shrink the input to force it green.
