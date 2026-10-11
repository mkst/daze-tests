Daze vs DOSEMU2 (`CC1PSX.EXE -O2 -o BAZ.S foo.i`, frozen `.i` seed):

- exit: 0 both.
- stderr: null (Unicorn prints tolerated 43h line, KVM silent).
- BAZ.S (42588 B): byte-identical three-way: `24236b18…`.
