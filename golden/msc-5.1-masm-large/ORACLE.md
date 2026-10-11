Daze vs DOSEMU2 (`MASM.EXE records.asm,,,,` +
`LINK.EXE records.obj,,,,` + `RECORDS.EXE`; all three exit 0 both):

- stdout: Daze-pinned (symbol-space counts and dosemu banner differ).
- records.obj and records.exe: byte-identical three-way:
  `dd011311…` / `f5569a09…`.
