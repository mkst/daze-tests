Daze vs DOSEMU2 (`CC1.EXE -o foo.s foo.i`, frozen seed):

- exit: 0 both.
- stderr: compared exactly (timings all zeros).
- foo.s (168846 B): byte-identical (Daze KVM + DOSEMU2): `3ffecdfb…`.
  (Unicorn: known limit, see KNOWN-LIMITS.md.)
