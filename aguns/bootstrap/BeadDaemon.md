# Taconem Bootstrap Daemon (Agun Daemon)

This document defines the **bootstrap daemon**, a minimal version of the
real Taconem Daemon. It runs *before* the full system exists and enables
Codex and human agents to build out the architecture safely.

---

## Purpose

The bootstrap daemon:

- validates directory structure,
- checks terminology consistency,
- verifies `aguns/`, `specs/`, `plans/`, and project files,
- ensures bead-db is reachable,
- provides static responses about system state.

It is intentionally simple. Its job is to make sure the house isn’t on fire,
not to run it.

---

## Responsibilities

### 1. Structural Validation
- verify required directories exist: `aguns/`, `plans/`, `specs/`, `logs/`.
- warn about forbidden terminology.
- detect orphaned `.bak` files or stale beads.

### 2. Memory Mapping Sanity Check
- confirm bead-db exists and is readable.
- confirm SpecKit files are well-formed.
- verify ontology is present in bootstrap.

### 3. Provide Minimal MCP Endpoint
This enables Codex (and future agents) to ask:

- “What aguns exist?”
- “What is missing?”
- “What should I create next?”

### 4. Logging
Bootstrap daemon writes to:
```
logs/bootstrap.log
```
### 5. Upgrade Path
When the full daemon is ready, the bootstrap daemon shuts itself off and
hands over control.

