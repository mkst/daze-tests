# BCC 3.1 large reference

The retained golden expects exit status 0, the committed stdout, and a
4,356-byte `large.o` with SHA256
`e1bbd4d3b2b0892f692c32479dd81135bdb37cbfb2e7c67643cbb7a56e189d00`.
There is no object mask. `stderr: null` retains the established policy for
BCC's DPMI diagnostics, whose register fields differ between backends/runs.

On 2026-10-09, both explicit Daze backends passed those checks from fresh
temporary mounts using `bcc.exe -c -olarge.o large.c`. Raw streams, host
statuses, object size/hash and commands are saved in Daze's
`build/fixture-migration-phase4/reconstruction/bcc-3.1-large.<backend>/`.
These comparison runs did not enable debug/metrics; they do not add a new
claim about DOS terminal diagnostics or benchmark timing.

An earlier retained note reported a DOSEMU2 object beginning `a826b403…`,
different from this Daze-derived golden. That observation was not rerun for
this reconstruction. The exact pre-overwrite note wording is unavailable;
the current expected result is the unchanged manifest and freshly checked
Daze output.
