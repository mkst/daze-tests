Daze vs DOSEMU2 (dosemu 2.0pre9, `bcc.exe -c -osieve.o sieve.C`):

- exit: 0 both; same 3 `printf`-without-prototype warnings.
- stdout: equivalent modulo banner/whitespace/timing and free-memory
  figure (dosemu `4240216` vs Daze `4706816`).
- stderr: null (Unicorn DPMI register dumps vary run to run; KVM stays
  silent).
- sieve.o (481 B): same size, hash differs by environment (dosemu
  `a63df304…` vs Daze `ff0b437d…`) — BCC embeds build
  timestamp/checksum plus allocator-dependent metadata. Masking those
  bytes reproduces daze's own suite-pinned hash `b5fd8189…` exactly.

