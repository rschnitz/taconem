# Taconem Constitution

Taconem exists to provide agents with a unified architecture for:
- structured intent (SpecKit),
- task memory (Aguns),
- conceptual memory (Concept Store + RAG),
- visibility (logging, dashboards),
- unified agent orchestration (daemon + CLI).

## Principles

1. **Separation of concerns**  
   Concepts, tasks, logs, and specs each have distinct roles.
   - Concepts are semantic knowledge.
   - Aguns are actionable work items.
   - Specs define intent and structure.
   - Logs record temporal events and actions.

2. **Transparency**  
   All agent work should be loggable and visible to humans via CLI and dashboards.

3. **Durability of knowledge**  
   Concepts must be consolidated and stabilized before being embedded into the RAG.
   Short-term “scratch” ideas live in staging and are not embedded by default.

4. **Agent correctness**  
   Agents must:
   - use Aguns as the single source of truth for tasks and dependencies,
   - use SpecKit for specs and plans,
   - use the concept store / RAG for semantic knowledge.
   They must not invent their own task or concept storage schemas.

5. **Evolvability**  
   The architecture must support iterative evolution:
   - new agent roles,
   - new endpoints,
   - improved logging and dashboards,
   - expanded concept structures.

6. **Interoperability**  
   Multiple tools (ChatGPT, Claude, Cursor, Raycast, etc.) should be able to collaborate
   against the same project via:
   - SpecKit specs,
   - Aguns,
   - concept store,
   - daemon/CLI APIs.

7. **Human control**  
   Humans remain in control:
   - they can inspect tasks, concepts, logs,
   - they can approve promotion of concepts to long-term memory,
   - they can override or correct agents.
