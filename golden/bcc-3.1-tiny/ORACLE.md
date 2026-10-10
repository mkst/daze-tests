Golden result blessed from Daze output (Unicorn and KVM agree on exit
code, stdout, and object hash; stderr is recorded as null and never
compared — see below).

DOSEMU2 oracle (dosemu 2.0pre9, `dosemu -dumb -K <dir> -E "bcc.exe -c
-oout.o simple.c"`) on the same inputs:

- exit code: 0
- program text equivalent modulo banner/whitespace: dosemu's `-dumb`
  layer expands tabs as usual; memory figures differ by environment
  (recorded but not pinned here — same story as BCC 2.0)
- object: 232 bytes (same size as Daze); hash differs by environment
  (same allocator-metadata story as the other tools)

Why `stderr: null`: BCC 3.1 runs under its protected-mode DPMI loader,
and Daze reports DPMI exception traffic on stderr — ~95 lines / ~11KB
of per-exception register/stack dumps on Unicorn, empty on KVM. The
dumps' stack-relative fields (SI/BP/EFLAGS at entry) vary run to run
while guest results stay identical, and KVM stays silent, so no exact
stderr file could cover both backends deterministically. Exit code,
stdout, and the object hash still gate every run.
