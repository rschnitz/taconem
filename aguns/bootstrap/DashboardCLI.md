# Dashboard CLI (Bootstrap Agun)

Type: Task × Conceptual × Short-term

Goal:
Implement the `taconem aguns dashboard` command.

Requirements:
- Load aguns from all projects.
- Identify Task aguns by metadata or heuristics:
    - Explicit YAML frontmatter, OR
    - File naming conventions, OR
    - Direct “Type: Task” line.
- Parse metadata:
    - status
    - completed_at
    - depends_on
    - sequence_group
    - considerations
- Categorize:
    - Completed (recent first)
    - Next (pending / ready)
    - Blocked (pending but with unmet deps)
    - Sequences (cluster by sequence_group)
    - Considerations (merge the “considerations” fields)

Output:
A console dashboard with sections:

=== COMPLETED RECENTLY ===
[List]

=== UP NEXT ===
[List]

=== BLOCKED ===
[List]

=== SEQUENCES ===
[Groupings]

=== CONSIDERATIONS ===
[Collected notes]

Dependencies:
Uses:
- Manifest loader
- Agun loader
- New metadata parser to be added in taconem/core/metadata.py
