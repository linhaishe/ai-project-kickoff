---
name: ai-project-kickoff
description: Use when starting a project kickoff, creating a durable context package, generating AGENTS.md plus architecture/design/progress/wireframe docs, or preparing a pre-implementation handoff from a PRD, rough idea, or existing repo.
---

# AI Project Kickoff

## Purpose

Create a durable project context package before implementation starts. The package gives future AI agents enough product, architecture, UI, governance, and handoff context to work consistently across sessions.

## Inputs

- Product idea, PRD, notes, or user conversation.
- Existing repository files when the project already has code or docs.
- Optional reference websites for UI direction.
- Optional user preference for documentation root, project mode, stack, or governance depth.

## Output

Create or update:

- `AGENTS.md`
- `context/project-overview.md`
- `context/architecture-context.md`
- `context/design.md`
- `context/progress-tracker.md`
- `context/implementation-rules.md`
- `prototypes/wireframes.md`

Conditional output:

- `prototypes/user-flow.md`: see `references/user-flow.md`.
- `prototypes/screens/*.md`: see `references/screen.md`.
- `context/governance.md`: see `references/governance.md`.
- `context/compliance.md`: see `references/compliance.md`.
- `context/adr/NNNN-short-title.md`: see `references/adr-template.md`.

Adapt paths when the user requests a custom documentation root or the repository already has a compatible structure.

## Reference Availability

All referenced files must ship with this skill.
Missing packaged references are installation errors.

## Mode Selection

Before generating files, ask the user to choose one mode:

- `lightweight`: fast personal project startup.
- `standard`: default product kickoff.
- `strict`: work, team, compliance-sensitive, or high-risk projects.

Do not create files until the user selects a mode.

Done when the user-selected mode is visible in the response before file generation starts.

## UI Source Selection

Before writing `context/design.md`, ask the user to choose one UI source:

- Reference URLs
- Default product-app style
- Custom visual direction

Do not write `context/design.md` until the UI source is selected or the user explicitly says to use the default.

Done when the selected UI source is visible before `context/design.md` is created.

## Question Bank

Ask the fewest questions needed to proceed. Prefer one compact batch, then make explicit assumptions for anything still unknown.

Core questions:

- What is the product name and one-sentence idea?
- Who are the primary users?
- What is the main user flow from entry to successful outcome?
- What are the must-have MVP capabilities?
- What should be explicitly out of scope?
- Is there an existing or preferred stack?
- Should the UI feel more like an app workspace, operational dashboard, content site, editor, marketplace, or something else?
- Are there auth, collaboration, storage, privacy, or compliance constraints?

Strict mode additions:

- What data is sensitive, private, customer-owned, or regulated?
- Which actions require owner/admin permission?
- What changes require human review before implementation?
- What must be tested before a feature is considered done?
- What assumptions are risky enough to record as open questions?

## Steps

1. Detect project state
   - Inspect local files when a workspace exists.
   - Classify the project as new, existing with little documentation, or partially documented.
   - Done when the project state and existing documentation/code patterns are named.

2. Load packaged output blueprints
   - Read the core MVP blueprints under `references/`: `agents.md`, `project-overview.md`, `architecture-context.md`, `design.md`, `implementation-rules.md`, `progress-tracker.md`, and `wireframes.md`.
   - Treat the packaged blueprints as the required output architecture for product, architecture, UI, standards, workflow, progress, wireframes, and security documents.
   - Done when each required MVP output file is mapped to a packaged blueprint or an existing compatible local convention.

3. Select output location
   - Use the default output structure unless the user requested another root or the repo already has a compatible convention.
   - Done when every output path is known.

4. Select mode and gather inputs
   - Ask the user to choose `lightweight`, `standard`, or `strict`.
   - Do not create files before the user chooses.
   - Done when the selected mode is visible and product, users, scope, stack assumptions, governance depth, and open questions are captured or explicitly marked unknown.

5. Create AGENTS.md
   - Read `references/agents.md`.
   - Create `AGENTS.md` at the repository root unless the user requested a different agent instruction file.
   - Keep it concise and project-specific. Link to the generated `context/*.md` files instead of duplicating their full content.
   - Done when `AGENTS.md` names the project, documentation map, required context files to read before work, implementation rules, verification expectations, and handoff/update requirements.

6. Create product overview
   - Read `references/project-overview.md`.
   - Create `context/project-overview.md`.
   - Done when the document has a concrete project name, concise overview, numbered goals, core user flow, grouped features, in-scope and out-of-scope lists, and measurable success criteria.

7. Create architecture context
   - Read `references/architecture-context.md`.
   - Create `context/architecture-context.md`.
   - Keep recommendations framework-neutral unless the user asks for a default.
   - Done when stack, system boundaries, storage model, auth/collaboration model, starter designs or reusable templates, AI/background generation model, and invariants are documented with concrete project choices.

8. Create design.md
   - Read `references/design.md`.
   - Confirm the user's UI source selection before writing:
     `Reference URLs`, `Default product-app style`, or
     `Custom visual direction`.
   - Follow the UI source handling rules in `references/design.md`.
   - Done when `context/design.md` names the selected source and contains
     evidence-backed or clearly labeled assumed rules for theme tokens,
     typography, radius, spacing, layout patterns, icon rules, component
     conventions, interaction states, and applicable domain-specific UI rules.

9. Create wireframe artifacts
   - Read `references/wireframes.md`.
   - Read `context/project-overview.md`, `context/design.md`,
     and `context/architecture-context.md` before creating artifacts.
   - Create `prototypes/wireframes.md` for every project. Include the main
     user flow, then one structured wireframe per key screen.
   - Follow the conditional artifact rules in `references/wireframes.md`.
   - Use the selected UI source and `context/design.md`; do not invent a
     separate visual direction.
   - Done when every main flow step maps to a named screen or state, every
     key screen has a readable wireframe specification, and any separate
     screen files are justified by strict mode or large screen count.

10. Create governance and standards docs
   - Read `references/implementation-rules.md` for every project.
   - Read the creation triggers in `references/governance.md`, `references/compliance.md`, and `references/adr-template.md` before deciding which conditional outputs apply.
   - Create `context/implementation-rules.md` for every project.
   - Read the full triggered blueprint before creating any conditional governance, compliance, or ADR output.
   - Done when `context/implementation-rules.md` exists and every mode-triggered governance, compliance, or ADR output exists with project-specific rules rather than generic filler.

11. Create progress tracker and handoff state
   - Read `references/progress-tracker.md`.
   - Create `context/progress-tracker.md`.
   - Record the recommended next workflow: feature specification, implementation planning, task decomposition, or implementation. Name only one recommended next workflow unless the user asks for alternatives. Do not create those follow-on artifacts.
   - Done when current phase, current goal, completed/in-progress/next-up states, open questions, architecture decisions, session notes, and the next recommended workflow are recorded.

12. Review and validate the project context package
   - Check missing required sections.
   - Check contradictions between product, architecture, UI, governance, and implementation readiness.
   - Check generic placeholders, deviations from the packaged blueprints, and oversized scope.
   - Check undefined security boundaries and missing human review gates for high-risk changes.
   - Check missing success criteria and missing test expectations.
   - Check missing ADRs for durable architecture choices.
   - Check missing compliance applicability notes for regulated, privacy-sensitive, or cross-border data.
   - Check long session notes that should be consolidated.
   - Check missing or ambiguous next-workflow handoff.
   - Done when every validation issue is fixed or listed as an explicit open question.

13. Review output with the user
   - Summarize created files, assumptions, risks, and open questions.
   - Done when the user has a clear approval/revision path.

14. Optionally transition to implementation planning
   - `website-to-design-md` is required when the user selects `Reference URLs`; other skill calls are enhancements, not requirements.
   - Use `brainstorming` for unclear product direction only when available and appropriate.
   - Use `grilling` for strict challenge mode or assumption testing only when available and appropriate.
   - Use UI or browser visual tools for layout comparisons or visual prototype review only when available and appropriate.
   - Use `writing-plans` only after the project context package is approved and the user wants an implementation plan.
   - Done when the next step is either approval, revision, or implementation planning.

## Completion Criteria

The skill is complete only when:

- The project context package is saved in the agreed location.
- Required documents for the selected mode exist.
- Every generated document has required sections populated or marked explicitly not applicable.
- Every generated document follows the packaged blueprint's concrete structure and specificity.
- Product, architecture, UI, governance, progress, and implementation readiness do not contradict each other.
- Open questions and assumptions are visible.
- The final response lists created files and recommended next step.
