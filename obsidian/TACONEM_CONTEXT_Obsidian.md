# Taconem — Obsidian Context Note

This note mirrors the core context for the Taconem project, adapted for use
inside an Obsidian vault.

Taconem is a tri-layer cognitive architecture for AI agents:

- **Tasks** — ephemeral work to be done
- **Concepts** — persistent knowledge and capabilities
- **Embeddings** — vectorized long-term memory

Key files in the repo/vault:

- `TACONEM_CONTEXT.md`   — primary project context
- `AGENTS.md`            — guidelines for AI agents
- `MANIFEST.yaml`        — projects and bead locations
- `beads/bootstrap/*`    — bootstrap beads (Summary, Ontology, BeadDaemon, etc.)
- `taconem/core/*`       — manifest, bead loading, storage, embeddings, vector store
- `taconem/cli/*`        — CLI entrypoints
- `taconem/daemon/*`     — FastAPI daemon
- `taconem/models/*`     — Pydantic models

You can link from Obsidian notes to specific beads and code files to build a
knowledge graph around the Taconem architecture.
