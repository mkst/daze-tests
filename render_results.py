#!/usr/bin/env python3

"""Build a self-contained HTML table from benchmark JSON in results/."""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parent

HTML = r"""<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Daze benchmark results</title>
<style>
:root { color-scheme: light dark; font: 15px/1.45 system-ui, sans-serif; }
body { margin: 2rem auto; padding: 0 1rem; max-width: 1500px; }
h1 { margin-bottom: .25rem; }
.subtle { color: #777; }
.controls { display: flex; gap: 1rem; align-items: center; margin: 1.25rem 0; }
input { box-sizing: border-box; width: min(34rem, 100%); padding: .55rem .7rem; }
.table-wrap { overflow-x: auto; }
table { border-collapse: collapse; width: 100%; white-space: nowrap; }
th, td { border-bottom: 1px solid #8885; padding: .55rem .65rem; text-align: left; }
th { position: sticky; top: 0; background: Canvas; cursor: pointer; }
th:hover { text-decoration: underline; }
td.number { text-align: right; font-variant-numeric: tabular-nums; }
tbody tr:hover { background: #8881; }
details summary { cursor: pointer; color: #777; }
code { font-size: .9em; }
#empty { padding: 2rem; text-align: center; color: #777; }
</style>
</head>
<body>
<h1>Daze benchmark results</h1>
<div id="summary" class="subtle"></div>
<div class="controls">
  <input id="filter" type="search" placeholder="Filter runs, cases, targets, hosts…">
  <span class="subtle">Click a column heading to sort.</span>
</div>
<div class="table-wrap">
<table>
  <thead><tr>
    <th data-key="run">Run</th>
    <th data-key="case">Case</th>
    <th data-key="size">Size</th>
    <th data-key="target">Runner</th>
    <th data-key="median_ms">Median (ms)</th>
    <th data-key="p90_ms">P90 (ms)</th>
    <th data-key="timeouts">Timeouts</th>
    <th data-key="machine">Host</th>
    <th data-key="binary">Binary SHA prefix</th>
    <th>Samples</th>
  </tr></thead>
  <tbody id="rows"></tbody>
</table>
<div id="empty" hidden>No benchmark measurements found.</div>
</div>
<script id="benchmark-data" type="application/json">__DATA__</script>
<script>
const measurements = JSON.parse(document.getElementById("benchmark-data").textContent);
const body = document.getElementById("rows");
const filter = document.getElementById("filter");
const empty = document.getElementById("empty");
let sortKey = "case";
let sortDirection = 1;

document.getElementById("summary").textContent =
  `${measurements.length} measurements from ${new Set(measurements.map(x => x.run)).size} result snapshots`;

function cell(row, value, className) {
  const td = document.createElement("td");
  if (className) td.className = className;
  td.textContent = value == null || value === "" ? "—" : value;
  row.appendChild(td);
}

function fmt(value) {
  return typeof value === "number" && Number.isFinite(value) ? value.toFixed(1) : "—";
}

function render() {
  const query = filter.value.trim().toLowerCase();
  const visible = measurements.filter(item =>
    [item.run, item.case, item.size, item.target, item.machine, item.binary]
      .join(" ").toLowerCase().includes(query));

  visible.sort((a, b) => {
    const x = a[sortKey];
    const y = b[sortKey];
    if (typeof x === "number" || typeof y === "number") {
      return ((x ?? Number.POSITIVE_INFINITY) - (y ?? Number.POSITIVE_INFINITY)) * sortDirection;
    }
    return String(x ?? "").localeCompare(String(y ?? ""), undefined, { numeric: true }) * sortDirection;
  });

  body.replaceChildren();
  for (const item of visible) {
    const tr = document.createElement("tr");
    cell(tr, item.run);
    cell(tr, item.case);
    cell(tr, item.size);
    cell(tr, item.target);
    cell(tr, fmt(item.median_ms), "number");
    cell(tr, fmt(item.p90_ms), "number");
    cell(tr, item.timeouts, "number");
    cell(tr, item.machine);
    cell(tr, item.binary);

    const samples = document.createElement("td");
    if (item.samples_ms.length) {
      const details = document.createElement("details");
      const summary = document.createElement("summary");
      summary.textContent = `${item.samples_ms.length} values`;
      const values = document.createElement("code");
      values.textContent = item.samples_ms.map(fmt).join(", ");
      details.append(summary, values);
      samples.appendChild(details);
    } else {
      samples.textContent = "—";
    }
    tr.appendChild(samples);
    body.appendChild(tr);
  }
  empty.hidden = visible.length !== 0;
}

filter.addEventListener("input", render);
document.querySelectorAll("th[data-key]").forEach(th => {
  th.addEventListener("click", () => {
    if (sortKey === th.dataset.key) sortDirection *= -1;
    else { sortKey = th.dataset.key; sortDirection = 1; }
    render();
  });
});
render();
</script>
</body>
</html>
"""


def binary_prefix(result: dict, target: str) -> str | None:
    if target in ("kvm", "unicorn"):
        metadata = result.get("daze", {})
    else:
        metadata = result.get(target, {})
    return metadata.get("sha256_prefix")


def load_measurements(results_dir: Path) -> tuple[list[dict], int, list[str]]:
    rows = []
    files = 0
    errors = []

    for path in sorted(results_dir.rglob("*.json")):
        try:
            result = json.loads(path.read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError) as exc:
            errors.append(f"{path}: {exc}")
            continue

        targets = result.get("targets")
        if not isinstance(targets, dict):
            continue

        files += 1
        relative = path.relative_to(results_dir)
        run = str(relative.parent)
        if run == ".":
            run = "(root)"

        host = result.get("host", {})
        machine = " ".join(
            str(part) for part in (host.get("machine"), host.get("platform"))
            if part
        )

        for target, stats in targets.items():
            if not isinstance(stats, dict):
                continue
            samples = stats.get("samples_ms") or []
            rows.append({
                "run": run,
                "case": result.get("case", path.stem),
                "size": result.get("size"),
                "target": target,
                "median_ms": stats.get("median_ms"),
                "p90_ms": stats.get("p90_ms"),
                "timeouts": stats.get("timeouts", 0),
                "machine": machine,
                "binary": binary_prefix(result, target),
                "samples_ms": samples,
            })

    return rows, files, errors


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--results",
        default=str(ROOT / "results"),
        help="directory containing benchmark JSON files (default: results/)",
    )
    parser.add_argument(
        "--output",
        help="HTML output path (default: <results>/index.html)",
    )
    args = parser.parse_args()

    results_dir = Path(args.results).expanduser().resolve()
    if not results_dir.is_dir():
        print(f"results directory does not exist: {results_dir}", file=sys.stderr)
        return 1

    rows, files, errors = load_measurements(results_dir)
    payload = json.dumps(rows, separators=(",", ":"), ensure_ascii=False)
    # Keep result contents inside the JSON script element, never executable JS.
    payload = (payload.replace("&", "\\u0026")
                      .replace("<", "\\u003c")
                      .replace(">", "\\u003e")
                      .replace("\u2028", "\\u2028")
                      .replace("\u2029", "\\u2029"))

    output = Path(args.output).expanduser() if args.output else results_dir / "index.html"
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(HTML.replace("__DATA__", payload), encoding="utf-8")

    print(f"wrote {output.resolve()} ({len(rows)} measurements from {files} result files)")
    for error in errors:
        print(f"warning: skipped unreadable result: {error}", file=sys.stderr)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
