#!/usr/bin/env bash
set -e

echo "Creating extra Taconem context and helper files…"

# -------------------------------------------------------------------
# 1. Claude Code context file
# -------------------------------------------------------------------
mkdir -p .claude

cat > .claude/context_taconem.md <<'EOF'
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
EOF

# -------------------------------------------------------------------
# 2. Raycast AI “project mode” file
# -------------------------------------------------------------------
mkdir -p .raycast

cat > .raycast/taconem_project_context.md <<'EOF'
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
EOF

# -------------------------------------------------------------------
# 3. Summary bead (beads/bootstrap/Summary.md)
# -------------------------------------------------------------------
mkdir -p beads/bootstrap

cat > beads/bootstrap/Summary.md <<'EOF'
# Summary (Bootstrap Bead)

Type: Concept × Long-term

This bead summarizes the purpose and high-level design of **Taconem**.

Taconem is a tri-layer cognitive architecture for AI agents:

1. **Tasks** — ephemeral actions and jobs to be done.
2. **Concepts** — persistent knowledge structures and capabilities.
3. **Embeddings** — vectorized long-term memory used for retrieval and reasoning.

The system organizes units of meaning as “beads”:

- Beads are stored as markdown or structured files.
- Beads are grouped into projects, listed in `MANIFEST.yaml`.
- Beads can be task-oriented (ephemeral) or concept-oriented (persistent).

The bootstrap project defines:

- The ontology (see `Ontology.md`).
- The daemon concept (`BeadDaemon.md`).
- The overall project context (`TACONEM_CONTEXT.md`).
EOF

# -------------------------------------------------------------------
# 4. Ontology bead (beads/bootstrap/Ontology.md)
# -------------------------------------------------------------------
cat > beads/bootstrap/Ontology.md <<'EOF'
# Ontology (Bootstrap Bead)

Type: Concept × Long-term

This bead describes the core ontology used by Taconem.

Taconem uses a 2×2×2 model for beads along three axes:

1. **Conceptual vs Schematic**
   - Conceptual: ideas, components, capabilities, explanations.
   - Schematic: formal contracts, APIs, specifications, data schemas.

2. **Short-term vs Long-term**
   - Short-term: created to support current work; may be deleted later.
   - Long-term: stable, persistent, and candidates for embeddings.

3. **Task vs Concept**
   - Task: action to be performed; can be completed and retired.
   - Concept: enduring structures, definitions, or capabilities.

In practice, Taconem emphasizes three bins:

- Short-term, Conceptual, Task        → ephemeral work descriptions.
- Long-term, Conceptual, Concept      → persistent descriptions of system pieces.
- Long-term, Schematic, Concept       → specs and contracts (e.g., API definitions).

This ontology guides how new beads should be created and categorized.
EOF

# -------------------------------------------------------------------
# 5. Project-level AGENTS.md stub (root AGENTS.md, refined)
# -------------------------------------------------------------------
cat > AGENTS.md <<'EOF'
# Taconem AGENTS.md

This file defines how AI agents should behave when working in the Taconem
repository.

## Ontology

Taconem organizes information using a 2×2×2 ontology (“beads”) along:

1. Conceptual vs Schematic
2. Short-term vs Long-term
3. Task vs Concept

In practice, focus on:

- Short-term conceptual tasks
- Long-term conceptual concepts
- Long-term schematic concepts (specs)

For a fuller description, see `beads/bootstrap/Ontology.md`.

## Agent Guidelines

When editing or extending this repo, agents should:

- Preserve the Task / Concept / Embedding model.
- Use `MANIFEST.yaml` to discover projects and bead directories.
- Treat beads in `beads/*` as the main units of meaning.
- Keep CLI, daemon, core, and models clearly separated.
- Avoid generating giant scaffold scripts; prefer small, direct edits.
- Ask before introducing new top-level directories or renaming modules.
- Prefer incremental patches and maintain readable diffs.

Authoritative project context lives in `TACONEM_CONTEXT.md`.
EOF

# -------------------------------------------------------------------
# 6. MANIFEST.yaml update (root-level)
# -------------------------------------------------------------------
cat > MANIFEST.yaml <<'EOF'
projects:
  - name: bootstrap
    description: "Initial seed project defining core beads and ontology for Taconem."
    beads_path: "beads/bootstrap"
    agents_file: "beads/bootstrap/AGENTS.md"
    manifest_file: "beads/bootstrap/MANIFEST.yaml"
    tags:
      - core
      - ontology
      - bootstrap
EOF

# -------------------------------------------------------------------
# 7. Obsidian vault version of the context
# -------------------------------------------------------------------
mkdir -p obsidian

cat > obsidian/TACONEM_CONTEXT_Obsidian.md <<'EOF'
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
EOF

# -------------------------------------------------------------------
# 8. VS Code launch.json to run the daemon
# -------------------------------------------------------------------
mkdir -p .vscode

cat > .vscode/launch.json <<'EOF'
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Taconem: Run Daemon (module)",
      "type": "python",
      "request": "launch",
      "module": "taconem.daemon.main",
      "justMyCode": true,
      "env": {
        "PYTHONPATH": "${workspaceFolder}"
      }
    }
  ]
}
EOF

echo "All extra Taconem context and helper files created."
