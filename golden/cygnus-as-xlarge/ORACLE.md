Daze vs DOSEMU2 (`AS.EXE -o foo.o foo.s`, frozen seed):

- exit: 0 both; streams empty.
- foo.o (29225 B): differs only in COFF timestamp bytes 4–7. Masked
  hash agrees: `092daa63…`. (Input `xlarge.s` seeded from DOSEMU2 CC1
  output — the one frozen input Daze CC1 cannot produce.)
