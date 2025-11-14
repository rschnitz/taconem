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
