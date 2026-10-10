Both Unicorn and KVM pass this case against the Daze golden. The Unicorn
finite per-slice instruction guard was raised from 10M to 20M; no output
change or re-blessing was needed.

DOSEMU2 oracle on the same inputs: exit 0, `0 error(s) from 34561
lines`, 207527-byte object `4c584d7d…` vs Daze `bdca81b7…` — the known
`48h` allocator-base shift (same size, code bytes identical), so the
golden is Daze-derived per policy.
