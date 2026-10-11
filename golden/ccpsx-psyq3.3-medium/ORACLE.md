Daze vs DOSEMU2 (`CCPSX.EXE -c -o MEDIUM.OBJ medium.c`; the `-c`
driver runs CPPPSX + CC1PSX + ASPSX, no PSYLINK):

- exit: 0 both; output streams empty on Daze.
- MEDIUM.OBJ (4055 B): identical after masking 1 drive-letter byte in
  the COFF source path (`G:` dosemu vs `C:` Daze — see case `mask`).
  Masked hash: `409c49cd…`.
