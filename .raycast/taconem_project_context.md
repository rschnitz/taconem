# Raycast AI Project Context — Taconem

**Project**: Taconem  
**Goal**: Implement a tri-layer cognitive architecture for AI agents:
Tasks (ephemeral work), Concepts (persistent knowledge), Embeddings (vector memory).

Key files and directories:

- `TACONEM_CONTEXT.md` — high-level project context
- `AGENTS.md`          — ontology/guidelines for agents
- `MANIFEST.yaml`      — list of bead projects
- `taconem/core`       — core logic: manifest, beads, storage, embeddings, vector store
- `taconem/cli`        — CLI: `taconem ...`
- `taconem/daemon`     — FastAPI daemon
- `taconem/models`     — Pydantic models
- `beads/bootstrap`    — bootstrap beads for the system

Raycast AI should:

- Maintain separation between CLI, daemon, core, models.
- Avoid large auto-generated scripts.
- Use beads and MANIFEST rather than ad-hoc file scanning.
- Propose incremental improvements and small patches.
