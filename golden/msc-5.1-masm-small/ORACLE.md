Golden result blessed from Daze/Unicorn. Daze/Unicorn and Daze/KVM agree
on exit code, stdout, stderr, and both generated-file hashes.

DOSEMU2 runs `MASM.EXE records.asm,,,,`, `LINK.EXE records.obj,,,,`, then
`RECORDS.EXE` in one work directory; all three steps exit 0. The
`records.obj` and `records.exe` outputs are byte-identical to Daze
(`841f39bd…` and `2e9d4036…`). DOS symbol-space counts and DOSEMU2's
startup banner differ, so stdout is pinned to Daze rather than compared to
the raw DOSEMU2 transcript.
