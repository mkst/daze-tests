Golden result blessed from Daze output with the COFF timestamp bytes
masked (`mask: [[4, 8]]`, same field/recipe note as cygnus-as-large).
Unicorn and KVM objects verified byte-identical here (18.5s vs 0.2s —
timestamps agreed this time, mask stays as policy for this field).

Input `sources/xlarge/xlarge.s` was seeded from the DOSEMU2 CC1 output
(Daze CC1 cannot produce it — see KNOWN-LIMITS.md): this is the one
case whose frozen input comes from the oracle rather than Daze. That is
deliberate and recorded: the AS stage is tested against reference input
exactly as a user would feed it.

DOSEMU2 oracle (`AS.EXE -o foo.o foo.s` on the seed): exit 0, same size
(29225), raw-masked hashes agree both sides (`092daa63…`).
