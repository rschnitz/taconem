# Daemon Architecture Plan

## Endpoints

- **GET /aguns**
  - List aguns (tasks) with filters (status, priority, tags).
- **GET /concepts**
  - List concepts (staging and stable) with filters.
- **GET /logs**
  - Query logs by time, agent, agun_id, level.
- **GET /dashboard**
  - Return aggregated views (e.g., recent activity, errors, next actions).
- **GET /health**
  - Daemon health and version info.

## Backend

- SQLite database:
  - agun metadata,
  - concept metadata,
  - log index.
- JSONL files:
  - raw log streams.

## Clients

- CLI tools,
- agents (ChatGPT, Claude, Cursor, etc.),
- possible future web UI or MCP integration.
