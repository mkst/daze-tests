Daze vs DOSEMU2 (`CL.EXE /c simple.c`; CL shells C1/C2/C3 as
children, so one invocation covers the whole pipeline):

- exit: 0 both.
- stdout: compared exactly (both backends emit the identical banner).
- stderr: compared exactly (same banner; an earlier Unicorn IOCTL
  verbosity bug that forced `stderr: null` is fixed).
- simple.obj (258 B): byte-identical three-way (Daze Unicorn/KVM +
  DOSEMU2): `7154e06c…`.

