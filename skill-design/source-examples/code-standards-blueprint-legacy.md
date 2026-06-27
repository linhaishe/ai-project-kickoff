# Code Standards Blueprint

Use this blueprint only when a project needs a separate `context/code-standards.md` or when enriching `context/implementation-rules.md`.
Replace every bracketed prompt with project-specific rules.
Do not copy framework, storage, provider, directory, token, or component-library rules from previous projects unless the current project explicitly requires them.

```md
# Code Standards

## General

- Keep modules small and single-purpose.
- Fix root causes instead of layering workarounds.
- Do not mix unrelated concerns in one component, route, command, workflow, or service.
- Respect the system boundaries defined in `architecture-context.md`.

## Language and Type Safety

- [Language/runtime strictness rule.]
- [Type, schema, validation, or parsing rule for unknown input.]
- [Allowed and disallowed escape hatches.]
- [Public interface and naming conventions.]

## Framework and Runtime

- [Rendering, request handling, server/client, job, CLI, or worker boundary rules.]
- [Environment-variable and secrets policy.]
- [Dependency policy.]
- [Performance, caching, or concurrency expectations.]

## Styling and UI

- [Design-token usage rule.]
- [Accessibility baseline.]
- [Component ownership rule.]
- [Responsive behavior and layout constraint rule.]

## API and Data Boundaries

- [Authentication and authorization rule.]
- [Input validation and response-shape rule.]
- [Storage, persistence, generated artifact, upload, cache, or analytics rule.]
- [Audit, logging, error, or observability rule.]

## File Organization

- `[Path or module group]` — [Responsibility and what does not belong here.]
- `[Path or module group]` — [Responsibility and what does not belong here.]
- Name files after the responsibility they contain, not incidental implementation details.

## Testing and Verification

- [Required verification for product changes.]
- [Required verification for architecture, data, permission, or workflow changes.]
- [What must be manually reviewed when automation is insufficient.]
```
