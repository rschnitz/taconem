# Memory Architecture Plan

## Components

- **Concept Staging**  
  Short-term, messy, unreviewed ideas.

- **Stable Concept Store**  
  Consolidated, long-lived concepts with identifiers.

- **RAG Embeddings**  
  Vector representations of stable concepts for semantic search.

- **Aguns**  
  Tasks, dependencies, execution graph.

- **Logs**  
  Temporal narrative of actions, errors, events, and metrics.

## Flow

1. Concept emerges (from agents, humans, or logs).
2. Stored in staging (concepts/staging/).
3. Reviewed and consolidated into stable concept.
4. Stable concept is embedded into RAG.
5. Specs and Aguns link to the concept by ID.
6. Logs may later inform new concepts or updates.
