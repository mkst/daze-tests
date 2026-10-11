Daze vs DOSEMU2 (`CC1PSX.EXE -O2 -o BAZ.S simple.c`):

- exit: 0 both.
- stderr: null (-O2 issues AH=43h/AL=01 set-attributes; Unicorn prints
  the tolerated-operation line, KVM stays silent; compile unaffected).
- BAZ.S: byte-identical three-way: `50b9ffa2…`.
