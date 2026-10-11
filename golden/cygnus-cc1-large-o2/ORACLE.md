Daze vs DOSEMU2 (`CC1.EXE -O2 -o foo.s foo.i`, frozen seed; -O2
variant of cygnus-cc1-large):

- exit: 0 both.
- stderr: compared exactly (timings all zeros).
- foo.s: byte-identical three-way: `0f4cd3f9…`.
