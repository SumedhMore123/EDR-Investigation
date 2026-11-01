#!/usr/bin/env python3
"""Summarize provider and event IDs from exported Windows Event XML files."""
from __future__ import annotations

import argparse
import sys
import xml.etree.ElementTree as ET
from collections import Counter
from pathlib import Path

NS = {"e": "http://schemas.microsoft.com/win/2004/08/events/event"}


def parse_file(path: Path) -> Counter[str]:
    counts: Counter[str] = Counter()
    try:
        root = ET.parse(path).getroot()
    except (ET.ParseError, OSError) as exc:
        print(f"Could not parse {path}: {exc}", file=sys.stderr)
        return counts

    for event in root.findall(".//e:Event", NS):
        event_id = event.findtext("./e:System/e:EventID", default="unknown", namespaces=NS)
        provider = event.find("./e:System/e:Provider", NS)
        provider_name = provider.get("Name", "unknown") if provider is not None else "unknown"
        counts[f"{provider_name}:{event_id}"] += 1
    return counts


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("files", nargs="+", type=Path, help="Exported Windows Event XML files")
    args = parser.parse_args()

    totals: Counter[str] = Counter()
    for path in args.files:
        totals.update(parse_file(path))

    if not totals:
        print("No matching Event XML records found.")
        return 1

    for key, count in totals.most_common():
        print(f"{count:>6}  {key}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
