# Claude Code Project Context — Taconem

This repository implements the **Taconem** tri-layer cognitive architecture
for AI agents:

- **Tasks** — ephemeral work to be done
- **Concepts** — persistent knowledge and capabilities
- **Embeddings** — vectorized long-term memory

Core layout:

- `taconem/core`   — manifest loading, bead loading, storage, embeddings, vector store
- `taconem/cli`    — CLI entrypoints (e.g., `taconem run-daemon`, `taconem beads list`)
- `taconem/daemon` — FastAPI daemon exposing `/health`, `/projects`, `/beads`, etc.
- `taconem/models` — Pydantic models (Project, Bead, API schemas)
- `beads/*`        — bead collections defined via `MANIFEST.yaml`

Claude should:

- Respect the Task / Concept / Embedding ontology.
- Use `MANIFEST.yaml` to discover projects and bead directories.
- Treat `TACONEM_CONTEXT.md` as authoritative context.
- Avoid generating giant scaffold scripts; modify individual files directly.
- Ask before major structural changes (new top-level dirs, renames).
- Prefer small, readable patches over huge diffs.
