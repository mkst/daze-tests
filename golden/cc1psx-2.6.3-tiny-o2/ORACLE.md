Daze vs DOSEMU2 (`CC1PSX.EXE -O2 -o BAZ.S simple.c`):

- exit: 0 both.
- stderr: null (43h: Unicorn prints tolerated-operation line, KVM
  silent).
- BAZ.S: byte-identical three-way: `fdaf2328…`.
