# Architecture Context Blueprint

Use this blueprint to create `context/architecture-context.md`.
Replace every bracketed prompt with project-specific choices, assumptions, or explicit unknowns.
Do not copy framework names, service providers, storage paths, architecture decisions, or implementation constraints from previous projects unless the current project explicitly requires them.

```md
# Architecture Context

## Stack

| Layer | Technology | Role | Status |
| ----- | ---------- | ---- | ------ |
| [Layer] | [Selected, preferred, assumed, or unknown technology] | [Why this layer exists] | [Confirmed / Assumed / Open] |
| [Layer] | [Selected, preferred, assumed, or unknown technology] | [Why this layer exists] | [Confirmed / Assumed / Open] |

## System Boundaries

- `[Boundary or directory/module/service]` — [Responsibility, ownership, and what does not belong here.]
- `[Boundary or directory/module/service]` — [Responsibility, ownership, and what does not belong here.]

## Data and Storage Model

- **[Data category]**: [Where it lives, who owns it, retention expectations, and access constraints.]
- **[Data category]**: [Where it lives, who owns it, retention expectations, and access constraints.]
- [How generated files, uploads, cache data, analytics, or third-party records are stored or explicitly deferred.]

## Auth, Permissions, and Collaboration Model

- [Authentication model or explicit note that auth is not needed yet.]
- [Primary roles and ownership rules.]
- [Permission checks required at read, write, admin, export, billing, publishing, or destructive-action boundaries.]
- [Collaboration, sharing, approval, or review model if relevant.]

## Integrations and External Services

- **[Service or integration]**: [Purpose, data exchanged, failure mode, and fallback/deferral.]
- **[Service or integration]**: [Purpose, data exchanged, failure mode, and fallback/deferral.]

## AI, Automation, or Background Work

### [Workflow Name]

- **Input**: [User input, system state, files, database records, or external events.]
- **Execution**: [Synchronous request, queued job, scheduled job, human review, or external service.]
- **Output**: [Persisted result, UI state, notification, artifact, or audit record.]
- **Review boundary**: [What requires user confirmation before being applied, sent, deleted, or published.]

## Reusable Templates, Starter Data, or Seeds

- [Starter content, fixtures, design presets, prompt templates, or sample data the project needs.]
- [Where this material should live and how it is kept separate from user-owned production data.]

## Invariants

1. [Rule that must stay true across implementation sessions.]
2. [Rule about ownership, data flow, side effects, or module boundaries.]
3. [Rule about generated artifacts, background work, permissions, or UI state.]

## Risks and Open Technical Questions

- [Risk or unresolved architecture decision.]
- [Unknown dependency, operational concern, scaling constraint, or security question.]
```
