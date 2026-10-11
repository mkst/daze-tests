Daze vs DOSEMU2 (`AS.EXE -o foo.o foo.s`, frozen seed):

- exit: 0 both; streams empty.
- foo.o (825 B): differs only in COFF timestamp bytes 4–7 (DOS wall
  clock — see case `mask`); everything else exact. Masked hash agrees
  three-way: `c762bc3f…`.
