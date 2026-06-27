# Governance Blueprint

Use this blueprint to create `context/governance.md`. Set requirements according to the project risk profile, organization policy, and selected mode. A governance rule must name its owner, trigger, or evidence where practical.

```md
# Governance

## Security And Permissions
- Least-privilege access and environment separation: [rules]
- Secret handling and approved secret stores: [rules]

## Data Access Boundaries
- Allowed data classes and sanitization requirements: [rules]
- Production, customer, and internal-document access restrictions: [rules]

## AI Agent Restrictions
- Actions the agent may perform and prohibited access: [rules]
- Required human confirmation or controlled environments: [rules]

## Code Review Gates
- Review owner, approval requirement, and merge rule: [rules]

## High-Risk Changes
- Authentication, authorization, payments, deletion, migrations, permissions, and other project-specific high-risk areas: [rules]

## Testing And CI/CD
### Test Strategy
- Unit, integration, E2E, typecheck, lint, build, and deployment coverage: [rules]

### Required Checks
- Commands that exist in this repository: [commands or not applicable]

### GitHub Actions CI
- Platform: GitHub Actions for `standard` and `strict` modes unless the repository already uses another CI platform.
- Workflow path: `.github/workflows/ci.yml` when a later implementation workflow creates CI.
- Triggers: pull requests and pushes to the default branch.
- Permissions: least privilege; default to `contents: read` and add only documented permissions.
- Secrets: [required secrets or none]. Do not expose production or customer secrets to pull-request workflows.

### Pull Request Gates
- Required reviewers, passing checks, and high-risk approval rules: [rules]

### CD And Release Policy
- Environments, deployment trigger, approval, rollback, and release evidence: [rules]

### Evidence And Exceptions
- Required CI evidence before merge and the temporary-exception process: [rules]

## Change Management
- Rollout, migration, rollback, and communication requirements: [rules]

## Issue Ticket And PR Traceability
- Required links among feature spec, issue or ticket, PR, approval, and verification evidence: [rules]

## Compliance Applicability
- Applicable policies, responsible owner, and link to `context/compliance.md` when required: [rules]
```

Baseline constraints: AI agents must not access production secrets, unrestricted customer data, or internal private documents. Use sanitized data, least privilege, and controlled development or staging environments. AI-generated changes require human review before merge.

Do not invent commands or workflow files when the repository does not yet define them. Record the missing CI setup as an open question and let a later implementation workflow create and verify `.github/workflows/ci.yml`.
