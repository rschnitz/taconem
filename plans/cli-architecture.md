# CLI Architecture Plan

## Commands

- **taconem aguns list**
  - List aguns, filterable by status, priority, tags.

- **taconem aguns next**
  - Show ready-to-work tasks based on Aguns dependencies.

- **taconem aguns dashboard**
  - High-level view of:
    - recently completed,
    - in-progress,
    - next actions,
    - blocked tasks.

- **taconem concepts add**
  - Add new concept to staging.

- **taconem concepts list**
  - List staging and/or stable concepts.

- **taconem concepts promote**
  - Promote concept from staging to stable.

- **taconem concepts embed**
  - Trigger embedding for stable concepts.

- **taconem logs tail**
  - Stream recent log entries.

- **taconem logs summarize**
  - Summarize activity over a time window.

- **taconem logs search**
  - Search logs by filters.

- **taconem logs dashboard**
  - High-level view of recent activity, errors, anomalies.
