Golden result blessed from Daze Unicorn output (Unicorn and KVM agree
byte-for-byte on stdout, stderr, and object).

DOSEMU2 oracle (dosemu 2.0pre9, `dosemu -dumb -K <dir> -E "ASPSX.EXE
-o FOO.O MIPS.S"`) on the same inputs:

- exit code: 0
- program stdout text: identical to this golden stdout after stripping
  the dosemu boot banner and normalizing the leading CRLF
  (daze emits a leading CRLF; dosemu banner ends where program output
  begins); reports `0 error(s) from 926 lines`
- stderr: dosemu emits host-side warnings (keyboard layout, Landlock);
  golden stderr is empty (daze emits nothing)
- object: 4665 bytes (same size as Daze), hash
  851e0cc380dd6dde5727a994a14243e5e7a6fbe9a7ddca171760cab13522ca5c
  (deterministic across runs)

Same root cause as the tiny case (see its ORACLE.md): ASPSX embeds
`INT 21h/48h` allocator-dependent section slots (`buffer_seg+0x10+i`)
in the object. Assembled code bytes are identical; only the
allocator-dependent metadata differs. The historical-testing caveat
there (golden hashes shift if Daze's allocator floor moves) applies
here too.

Policy (fast-and-loose, to be formalized): the committed golden is the
accepted Daze result, not a byte copy of DOSEMU2 output. The oracle is
used to confirm exit code, program text, and output presence; the object
SHA is reviewed, not blindly copied.
