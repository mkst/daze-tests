Daze vs DOSEMU2 (`AS.EXE -o foo.o foo.s`, frozen seed):

- exit: 0 both; streams empty.
- foo.o: differs only in COFF timestamp bytes 4–7 — wall clock on the
  dosemu side, and sampled per-backend on slow Daze runs (this input
  takes ~6s under Unicorn vs ~0.1s under KVM, stamping differently).
  Masked hash agrees: `e4efc661…`.
