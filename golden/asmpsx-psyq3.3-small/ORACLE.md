DOSEMU2 oracle (`ASMPSX.EXE /l SIMPLE.ASM,SIMPLE.OBJ`): exit 0,
53-byte object. Its SHA256 agrees with Daze after masking the three
documented object-record ranges at offsets 7–8, 19–20, and 37–40;
instruction bytes and the exported `answer` symbol agree. Both Daze
backends produce identical objects and pass the same masked golden.

The tracked source is staged with DOS CRLF line endings; ASMPSX rejects
LF-only input.
