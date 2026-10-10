DOSEMU2 oracle (`CCPSX.EXE -c -o MEDIUM.OBJ medium.c`): exit 0,
`MEDIUM.OBJ` is 4055 bytes. After masking the drive letter embedded in the
COFF source-file path, its SHA256 agrees with the Daze output
(`409c49cd…`). The only differing object byte is the path's drive letter:
DOSEMU2 records `G:` while Daze records `C:`.

The `-c` driver path runs CPPPSX, CC1PSX, and ASPSX, producing an object
without invoking PSYLINK. Daze Unicorn and KVM agree on the masked object,
exit code, and empty output streams.
