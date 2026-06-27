# Wireframes Blueprint

Use this blueprint to create `prototypes/wireframes.md`.
Replace every bracketed prompt with project-specific screens, states, and interactions.
Do not copy screen names, product flows, UI details, or component arrangements from previous projects.

## Conditional Artifacts

- Create `prototypes/user-flow.md` with `references/user-flow.md` when the project has multiple roles, multi-step journeys, branching paths, asynchronous work, or high-risk actions.
- Create `prototypes/screens/*.md` with `references/screen.md` only in `strict` mode or when the screen count makes `prototypes/wireframes.md` hard to scan.
- Keep `prototypes/wireframes.md` as the map of the whole experience even when separate files exist.
- Do not copy `references/*.md` paths into generated prototype files; use them only while creating the artifacts.

```md
# Wireframes

## Source Context

- **Product overview**: `context/project-overview.md`
- **Architecture context**: `context/architecture-context.md`
- **Design direction**: `context/design.md`
- **Mode**: [lightweight / standard / strict]

## Main User Flow

1. [Entry point or trigger]
2. [Primary user action]
3. [System response]
4. [Review, edit, collaborate, approve, or decide]
5. [Successful completion state]

## Screen Map

| Flow Step | Screen or State | Primary User Goal | Key Data / Controls | Notes |
| --------- | --------------- | ----------------- | ------------------- | ----- |
| [Step] | [Screen name] | [Goal] | [Data and controls] | [Assumption, risk, or dependency] |
| [Step] | [Screen name] | [Goal] | [Data and controls] | [Assumption, risk, or dependency] |

## Global Layout Rules

- [Navigation, shell, sidebar, topbar, inspector, canvas, or page layout rule from `context/design.md`.]
- [Responsive behavior for mobile, tablet, desktop, or dense operational views.]
- [Where primary actions, destructive actions, status, errors, and review gates appear.]

## Screen Wireframes

Repeat this section for every key screen while `prototypes/wireframes.md` remains easy to scan.
When separate screen files exist, keep only the screen map plus short summaries here and link to `prototypes/screens/[screen-name].md`.

### [Screen Name]

**Purpose**: [What the user accomplishes here.]

**Entry conditions**:
- [How the user reaches this screen.]

**Layout**:
- [Region]: [Content and controls.]
- [Region]: [Content and controls.]
- [Region]: [Content and controls.]

**Primary actions**:
- [Action] — [Result, next state, or validation.]

**Secondary actions**:
- [Action] — [Result, next state, or validation.]

**States**:
- Empty: [What appears before data exists.]
- Loading: [What is shown while work is pending.]
- Error: [Message, recovery action, and whether data is preserved.]
- Success/complete: [Confirmation and next action.]

**Data and permissions**:
- [Data displayed, created, edited, exported, or deleted.]
- [Role, owner, review, or access rules that affect the UI.]

**Design notes**:
- [Token, density, layout, component, icon, or interaction rule from `context/design.md`.]

## Cross-Screen States

- **Authentication or access denied**: [When relevant.]
- **First-run or onboarding**: [When relevant.]
- **Empty project or no data**: [When relevant.]
- **Background work pending**: [When relevant.]
- **Collaboration or multi-user state**: [When relevant.]
- **Review or approval required**: [When relevant.]
- **Destructive action confirmation**: [When relevant.]

## Open Wireframe Questions

- [Question about missing screen, role, state, action, data, or responsive behavior.]
```
