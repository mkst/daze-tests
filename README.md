# daze-tests

External compatibility and benchmark cases for Daze. Cases and golden results
live here; DOS tool binaries are supplied locally or fetched from the fixture
catalogue.

## Setup

```sh
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt
```

Fixtures are cached under `~/.cache/daze-tests` by default, or under
`DAZE_TEST_CACHE`. The catalogue pins archive and extracted-content hashes.
Release URLs are awaiting publication; there is no implicit sibling checkout
fallback. For local development, set `DAZE_FIXTURE_SOURCES` to a YAML file
mapping fixture IDs to installation directories, for example:

```yaml
aspsx-1.05: /path/to/aspsx/1.05
bcc-3.1: /path/to/bcc/3.1
```

Only declared files are copied, and their contents must match the catalogue.
An individual `DAZE_FIXTURE_<ID>` environment variable also overrides a source
(uppercase ID with hyphens replaced by underscores). Overrides are optional;
CI uses published assets and an isolated cache.

## Run regressions

Point the runner at the Daze binary to test. From this repository, for example:

```sh
DAZE="$(realpath ../daze/build/debug/daze)"
.venv/bin/python daze_tests.py regress \
  --case bcc-2.0-small --backend kvm --daze "$DAZE"
```

Run the full case/backend matrix with:

```sh
.venv/bin/python daze_tests.py matrix --daze "$DAZE" -j 4
```

KVM cases need usable `/dev/kvm` access. The runner reports documented
case/backend limits as skips.

The required migration/admission set is deliberately smaller than the entire
growing corpus. It covers representative functionality without requiring a
one-to-one port of the old tests:

```sh
.venv/bin/python daze_tests.py matrix --group required --daze "$DAZE" -j 1 \
  --evidence-dir evidence/required
```

This set has 40 pairs: 19 each on explicit Unicorn/KVM, plus `auto` and omitted
backend checks. It rejects known limits, unusable KVM, missing fixtures/goldens,
timeouts and skips. KVM admission checks actual VM creation. Use repeated
`--backend` options to select a backend subset, or `--group` to select named
groups. A group defaults to serial execution. `emit-ctest` accepts the same
group/backend selection, provisions fixtures serially, and emits required
tests without a skip allowance.

Required pairs run twice from separate fresh mounts: an ordinary golden
comparison, then a `--debug --metrics` run proving DOS completion and backend
selection with the same stdout/artifact checks. Debug stderr is kept separately
from golden stderr. Per-step streams, statuses, output sizes/hashes and terminal
records remain in the evidence directory; failed workspaces are preserved.
`matrix.json` records expected/executed pairs, binary/version and corpus hashes,
and fixture digests. Ordinary benchmarks retain their uninstrumented execution.

See [the Phase 4 handoff](migration/PHASE4.md) for functional coverage,
publication instructions and validation results.

## Prepare release assets

```sh
.venv/bin/python daze_tests.py package --sources /path/to/local-sources.yaml \
  --output release-assets
```

The command prepares 16 deterministic ZIPs containing only declared files,
`SHA256SUMS`, and a generated `fixtures.yaml`. Publish the ZIPs and checksum
file as release attachments. Once the release URL exists, fill the catalogue
using those same archives, without repackaging the original installations:

```sh
.venv/bin/python daze_tests.py release-catalogue \
  --base-url https://github.com/OWNER/daze-tests/releases/download/TAG \
  --assets release-assets --output fixtures.yaml
```

The command verifies archive and extracted-content checksums before writing
URLs, preserving the pinned hashes. Commit the catalogue update.
Then validate `--group required` from a fresh checkout and empty cache with
all fixture-source overrides unset. No binaries belong in normal Git history.

Runner tests need only Python and the existing dependencies:

```sh
.venv/bin/python -m unittest discover -s tests -v
```

## Benchmarks and goldens

```sh
.venv/bin/python daze_tests.py bench \
  --case bcc-2.0-small --iterations 20 --daze "$DAZE"
```

The benchmark includes DOSEMU2, Daze/Unicorn, and KVM when available. KvikDOS
is included for cases marked `benchmark.kvikdos: true`; pass `--kvikdos PATH`
to select its binary, or use `--only kvikdos` to probe another case.
DOSBox-X is auto-detected on `PATH` and included for cases marked
`benchmark.dosboxx: true`; pass `--dosboxx PATH` to override the executable,
or use `--only dosboxx` to run it for one case. Headless runs start a fresh
DOSBox-X session per iteration, including startup time.

To browse saved benchmark JSON as a local sortable/filterable table:

```sh
.venv/bin/python render_results.py
```

This writes a self-contained `results/index.html`; open it directly in a
browser. Use `--results DIR` to read another results directory or `--output
FILE` to choose where the HTML is written. The JSON files remain the source
of truth.

Use `oracle --case CASE` to inspect a DOSEMU2 result. Use `bless --case CASE
--backend BACKEND --daze "$DAZE"` to regenerate a Daze golden; review the
resulting diff before accepting it.
