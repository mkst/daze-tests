Golden result blessed from Daze output (Unicorn and KVM agree on exit
code, streams, and object; stdout/stderr empty on both).

Its input `sources/tiny/simple.s` was seeded from the verified
cygnus-cc1-tiny output and frozen (same rationale as the `.i` seeding;
see cygnus-cpp-tiny/ORACLE.md).

DOSEMU2 oracle (`AS.EXE -o foo.o foo.s` on the frozen seed): exit 0,
393-byte object differing from Daze's in exactly COFF timestamp bytes
6-7 (bytes 4-5 equal by chance on the compared runs).

Masking: COFF bytes 4-7 are zeroed before hashing (`mask: [[4, 8]]`
on the case output, same recipe as the large/xlarge cases). With the
mask, Daze (either backend), DOSEMU2, and the committed golden all
agree: `bb19b94e…822f1`.

Why the mask is required: the stamp is sampled from the DOS date,
which follows the host wall clock (`daze_dos_date_get` serves
`time(NULL)`; only the BIOS RTC reads fixed zero). An exact hash
therefore goes stale at midnight — observed Oct 7: the Oct-6-blessed
exact goldens failed on all three small inputs with both backends
agreeing on the new bytes, while the masked large/xlarge cases stayed
green. Proven calendar-only, no Daze behaviour change: re-running
under `TZ=Pacific/Midway` (local date back on Oct 6) reproduces the
original exact golden byte-for-byte.
