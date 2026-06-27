---
name: ai-project-kickoff
description: Use when turning a PRD, product brief, or rough product idea into a durable project context package before implementation.
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

- `prototypes/user-flow.md`: only when the project has multiple roles, multi-step journeys, branching paths, asynchronous work, or high-risk actions.
- `prototypes/screens/*.md`: only in `strict` mode or when the screen count is large enough that separate screen files make `prototypes/wireframes.md` hard to scan.
- `context/governance.md`: for `standard` or `strict` mode, or when the PRD indicates a governance risk.
- `context/compliance.md`: when compliance is relevant or the selected mode is `strict`.
- `context/adr/NNNN-decision.md`: only for durable architecture choices; create an initial ADR in `strict` mode when a durable choice exists.

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
   - Read the core MVP blueprints under `references/`: `project-overview.md`, `architecture-context.md`, `design.md`, and `progress-tracker.md`.
   - Read `references/implementation-rules.md` and `references/governance.md` for standard and strict modes.
   - Read `references/adr-template.md` and `references/compliance.md` only when strict/team mode, important architecture decisions, or regulated data make them relevant.
   - Treat the packaged blueprints as the required output architecture for product, architecture, UI, standards, workflow, progress, and security documents.
   - Done when each target output file is mapped to a packaged blueprint or an existing compatible local convention.

3. Select output location
   - Use the default output structure unless the user requested another root or the repo already has a compatible convention.
   - Done when every output path is known.

4. Select mode and gather inputs
   - Ask the user to choose `lightweight`, `standard`, or `strict`.
   - Do not create files before the user chooses.
   - Done when the selected mode is visible and product, users, scope, stack assumptions, governance depth, and open questions are captured or explicitly marked unknown.

5. Create product overview
   - Read `references/project-overview.md`.
   - Create `context/project-overview.md`.
   - Done when the document has a concrete project name, concise overview, numbered goals, core user flow, grouped features, in-scope and out-of-scope lists, and measurable success criteria.

6. Create architecture context
   - Read `references/architecture-context.md`.
   - Create `context/architecture-context.md`.
   - Keep recommendations framework-neutral unless the user asks for a default.
   - Done when stack, system boundaries, storage model, auth/collaboration model, starter designs or reusable templates, AI/background generation model, and invariants are documented with concrete project choices.

7. Create design.md
   - Read `references/design.md`.
   - Confirm the user's UI source selection before writing:
     `Reference URLs`, `Default product-app style`, or
     `Custom visual direction`.
   - For `Reference URLs`, ask for one or more live URLs, then use
     `website-to-design-md` and write its synthesized output to
     `context/design.md`.
   - If `website-to-design-md` is unavailable, stop the `Reference URLs`
     path and ask the user to install or expose it, or choose
     `Default product-app style` or `Custom visual direction` instead.
   - If no URL is supplied or a URL is inaccessible, record the limitation as
     an open question and ask whether to continue with
     `Default product-app style` or `Custom visual direction`.
   - For `Default product-app style`, apply `Default UI Direction`.
   - For `Custom visual direction`, translate the user's direction into
     tokenized, project-specific UI rules.
   - Do not copy brand names, proprietary assets, exact copy, or distinctive
     trade dress from reference sites.
   - Done when `context/design.md` names the selected source and contains
     evidence-backed or clearly labeled assumed rules for theme tokens,
     typography, radius, spacing, layout patterns, icon rules, component
     conventions, interaction states, and applicable domain-specific UI rules.

8. Create wireframe artifacts
   - Read `context/project-overview.md`, `context/design.md`,
     and `context/architecture-context.md` before creating artifacts.
   - Create `prototypes/wireframes.md` for every project. Include the main
     user flow, then one structured wireframe per key screen.
   - Create `prototypes/user-flow.md` only when the project has multiple
     roles, multi-step journeys, branching paths, asynchronous work, or
     high-risk actions.
   - Create `prototypes/screens/*.md` only in `strict` mode or when the
     screen count is large enough that separate screen files make
     `prototypes/wireframes.md` hard to scan.
   - Use the selected UI source and `context/design.md`; do not invent a
     separate visual direction.
   - Done when every main flow step maps to a named screen or state, every
     key screen has a readable wireframe specification, and any separate
     screen files are justified by strict mode or large screen count.

9. Create governance and standards docs
   - Read `references/implementation-rules.md` for every project. Read `references/governance.md` for `standard` or `strict` mode, or when the PRD indicates a security, permission, data, review, testing, CI/CD, or change-management risk.
   - Read `references/adr-template.md` when the project has durable architecture choices to record or the selected mode is `strict`.
   - Read `references/compliance.md` when the project touches finance, healthcare, education, privacy-sensitive data, customer-owned data, cross-border data, or company policy constraints.
   - Create `context/implementation-rules.md` for every project.
   - Create `context/governance.md` for `standard` or `strict` mode, or when the PRD indicates a governance risk.
   - Create `context/compliance.md` when compliance is relevant or the selected mode is `strict`; otherwise record the not-applicable decision in `context/governance.md` when it exists, or in `context/progress-tracker.md`.
   - Create `context/adr/NNNN-decision.md` only for durable architecture choices; create an initial ADR in `strict` mode when a durable choice exists.
   - Done when `context/implementation-rules.md` exists and every mode-triggered governance, compliance, or ADR output exists with project-specific rules rather than generic filler.

10. Create progress tracker and handoff state
   - Read `references/progress-tracker.md`.
   - Create `context/progress-tracker.md`.
   - Record the recommended next workflow: feature specification, implementation planning, task decomposition, or implementation. Name only one recommended next workflow unless the user asks for alternatives. Do not create those follow-on artifacts.
   - Done when current phase, current goal, completed/in-progress/next-up states, open questions, architecture decisions, session notes, and the next recommended workflow are recorded.

11. Review and validate the project context package
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

12. Review output with the user
   - Summarize created files, assumptions, risks, and open questions.
   - Done when the user has a clear approval/revision path.

13. Optionally transition to implementation planning
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
