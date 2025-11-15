#!/usr/bin/env python3
"""
Taconem Repository Validator (v2)
Scans ONLY real project files. Ignores backups, editors, venvs, and git.
"""

import os
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

# directories we DO scan
PROJECT_DIRS = {
    "",
    "taconem",
    "aguns",
    "concepts",
    "specs",
    "plans",
    "scripts",
}

# directories we never scan
IGNORE_DIRS = {
    ".git",
    ".venv",
    ".cursor",
    ".claude",
    ".chatgpt-cli",
    ".raycast",
    "obsidian",
    "__pycache__",
}

# file extensions we care about
GOOD_EXTS = {".md", ".py", ".yaml", ".yml", ".json"}

# allowed bead usage
ALLOWED_BEAD_PATHS = {
    ".beads",
    ".beads/beads.db",
}

FORBIDDEN_BEAD = re.compile(r"\bbead(s)?\b", re.IGNORECASE)
GOOD_AGUN = re.compile(r"\bagun(s)?\b", re.IGNORECASE)


def should_scan(path: Path) -> bool:
    # Do not scan the validator itself
    if path.name == "validate_taconem.py":
        return False

    rel = str(path.relative_to(ROOT))

    # ignore hidden dirs except .beads
    parts = rel.split("/")
    for p in parts:
        if p.startswith(".") and p not in ALLOWED_BEAD_PATHS:
            return False

    # ignore non-project dirs
    top = parts[0] if parts else ""
    if top not in PROJECT_DIRS:
        return False

    # only real source/doc files
    if path.suffix not in GOOD_EXTS:
        return False

    # ignore backups
    if path.name.endswith("~") or path.name.endswith(".bak"):
        return False

    return True


def validate():
    print("== Running Taconem Validator v2 ==\n")

    errors = []

    for path in ROOT.rglob("*"):
        if not path.is_file():
            continue
        if not should_scan(path):
            continue

        rel = str(path.relative_to(ROOT))

        # skip allowed bead paths
        if any(rel.startswith(p) for p in ALLOWED_BEAD_PATHS):
            continue

        text = path.read_text(errors="ignore")
        for m in FORBIDDEN_BEAD.finditer(text):
            errors.append(f"{rel}: illegal bead usage → '{m.group(0)}'")

    if errors:
        print("❌ Terminology issues found:")
        for e in errors:
            print("   -", e)
    else:
        print("✅ All clean — no stray beads in project files.")

    print("\n== Done ==")


if __name__ == "__main__":
    validate()
