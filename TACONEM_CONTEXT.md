# Taconem — Project Context and Architecture Handoff

This document provides the core context for AI assistants working on the **Taconem** project.  
It captures the intent, architecture, and constraints developed in early planning.

## Project Purpose
Taconem is a **tri-layer cognitive architecture** for AI agents.  
It unifies:

1. **Tasks** (ephemeral, actionable work)
2. **Concepts** (persistent knowledge structures)
3. **Embeddings** (vectorized long-term memory)

The system is inspired by “beads” (unit chunks of meaning) and by spec-driven engineering.

Taconem will eventually provide:

- A Python package (`taconem`)
- A CLI (`taconem …`)
- A FastAPI daemon
- A bead manifest + loader system
- Optional vector memory backend
- A generalizable ontology for organizing agent knowledge

## Canonical Repo Structure

```
taconem/
  README.md
  AGENTS.md
  MANIFEST.yaml
  TACONEM_CONTEXT.md

  taconem/
    cli/
    daemon/
    core/
    models/

  beads/
    bootstrap/

  specs/
  examples/
  tests/
```

## High-Level Rules for Any AI Assistant

Any tool operating in this repo should:

### 1. Preserve the 3-layer ontology
- Tasks = ephemeral  
- Concepts = persistent  
- Embeddings = long-term recall  

### 2. Follow the bead model
- Beads are markdown or structured files represented via Pydantic types.
- Beads live in project directories listed in `MANIFEST.yaml`.

### 3. Keep the system modular
- CLI ≠ daemon ≠ core logic  
- Everything should be importable and testable

### 4. Avoid large scaffold scripts
All file creation should be done with **direct edits**, not giant heredocs.

### 5. Write small, understandable commits
Avoid large auto-generated walls of code.

## Implementation Expectations

### CLI
- `taconem run-daemon`
- `taconem beads list`
- Future: search, project management, embeddings, more commands.

### Daemon
- FastAPI application
- Endpoints: `/health`, `/projects`, `/beads`
- Loads beads using `MANIFEST.yaml`
- Future: embeddings, vector store integration.

### Core Layer
- `manifest.py` → loads the MANIFEST
- `loader.py` → bead loader
- `storage.py` → simple file I/O
- `embeddings.py` → vector generation (stub)
- `vector_store.py` → similarity search abstraction

### Models
- Pydantic models for:
  - Bead  
  - Project  
  - API schemas  

## Development Mode

When interacting with this repo, AI assistants should:

- Treat this file (`TACONEM_CONTEXT.md`) as authoritative project memory  
- Use it to determine structure, naming, and organization  
- Ask before creating or renaming directories  
- Append here if expanding the ontology  
- Avoid contradicting or overwriting the stated rules  
- Assume a private companion repo exists (`taconem-lab`) for prototypes  

