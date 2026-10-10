Golden result blessed from Daze output (Unicorn and KVM agree on exit
code, stdout, and object hash; stderr null, see below).

Cross-check against daze's own suite: daze pins the timestamp-masked
object (`bytes 52..55/64 and 471..474/475` zeroed per its cmake recipe)
at `b5fd8189afcddd1a4419f784bf3f9b55640c7e803f57137f88e2702f47f157ce`.
Applying the identical masking recipe to this golden's `sieve.o`
reproduces that hash exactly — the objects agree modulo the known
source-timestamp/checksum bytes.

DOSEMU2 oracle (dosemu 2.0pre9, `dosemu -dumb -K <dir> -E "bcc.exe -c
-osieve.o sieve.C"`) on the same inputs:

- exit code: 0, same 3 `printf`-without-prototype warnings BCC 3.1
  emits at default level (2.0 stays silent on the same source)
- program text equivalent modulo banner/whitespace/timing: dosemu
  `Available memory 4240216` vs Daze `4706816`
- object: 481 bytes (same size), hash differs by environment
  (`d5c31cc2…` vs Daze `ff0b437d…`) — timestamp/checksum bytes plus the
  usual allocator-dependent metadata

Why `stderr: null`: same DPMI-diagnostics rationale as bcc-3.1-tiny
(Unicorn register dumps vary run to run; KVM silent). Note the
filenames mirror daze exactly (`sieve.C` in, `sieve.o` out) because the
OBJ embeds source metadata.
