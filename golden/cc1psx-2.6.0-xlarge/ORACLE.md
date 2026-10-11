Daze vs DOSEMU2 (`CC1PSX.EXE -o BAZ.S foo.i`, frozen `.i` seed):

- exit: 0 both.
- stderr: compared exactly (timings all zeros).
- BAZ.S (199335 B): byte-identical (Daze KVM + DOSEMU2): `1244c3d8…`.
  (Unicorn: known limit, see KNOWN-LIMITS.md.)
