# Bootstrap Agents (Taconem Bootstrap)

This document defines the **minimal agents** required during Taconem bootstrapping.
These are *not* long-term production agents. They exist only to get the system
initially wired, self-describing, and ready for expansion.

---

## 1. Bootstrap Loader
**Role:** Initializes the project environment, discovers aguns, and exposes project
metadata to agent frameworks (Codex, Raycast, Claude Code, etc.).

**Responsibilities**
- Load `MANIFEST.yaml` and project root definitions.
- Normalize terminology (agun/task/concept).
- Provide a consistent discovery interface.

---

## 2. Bootstrap Daemon (Mini-Daemon)
**Role:** A minimal “pre-daemon” that validates directory structure and checks
for missing pieces before the full daemon exists.

**Responsibilities**
- Validate `aguns/bootstrap`.
- Expose simple health checks.
- Prepare logs directory if missing.
- Assist Codex in ingesting initial aguns.

---

## 3. Bootstrap Memory Mapper
**Role:** Establish minimal mapping between:
- task aguns → bead-db
- concept aguns → specKit + later RAG
- context aguns → project global state

This is only a *mapping layer*, not the full memory subsystem.

---

## 4. Bootstrap SpecLinker
**Role:** Ensures that the SpecKit definitions are visible to Codex and that
the ontology is consistent.

---

## Notes
These bootstrap agents are intentionally minimal. Once the real daemon runs,
these disappear from the working set and are replaced by stable roles defined
in `AGENTS.md` at the project root.
