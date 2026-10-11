Daze vs DOSEMU2 (`MASM.EXE hello.asm,,,,` + `LINK.EXE hello.obj,,,,`
+ `HELLO.EXE`; all three exit 0 both):

- stdout: Daze-pinned (symbol-space counts and dosemu banner differ).
- hello.obj (176 B) and hello.exe: byte-identical three-way:
  `912f885c…` / `2e57feaf…`.
