# Concept Memory Specification

## Purpose

Define how conceptual knowledge is represented and managed in Taconem.

## Requirements

- Maintain a **short-term concept staging** area (concepts/staging/):
  - ephemeral, messy ideas
  - scratch notes
  - early reasoning and unrefined insights.

- Maintain a **stable concept store** (concepts/ or concepts/stable/):
  - consolidated, durable concepts
  - referenced by Specs, Aguns, and agents.

- Implement a **promotion process**:
  - concepts move from staging → stable after review (human or agent-assisted).

- Implement a **RAG embedding pipeline**:
  - only stable concepts are embedded,
  - embeddings are stored in a vector index,
  - retrieval is used by agents for semantic context.

- Link concepts to:
  - SpecKit specs (where the concept is used),
  - Aguns issues (which depend on or implement the concept).
