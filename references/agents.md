# AGENTS.md Blueprint

Use this blueprint to create root-level `AGENTS.md`.
Replace every bracketed prompt with project-specific instructions.
Do not copy old project names, technology choices, workflows, file paths, or verification commands unless they are true for the current project.

```md
# [Project Name] Agent Guide

## Purpose

[One paragraph explaining what this project is and how AI agents should use the context package before making changes.]

## Required Context

Before changing product behavior, architecture, UI, data, permissions, or implementation workflow, read the relevant files:

- `context/project-overview.md` — product goals, users, scope, success criteria, and open questions.
- `context/architecture-context.md` — stack, system boundaries, data model, integrations, permissions, automation, and invariants.
- `context/design.md` — UI source, theme tokens, layout patterns, component conventions, and interaction states.
- `context/implementation-rules.md` — code standards, workflow rules, verification, documentation updates, and protected files.
- `context/progress-tracker.md` — current phase, active goal, completed work, next steps, risks, and handoff notes.
- `[Optional context file]` — [When to read it.]

## Working Rules

- Work in small, verifiable units tied to the current goal or an approved feature spec.
- Do not invent product behavior, architecture, routes, storage, roles, or UI patterns that are not in the context files.
- If a requirement is missing or contradictory, record the ambiguity in `context/progress-tracker.md` and ask for resolution when it blocks safe progress.
- Keep generated, vendor-managed, shared foundation, and high-risk files unchanged unless the task explicitly requires editing them.
- Update the relevant context files when implementation changes product scope, architecture boundaries, storage, permissions, design rules, verification expectations, or progress state.

## Verification

- Run the project-specific checks listed in `context/implementation-rules.md` before claiming work is complete.
- If a check cannot run, record the command, reason, and residual risk in `context/progress-tracker.md`.
- Treat manual review as required for high-risk changes such as data deletion, permissions, billing, compliance, publishing, external messages, or irreversible automation.

## Handoff

- Keep `context/progress-tracker.md` current at the end of each work session.
- Include completed work, in-progress state, next recommended workflow, open questions, decisions, and verification evidence.
- Prefer links to context files over duplicating long explanations in this file.
```
