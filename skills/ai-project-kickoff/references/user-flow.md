# User Flow Blueprint

Use this blueprint to create `prototypes/user-flow.md` when `references/wireframes.md` triggers a separate user-flow artifact.
Replace every bracketed prompt with project-specific flow decisions.
Do not copy role names, stages, states, or decision branches from previous projects.

```md
# User Flow

## Source Context

- **Product overview**: `context/project-overview.md`
- **Architecture context**: `context/architecture-context.md`
- **Design direction**: `context/design.md`
- **Wireframes**: `prototypes/wireframes.md`

## Actors

| Actor | Goal | Permissions / Constraints | Notes |
| ----- | ---- | ------------------------- | ----- |
| [Actor] | [Goal] | [Permissions, review gates, or constraints] | [Notes] |
| [Actor] | [Goal] | [Permissions, review gates, or constraints] | [Notes] |

## Primary Flow

1. [Actor] [action].
   - System response: [response]
   - Next screen/state: [screen or state]
2. [Actor] [action].
   - System response: [response]
   - Next screen/state: [screen or state]
3. [Completion condition].

## Branches and Exceptions

### [Branch Name]

- **Trigger**: [Condition that sends the flow down this branch.]
- **Actor action**: [What the user or system does.]
- **System behavior**: [What happens.]
- **Recovery or next state**: [Where the user goes next.]
- **Open question**: [Question if unresolved.]

## Asynchronous or Background Work

- **Work item**: [Job, automation, external request, review, import, export, notification, or generated content.]
- **Start trigger**: [What starts it.]
- **Visible status**: [How users see pending/running/success/failure.]
- **Failure handling**: [Retry, rollback, user action, support path, or escalation.]

## Review and Approval Gates

- [Gate]: [Who reviews, what evidence is needed, and what happens on approve/reject.]

## Cross-Role Handoff

- [From actor] -> [To actor]: [Data, state, responsibility, notification, and expected next action.]

## Open Flow Questions

- [Question about actor, branch, state, timing, permission, or recovery behavior.]
```
