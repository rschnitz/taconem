# Dashboard (Bootstrap Agun)

Type: Concept × Long-term × Schematic

Purpose:
Provide a high-level system for summarizing the current state of work in Taconem,
including tasks completed recently, tasks in progress, upcoming tasks, dependencies,
and options with meaningful considerations.

Overview:
The dashboard collects agun metadata—especially Task aguns—and presents an overview
of project status. It is intended to support AI tools and CLI users in maintaining
situational awareness of progress and priorities.

The dashboard has five sections:
1. Completed — tasks marked completed within a recent window.
2. Next — tasks not completed, sorted by priority and readiness.
3. Dependencies — tasks that require other aguns or tasks before execution.
4. Sequences — suggested execution order for multi-step work.
5. Considerations — contextual notes: tradeoffs, risks, branching options.

Data Model:
Task aguns should eventually carry optional metadata:
- status: pending | in-progress | completed
- completed_at (timestamp)
- depends_on: [List of agun names]
- sequence_group (string or tag)
- considerations: free-form text

The dashboard aggregates this metadata and displays it.

Dashboard CLI:
`taconem aguns dashboard` should:
- Load all aguns
- Identify which are tasks
- Parse metadata blocks (YAML frontmatter or equivalent)
- Render a readable dashboard summarizing state across the project.

This agun defines the conceptual requirements; the CLI implementation agun will follow.
