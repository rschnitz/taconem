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
