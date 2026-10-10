Golden result blessed from the current Daze debug build/Unicorn. Daze/Unicorn
and Daze/KVM agree on exit code, stdout, stderr, and both generated-file hashes.

DOSEMU2 runs `MASM.EXE hello.asm,,,,`, `LINK.EXE hello.obj,,,,`, then
`HELLO.EXE` in one work directory; all three steps exit 0. The linked
executable is byte-identical (`2e57feaf…`), as is the MASM object
(`912f885c…`). An older `daze-tests/daze` binary produced a 312-byte object
with hash `135bb4f1…`; the current debug build produces the 176-byte object
now pinned by this golden. The linked executable is unchanged. DOS
symbol-space counts and DOSEMU2's startup banner differ, so stdout is pinned
to Daze rather than compared to the raw DOSEMU2 transcript.
