# Root Agun (Taconem Bootstrap Root)

This is the **root agun**, the foundational semantic anchor for the entire
Taconem project. Every other agun—in any dimension (task, concept, context)—
ultimately traces back to this definition.

---

## Purpose of Taconem

Taconem is a **unified cognitive system** that:
- stores tasks (via Steve Yegge’s bead-db),
- stores concepts (via SpecKit + long-term RAG),
- provides structure for agents (human + AI),
- maintains reasoning context across tools,
- federates multiple projects coherently.

Taconem is an *abstraction layer* that ties these together.

---

## The 2×2×2 Ontology

All aguns fall into 3 binary dimensions:

- **Temporal**
  - short-term (pending / volatile)
  - long-term (persistent / stable)

- **Intent**
  - task / action
  - knowledge / concept

- **Scope**
  - local (project)
  - global (cross-project)

The ontology is defined in detail in `aguns/bootstrap/Ontology.md`.

---

## Taconem as a Federation

Taconem is designed for:
- one project (local)
- many projects (federated)
- constrained visibility for each agent

Codex, Raycast, Claude Code, and others can request only the slice of
information they need.

The root agun binds all of this together.

---

## Relationship to Steve Yegge’s Beads

We **use** beads exactly as Yegge intended:

- A bead = a *task* in SQLite.
- Bead-db = the canonical task store.
- Taconem = the abstraction layer above beads (for tasks) and above SpecKit/RAG (for concepts).

No modifications to bead-db, no forking, no divergence.

---

## Relationship to SpecKit

SpecKit provides:
- structured concept storage,
- typed spec definitions,
- architecture scaffolding.

SpecKit handles **long-term concepts**, while bead-db handles **tasks**.
Taconem binds them into a coherent system.

