Daze vs DOSEMU2 (`AS.EXE -o foo.o foo.s`, frozen seed):

- exit: 0 both; streams empty.
- foo.o: differs only in COFF timestamp bytes 4–7 (DOS wall clock —
  see case `mask`); everything else exact. Masked hash agrees
  three-way: `3ae8bb16…`.
