Daze vs DOSEMU2 (dosemu 2.0pre9, `ASPSX.EXE -o FOO.O MIPS.S`):

- exit: 0 both.
- stdout: identical modulo dosemu boot banner + leading CRLF.
- stderr: Daze empty; dosemu host warnings (keyboard, Landlock).
- FOO.O (101 B): same size; 8 section-slot words differ
  (`buffer_seg+0x10+i`: Daze `0x3010…` vs dosemu `0x10DD…`/`0x10DB…`,
  masked — see case `mask`); code bytes identical. Masked hash agrees
  three-way (Daze Unicorn/KVM + DOSEMU2): `ca61512e…`.
