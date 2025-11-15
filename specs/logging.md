# Logging Specification

## Purpose

Define how agent actions, system events, and errors are recorded and exposed.

## Requirements

- Logging must capture:
  - timestamp,
  - agent identifier,
  - action type,
  - agun_id (optional, when relevant),
  - log level (info, warning, error),
  - message,
  - optional metadata.

- Use a **hybrid architecture**:
  - SQLite tables for indexed queries,
  - JSONL files for raw, append-only detail.

- Logs must be queryable by:
  - time range,
  - agent,
  - agun_id,
  - level,
  - action type.

- Logs must be exposed via:
  - /logs endpoint,
  - CLI commands (logs tail, summarize, search, dashboard).

- Logs are not concepts and are not embedded directly into the RAG,
  but may inspire new concepts via reflection.
