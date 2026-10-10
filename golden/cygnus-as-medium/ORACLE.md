Golden result blessed from Daze output (Unicorn and KVM agree;
streams empty on both). Input `sources/medium/medium.s` frozen from
the verified CC1 output.

DOSEMU2 oracle (`AS.EXE -o foo.o foo.s` on the frozen seed): exit 0,
same-size object differing from Daze's only in the COFF timestamp
bytes. With bytes 4-7 zeroed (`mask: [[4, 8]]` on the case output,
same recipe as the large/xlarge cases), Daze, DOSEMU2, and the
committed golden all agree.

Why the mask is required: the stamp is sampled from the DOS date,
which follows the host wall clock (`daze_dos_date_get` serves
`time(NULL)`; only the BIOS RTC reads fixed zero). An exact hash
therefore goes stale at midnight — observed Oct 7: the Oct-6-blessed
exact goldens failed on all three small inputs with both backends
agreeing on the new bytes. Proven calendar-only, no Daze behaviour
change: re-running under `TZ=Pacific/Midway` (local date back on
Oct 6) reproduces the original exact golden byte-for-byte.
