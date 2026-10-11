Daze vs DOSEMU2 (dosemu 2.0pre9, `bcc.exe -c -oout.o simple.c`):

- exit: 0 both.
- stdout: equivalent modulo banner/whitespace (tab expansion) and
  environment memory figures.
- stderr: null (DPMI loader diagnostics: Unicorn register/stack dumps
  vary run to run; KVM stays silent).
- out.o (232 B): same size, hash differs by environment (allocator
  metadata). Golden is the exact Daze hash.
