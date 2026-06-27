# Implementation Rules Blueprint

Use this blueprint to create `context/implementation-rules.md`.
Replace bracketed prompts with project-specific rules, paths, commands, and exceptions.
Keep the generated file self-contained: future agents should not need separate standards or workflow source files to know how to work.
Do not copy framework, storage, provider, component-library, or command choices from previous projects unless they are true for the current project.

```md
# Implementation Rules

This file is the runtime authority for implementation work in this project.
Follow these rules before changing code, generated artifacts, context files, or product behavior.

## Code Standards

- Keep modules small and single-purpose.
- Fix root causes instead of layering workarounds.
- Do not mix unrelated concerns in one component, route, command, workflow, or service.
- Respect the system boundaries in `context/architecture-context.md`.
- Prefer existing project patterns, helpers, naming, and conventions before introducing new abstractions.
- Add an abstraction only when it removes real duplication, clarifies an ownership boundary, or matches an established local pattern.

## Language and Type Safety

- Use the project's configured strictness settings; do not weaken them without explicit approval.
- Validate unknown input at system boundaries before trusting it.
- Avoid broad escape hatches such as untyped values, unchecked casts, global mutable state, or ad hoc parsing unless the local project standard allows them and the reason is documented.
- Public interfaces should have clear names, narrow responsibilities, and stable return shapes.
- [Project-specific language/runtime rules.]

## Framework and Runtime Rules

- Keep request handlers, UI components, background jobs, CLIs, and shared modules within the boundaries defined in `context/architecture-context.md`.
- Long-running, retryable, scheduled, external-service, or generated-content work should use the project's approved async/background mechanism when one exists.
- Keep secrets in environment configuration; never hardcode tokens, credentials, private keys, or customer data.
- Do not add dependencies without checking whether the project already has an equivalent utility or approved package.
- [Project-specific rendering, request, worker, CLI, caching, or concurrency rules.]

## Styling and UI Rules

- Follow `context/design.md` for theme tokens, typography, spacing, radius, layout, component conventions, and interaction states.
- Use project-defined design tokens or local style primitives instead of hardcoded visual values when they exist.
- Preserve accessibility basics: keyboard access, visible focus, semantic labels, sufficient contrast, and sensible loading/error states.
- Keep UI text concise and product-specific. Do not add instructional marketing copy inside app workflows unless the product requires it.
- [Project-specific component library, icon, asset, and responsive-layout rules.]

## API and Data Boundaries

- Validate and parse request input before running business logic.
- Enforce authentication, authorization, ownership, role, or review gates before mutations and sensitive reads.
- Return consistent response shapes and actionable errors.
- Store each data category in the layer defined by `context/architecture-context.md`; do not invent new persistence locations.
- Do not store large generated content, uploads, private customer data, logs, or analytics outside the approved storage and retention model.
- [Project-specific API, database, file, cache, upload, analytics, audit, or export rules.]

## File Organization

- Keep files near the feature, module, or boundary that owns them.
- Shared helpers belong only where multiple owners genuinely need them.
- Name files after the responsibility they contain, not incidental implementation details.
- Generated, vendor-managed, framework-generated, and reusable foundation files require explicit approval before manual edits.
- `[Path or module group]` — [Responsibility and what does not belong here.]
- `[Path or module group]` — [Responsibility and what does not belong here.]

## AI Workflow

- Before changes, read the smallest relevant set of context files. Always include `context/project-overview.md`, `context/architecture-context.md`, `context/design.md`, `context/implementation-rules.md`, and `context/progress-tracker.md` when the task touches product behavior, architecture, UI, workflow, or handoff state.
- Implement one feature unit or subsystem at a time.
- Prefer small, verifiable increments over large speculative changes.
- Do not infer missing product behavior from code alone. Resolve ambiguous or missing requirements in context docs or open questions before implementing.
- Keep progress state factual: record what changed, what was verified, what failed, and what remains.

## Scoping Rules

Split work when a change combines unrelated concerns, such as:

- UI changes and backend/background workflow changes.
- Persistence changes and presentation-only changes.
- Multiple unrelated API routes or services.
- Permission/security changes and unrelated visual polish.
- Behavior that is not clearly defined in the context files.

If a change cannot be verified end to end within a small work unit, split it.

## Handling Missing Requirements

- Do not invent product behavior, architecture, permissions, storage, external integrations, or visual direction that is not defined in the context package.
- If a requirement is ambiguous but non-blocking, make the least-assumptive choice and record it under assumptions in `context/progress-tracker.md`.
- If a requirement is blocking or high-risk, stop that part of the work and ask for clarification.
- Add unresolved questions to `context/progress-tracker.md` with enough context for the next agent or user to answer them.

## Protected Foundations

Do not manually modify these without explicit approval or a task that directly requires it:

- Generated files.
- Vendor-managed files.
- Third-party library internals.
- Shared foundation components or templates.
- Security, permission, billing, compliance, migration, deployment, or destructive-action foundations.
- `[Project-specific protected path or file group]`

Project-specific styling, layout, and feature behavior should live in app-owned modules instead of patching generated or vendor-managed foundations.

## Keeping Docs In Sync

Update the relevant context file whenever implementation changes:

- Product scope, goals, user flow, or success criteria.
- Architecture boundaries, storage model, integrations, permissions, or invariants.
- Design tokens, layout conventions, component behavior, or interaction states.
- Implementation standards, verification commands, protected files, or workflow rules.
- Current phase, active goal, completed work, open questions, risks, or next workflow.

Progress state must reflect the actual state of implementation, not intended future work.

## Verification

- Run the project-specific checks before claiming work is complete: `[lint/typecheck/test/build/manual review commands]`.
- Use focused tests for narrow changes and broader verification for shared behavior, cross-boundary contracts, data migrations, permission logic, or user-facing workflows.
- For UI changes, verify responsive layout, overflow, loading/error states, keyboard access, and the main user flow when tooling is available.
- For high-risk changes, include human review gates or explicit user approval before irreversible effects.
- If a check cannot run, record the command, reason, and residual risk in `context/progress-tracker.md`.

## Before Moving To The Next Unit

1. The current unit works within its defined scope or the remaining gap is recorded as an open question.
2. No invariant in `context/architecture-context.md` was violated.
3. `context/progress-tracker.md` reflects completed work, in-progress state, next steps, open questions, and verification evidence.
4. Any changed product, architecture, UI, governance, compliance, or implementation rule is reflected in the matching context file.
```
