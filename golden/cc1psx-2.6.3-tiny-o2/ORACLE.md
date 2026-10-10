Golden result blessed from Daze output (Unicorn and KVM agree on exit
code, stdout, and object; stderr null — Unicorn prints the tolerated
43h line, KVM silent, verified on 2.6.3). -O2 variant on raw `simple.c`.

DOSEMU2 oracle: exit 0, byte-identical (`fdaf2328…`). No KVM failure
on 2.6.3 (the 2.6.0 fail-entry history does not apply here).
