# Implementation Rules Blueprint

Use this blueprint to create `context/implementation-rules.md`. Replace every bracketed prompt with project-specific rules. Omit a section only when it does not apply and record why.

```md
# Implementation Rules

This file is the runtime authority for implementation rules. It consolidates the code standards and AI workflow guidance from `code-standards.md` and `ai-workflow-rules.md`.

## Code Standards
- Module size and responsibility boundaries: [rules]
- Type safety and input validation: [rules]
- Error handling and logging: [rules]

## Framework And Runtime Rules
- Rendering, background work, and request handling boundaries: [rules]
- Dependency and environment-variable policy: [rules]

## Styling And UI Rules
- Design-token, accessibility, and component conventions: [rules]

## API And Data Boundaries
- Authentication, authorization, validation, and storage rules: [rules]

## File Organization
- Directory ownership and naming conventions: [rules]

## AI Workflow
- Required context to read before changes: [files]
- Work-unit size, verification, and handoff rules: [rules]

## Scoping Rules
- What belongs in one feature unit and what must be split: [rules]

## Handling Missing Requirements
- Where to record ambiguity and who resolves it: [rules]

## Protected Foundations
- Generated, vendor, shared, or high-risk files that require explicit approval: [paths and rules]

## Keeping Docs In Sync
- Context, feature-spec, ADR, and tracker updates required after changes: [rules]

## Before Moving To The Next Unit
- Required checks, expected evidence, and completion conditions: [rules]
```

Do not invent framework, dependency, or file-path rules. Mark an unknown as an open question in `context/progress-tracker.md` and use the least-assumptive temporary rule.
