Golden result blessed from Daze output with the COFF timestamp bytes
masked (see case `mask: [[4, 8]]`).

WHY MASKED: AS samples DOS time at object-finalize, and Daze's clock
advances with execution. Fast runs (tiny/small/medium) stamp identically
on both backends, but this input takes ~6s under Unicorn vs ~0.1s under
KVM, so the two backends stamp bytes 5-7 differently — deterministically
per backend (three Unicorn reruns identical, KVM reruns identical). The
masked hash unifies all runs (`e4efc661…`) using the same byte ranges
as daze's own masked recipe for this situation (note: daze hashes the
hex string, the runner hashes the masked raw bytes, so the two manifest
strings differ by construction — what matters is that masking heals
every run to one value). Everything outside bytes 4-7 compares exactly.

DOSEMU2 oracle (`AS.EXE -o foo.o foo.s` on the frozen seed): exit 0;
differs only in the same timestamp bytes (wall clock). Input
`sources/large/large.s` frozen from the verified CC1 output.
