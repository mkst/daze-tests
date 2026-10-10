Golden result blessed from Daze Unicorn output (Unicorn and KVM agree
on exit code, stdout, stderr, and object).

Stderr holds CC1's pass-timing report (`time in parse: 0.000000`, … —
all zeros at this size, plus an ` answer` function echo). It compares
exactly and is stable: zeros reproduce run to run and on both backends
because the workload is far below timer resolution. Watch this file if
larger inputs ever push timings nonzero — that would need the
`stderr: null` treatment like BCC 3.1 (see its ORACLE.md), not silent
re-blessing.

DOSEMU2 oracle (`CC1.EXE -o foo.s foo.i` on the frozen `simple.i`
seed): exit 0, `foo.s` byte-identical to Daze (`422d92d9…`, also daze's
own pinned CC1 hash). Three-way agreement on the object.
