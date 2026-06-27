# Governance Blueprint

Use this blueprint to create `context/governance.md`.
Replace bracketed prompts with project-specific owners, triggers, commands, review gates, and evidence.
Keep the generated file actionable: every rule should name what triggers it, who reviews it, or what evidence proves it was followed.
Do not invent CI files, commands, approval systems, secret stores, or compliance claims that the project does not have; mark unknowns as open questions.

## Creation Triggers

Create `context/governance.md` when the selected mode is `standard` or `strict`, or when the PRD/repo indicates security, permission, data, review, testing, CI/CD, deployment, change-management, collaboration, billing, destructive action, external-send, or compliance risk.

If governance is not created, record a concise not-applicable decision in `context/progress-tracker.md`.

```md
# Governance

This file defines the project rules for security, permissions, agent boundaries, review, testing, release, and traceability.

## Security and Permissions

- Apply least privilege to user roles, service accounts, API keys, local tools, CI, deployment, and third-party integrations.
- Separate development, staging, and production environments when the project has deployed or customer-facing data.
- Secrets must live only in approved secret stores or local environment files excluded from version control.
- Never commit tokens, credentials, private keys, customer data, production data exports, or internal private documents.
- Permission checks are required before sensitive reads, mutations, exports, destructive actions, admin actions, and external sends.
- **Project-specific owner**: [Person, team, or role responsible for security and permissions.]
- **Open permission questions**: [Unknown role, boundary, or approval requirement.]

## Data Access Boundaries

- Classify data before using it: public, internal, customer-owned, private, regulated, secret, or generated.
- Use sanitized, synthetic, or development data for agent work unless explicit approval allows another source.
- Production data access requires a named owner, reason, time limit, and evidence trail.
- Customer-owned, regulated, private, or cross-border data must not be copied into prompts, logs, screenshots, fixtures, or public issues unless the approved policy allows it.
- Deletion, export, retention, backup, and audit behavior must be documented before implementation when the project stores user or customer data.
- **Allowed data classes**: [Data classes agents may use.]
- **Restricted data classes**: [Data classes requiring approval or prohibited from agent workflows.]

## AI Agent Restrictions

- Agents may read and edit repository files inside the approved workspace and may run project-local verification commands.
- Agents must not access production secrets, unrestricted customer data, private internal documents, personal accounts, payment dashboards, healthcare records, education records, or legal/compliance systems unless explicitly approved for a narrow task.
- Agents must ask before destructive actions, irreversible migrations, external sends, production deploys, billing changes, permission changes, or deleting user/customer data.
- Agents must record assumptions and unresolved questions in `context/progress-tracker.md`.
- **Allowed agent actions**: [Project-specific allowed actions.]
- **Prohibited agent actions**: [Project-specific prohibited actions.]

## Code Review Gates

- Human review is required before merging changes that affect authentication, authorization, billing, deletion, migrations, compliance, external messaging, generated content publication, secrets, deployment, or customer-visible workflows.
- Reviewers must verify that implementation matches `context/project-overview.md`, `context/architecture-context.md`, `context/design.md`, and `context/implementation-rules.md`.
- High-risk changes require evidence of testing and a rollback or mitigation plan.
- **Default reviewer**: [Owner, team, or role.]
- **Approval rule**: [Required approvals and exceptions.]

## High-Risk Changes

Treat these as high-risk until the project defines otherwise:

- Authentication and session handling.
- Authorization, roles, ownership, collaboration, and sharing.
- Billing, payments, subscriptions, invoices, credits, refunds, or financial data.
- Data deletion, export, import, retention, migration, backup, restore, and audit logs.
- Generated content that can be sent, published, executed, or used for decisions.
- External email, SMS, notifications, webhooks, APIs, and third-party writes.
- Compliance, privacy, legal, safety, security, and production deployment changes.

For each high-risk change, document: trigger, owner, required review, required verification, rollback/mitigation, and user-visible impact.

## Testing and CI/CD

### Test Strategy

- Use the smallest meaningful verification for narrow changes and broader checks for shared behavior, cross-boundary contracts, data migrations, permissions, or user-facing workflows.
- Unit tests cover pure logic, validation, permission helpers, transforms, and edge cases.
- Integration tests cover API/data boundaries, storage, external-service adapters, background work, and role checks when tooling exists.
- End-to-end or manual walkthroughs cover critical user flows, destructive actions, publishing/sending, onboarding, checkout, collaboration, and generated-content review.
- UI verification covers responsive layout, overflow, keyboard access, loading/error/empty states, and main workflow completion.

### Required Checks

- Existing repository commands: [lint/typecheck/test/build/e2e/manual checks or not applicable].
- Missing command policy: if a needed command does not exist, record it as an open question or future implementation task instead of inventing a fake command.
- Evidence must include command, result, and any skipped checks with reason.

### GitHub Actions CI

- Use the repository's existing CI platform if present.
- If no CI exists, record CI setup as a future implementation task; do not create workflow files during kickoff unless explicitly requested.
- For future GitHub Actions CI, default to pull requests and pushes to the default branch.
- Use least-privilege permissions; start with `contents: read` and add only documented permissions.
- Do not expose production or customer secrets to pull-request workflows.

### Pull Request Gates

- Required reviewers: [Owner/team/role or not applicable].
- Required checks: [Commands/checks or not applicable].
- High-risk approval: [Extra owner/security/legal/product approval or not applicable].
- Temporary exceptions require owner, reason, expiry, and follow-up task.

### CD and Release Policy

- Deployment trigger: [Manual/CI/platform/default branch/not applicable].
- Required environment approvals: [Reviewers/environments/not applicable].
- Rollback or mitigation: [Rollback command, feature flag, restore plan, or not applicable].
- Release evidence: [What must be recorded before/after release.]

## Change Management

- Record durable architecture decisions as ADRs when they affect boundaries, data, security, integration, cost, deployment, or long-term maintainability.
- Link implementation work to the relevant feature spec, issue, PR, ADR, or context section when those artifacts exist.
- Record migrations, rollout steps, compatibility concerns, and rollback plans before executing high-risk changes.
- Communicate user-visible behavior changes, breaking changes, permission changes, and data migrations through the project's approved channel.

## Issue Ticket and PR Traceability

- Feature work should trace from context or spec to implementation and verification.
- PRs or implementation summaries should mention the relevant context files and any updated decisions.
- High-risk work must include verification evidence and approval evidence.
- Exceptions must include owner, reason, expiry, and follow-up.

## Compliance Applicability

- Record whether `context/compliance.md` exists, is required later, or is not applicable.
- If compliance is not applicable, record the decision, reason, reviewer or assumption, and date/session here.
- Do not assert compliance without authoritative policy, reviewer, or evidence.

## Open Governance Questions

- [Question, owner, due point, and implementation impact.]
```
