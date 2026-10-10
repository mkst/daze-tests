Golden result blessed from Daze Unicorn output (Unicorn and KVM agree
on exit code, stdout, stderr, and object).

INPUT FORMAT — READ THIS BEFORE "SIMPLIFYING": CC1PSX 2.6.0 is a
compiler-proper with no integrated preprocessor. Raw `.c` with comments
or directives is rejected with exit 33 (`parse error before '/'`) —
verified byte-identical failure (exit code, partial 292-byte object
`780b77ac…`, diagnostics) under Daze KVM *and* DOSEMU2, so this is a
compiler constraint, not a Daze gap. Preprocessed `.i` input compiles
cleanly. The frozen seed `sources/small/sieve.i` (same file
cygnus-cc1-small consumes) is therefore the input format here, and the
tiny case only works raw because `simple.c` has no comments/directives.

DOSEMU2 oracle (`CC1PSX.EXE -o BAZ.S foo.i` on the seed): exit 0,
`BAZ.S` byte-identical to Daze (`6d432984…`). Three-way agreement.
Stderr timing zeros — same stability note as tiny applies.
