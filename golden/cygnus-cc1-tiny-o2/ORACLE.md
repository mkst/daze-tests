Daze vs DOSEMU2 (`CC1.EXE -O2 -o foo.s foo.i`, frozen `simple.i`
seed; -O2 variant of cygnus-cc1-tiny):

- exit: 0 both.
- stderr: compared exactly (timings all zeros).
- foo.s: byte-identical three-way: `46cb72c4…`.
