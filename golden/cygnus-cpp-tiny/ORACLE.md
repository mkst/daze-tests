Golden result blessed from Daze output (Unicorn and KVM agree on exit
code and object; stdout/stderr empty on both).

This is the entry stage of the split Cygnus pipeline
(`CPP -> CC1 -> AS`, one case per stage). Its verified output is frozen
as `sources/tiny/simple.i`, which the cygnus-cc1-tiny case consumes —
CC1/AS cases never run CPP, so a CPP change cannot silently move their
inputs. Re-seed deliberately (run the pipeline, verify hashes, copy the
intermediates over the tracked files) if CPP's output format ever
legitimately changes.

DOSEMU2 oracle (dosemu 2.0pre9, `dosemu -dumb -K <dir> -E "CPP.EXE
simple.c foo.i"`): exit 0, `foo.i` byte-identical to Daze
(`fe0507fd…`, also daze's own pinned CPP hash). Three-way agreement;
no golden-policy tension.
