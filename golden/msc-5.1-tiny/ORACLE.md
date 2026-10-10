Golden result blessed from Daze output (Unicorn and KVM agree on exit
code, stdout, and object; also matches daze's own pinned `7154e06c…`).
Stderr recorded as null — see below.

CL is a driver: one `CL.EXE /c simple.c` invocation shells C1/C2/C3 as
children, so this single case covers the whole pipeline (mirroring
daze's own test, which copies the full tool directory for the same
reason — hence the 4-file fixture).

STDERR HISTORY (now exact): this case originally shipped with
`stderr: null` because Unicorn printed tolerated-IOCTL diagnostics
(`DOS 21h/44h unsupported IOCTL 00 on handle 3/4`) while KVM printed
only the Microsoft banner. That turned out to be a Unicorn-side
verbosity bug, not a backend difference: the shared service already
answers 4400h correctly (invalid handles get AX=6/CF, the tools proceed
normally), and the unconditional print was the lone ungated diagnostic
in the shared-reply switch — mislabeled, too, since the path fires only
for handled invalid-handle responses. Gated behind `--debug` with
corrected wording; both backends now emit the identical static banner,
compared exactly.

DOSEMU2 oracle (`CL.EXE /c simple.c`): exit 0, `simple.obj`
byte-identical to Daze (`7154e06c…`, 258 bytes). Three-way agreement.
