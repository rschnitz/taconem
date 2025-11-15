# Task Specification

## Purpose

Define how tasks are produced, represented, and executed within Taconem.

## Requirements

- All tasks are stored in **Aguns**, not in ad hoc lists or other trackers.

- Tasks are generated from:
  - SpecKit Specs and Plans,
  - human input,
  - reflection and logs (follow-up work).

- Aguns are the **single source of truth** for:
  - task status,
  - dependencies,
  - priorities.

- Agents must use Aguns to:
  - find ready work,
  - determine what is blocked,
  - track progress over time.

- Aguns may reference:
  - SpecKit sections,
  - specific concept IDs,
  - logs (for context and history).
