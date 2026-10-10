Golden result blessed from Daze Unicorn output (verified against
daze's own byte-checked regression: FOO.O is 101 bytes,
4aab8d16...7b20).

DOSEMU2 oracle (dosemu 2.0pre9, `dosemu -dumb -K <dir> -E "ASPSX.EXE
-o FOO.O MIPS.S"`) on the same inputs:

- exit code: 0
- program stdout text: identical to this golden stdout after stripping
  the dosemu boot banner and normalizing the leading CRLF
  (daze emits a leading CRLF; dosemu banner ends where program output
  begins)
- stderr: dosemu emits host-side warnings (keyboard layout, Landlock);
  golden stderr is empty (daze emits nothing)
- object hash: 998a70e6340c793677a5222951c1e92ab88da93b1e45205a3b37c1289e4c4bc5
  (101 bytes, deterministic across runs)

Root cause of the hash difference (established by instrumenting Daze's
`INT 21h/48h` path): ASPSX allocates one `0x7000`-paragraph DOS buffer
and writes per-section slots at buffer segment `+0x10+i` into the
object. Daze's bump allocator hands out `0x3000` (arena floor), so
sections land at `0x3010...`; FreeDOS hands out whatever its MCB chain
has (`0x10CD` direct, `0x10CB` under a batch file), so sections land at
`0x10DD...` / `0x10DB...`. Assembled code bytes are identical; only
allocator-dependent section metadata differs.

Caveat for historical testing: golden object hashes are therefore
sensitive to Daze's own memory layout. If the allocator floor ever
moves, every golden hash shifts without any correctness change, and the
affected goldens need re-blessing (the oracle comparison then shows a
uniform `base+0x10+i` shift with identical code bytes).

Policy (fast-and-loose, to be formalized): the committed golden is the
accepted Daze result, not a byte copy of DOSEMU2 output. The oracle is
used to confirm exit code, program text, and output presence; the object
SHA is reviewed, not blindly copied.
