# Screen Blueprint

Use this blueprint for each `prototypes/screens/*.md` file when `references/wireframes.md` triggers separate screen files.
Replace every bracketed prompt with one concrete screen or state.
Do not create separate screen files when `prototypes/wireframes.md` remains easy to scan.

```md
# [Screen Name]

## Purpose

[What the user accomplishes on this screen and why it exists in the main flow.]

## Source Context

- **Flow step**: [Step from `prototypes/wireframes.md` or `prototypes/user-flow.md`]
- **Design rules**: [Relevant rule from `context/design.md`]
- **Architecture constraints**: [Relevant constraint from `context/architecture-context.md`]

## Entry Conditions

- [Route, navigation action, role, system state, notification, or deep link that opens this screen.]

## Layout

| Region | Content | Controls | Notes |
| ------ | ------- | -------- | ----- |
| [Region] | [Information shown] | [Actions/inputs] | [Responsive, state, or permission note] |
| [Region] | [Information shown] | [Actions/inputs] | [Responsive, state, or permission note] |

## Primary Actions

- [Action] — [Validation, result, next screen/state, and side effects.]

## Secondary Actions

- [Action] — [Validation, result, next screen/state, and side effects.]

## States

- **Empty**: [What appears before data exists and what action is offered.]
- **Loading**: [What appears while data or background work is pending.]
- **Error**: [Message, recovery action, and whether user input/data is preserved.]
- **Success/complete**: [Confirmation, next action, and persisted state.]
- **Permission denied**: [When relevant.]

## Data and Permissions

- **Reads**: [Data shown and who may see it.]
- **Writes**: [Data created/changed/deleted and who may do it.]
- **Sensitive data**: [Data requiring masking, review, or special handling.]
- **Review gate**: [Approval or confirmation before risky effects.]

## Interaction Notes

- [Keyboard, focus, hover, drag/drop, responsive, collaboration, generated-content, or irreversible-action note.]

## Open Screen Questions

- [Question about missing data, state, action, layout, permission, or responsive behavior.]
```
