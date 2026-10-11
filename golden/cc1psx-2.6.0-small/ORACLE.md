Daze vs DOSEMU2 (`CC1PSX.EXE -o BAZ.S foo.i`, frozen `.i` seed —
2.6.0 has no integrated preprocessor; raw `.c` fails exit 33
identically on both):

- exit: 0 both.
- stderr: compared exactly (timings all zeros).
- BAZ.S: byte-identical three-way: `6d432984…`.
