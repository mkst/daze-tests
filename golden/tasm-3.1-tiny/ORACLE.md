DOSEMU2 oracle (`TASM.EXE tiny.asm`): exit 0, 176-byte object.
Its SHA256 agrees with Daze after masking the source-timestamp stamp
at offsets 53–56 (FAT date/time) and 66: TASM stamps the object with the
input file's mtime, and Daze reports fixed file times, so those five
bytes gate masked. The remaining 171 bytes — including all instructions
— agree byte-exact. Both Daze backends produce identical objects and
pass the same masked golden. Banner, message counts, and exit code
match; only "Remaining memory" differs (417k under Daze, 478k under
DOSEMU2), so stdout is pinned to Daze rather than compared to the raw
DOSEMU2 transcript.

The tracked source is staged byte-exact; TASM accepts LF-only input.
