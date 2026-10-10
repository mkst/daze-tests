Golden result blessed from Daze output (Unicorn and KVM agree
byte-for-byte on stdout, stderr, and object).

DOSEMU2 oracle (dosemu 2.0pre9, `dosemu -dumb -K <dir> -E "ASPSX.EXE
-o FOO.O MIPS.S"`) on the same inputs:

- exit code: 0
- program stdout text identical (modulo boot banner / leading CRLF)
- object: 127 bytes,
  `e18fc2b8d6a217ec19be53c8a525d970ba7a4dcb694c0cf1fd799d44e69df1bd`
  — byte-identical to the Daze object, and matching daze's own
  byte-checked regression for post-1.07 ASPSX versions

Unlike 1.05-tiny, no allocator-dependent section metadata leaks into
this object: oracle, Unicorn, and KVM all agree byte-for-byte.
(The 48h/segment-base analysis in the 1.05 notes does not apply here —
whether 2.34 stopped embedding the buffer segment or lays it out
identically everywhere was not investigated; the three-way agreement
makes the question moot for testing.)

Performance note (correctness unaffected): 2.34 is far heavier than
1.05 under Unicorn on the same inputs — tiny: ~1000ms vs ~19ms;
medium: ~1400ms vs ~83ms; xlarge: ~7500ms vs 1.05-xlarge tripping the
instruction guard. KVM is flat at ~80–95ms across all three sizes, and
the Unicorn figures reproduce run to run. Same-input cross-version
data point for the instruction-cap investigation; also relevant when
reading benchmark comparisons across versions.
