Daze vs DOSEMU2 (`ASMPSX.EXE /l SIMPLE.ASM,SIMPLE.OBJ`):

- exit: 0 both.
- SIMPLE.OBJ (53 B): agrees after masking 3 object-record words
  (offsets 7–8, 19–20, 37–40 — see case `mask`); instruction bytes and
  the exported `answer` symbol identical. Masked hash: `fe9d0f5e…`.
