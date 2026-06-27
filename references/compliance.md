# Compliance Blueprint

Use this blueprint when the creation triggers below apply.
Create `context/compliance.md` for in-scope projects.
For out-of-scope projects, record a concise not-applicable decision in `context/governance.md` or `context/progress-tracker.md`.
This file is an implementation constraint record, not legal advice. Do not assert compliance without an authoritative policy, reviewer, or documented evidence.

## Creation Triggers

Create `context/compliance.md` when the selected mode is `strict`, or when the project touches finance, healthcare, education, privacy-sensitive data, customer-owned data, cross-border data, regulated workflows, legal/company policy constraints, model/vendor data restrictions, or explicit compliance review.

If compliance is not in scope, record who made that assumption or what evidence supports the not-applicable decision.

```md
# Compliance

This file records compliance applicability, data constraints, review gates, evidence requirements, and open questions for implementation.

## Applicability

- **Mode**: [strict / standard with compliance trigger / lightweight with compliance trigger]
- **Relevant domains**: [Privacy / finance / healthcare / education / customer data / cross-border / company policy / other / not applicable]
- **Applicable regulations, contracts, or policies**: [Name only when known; otherwise mark unknown.]
- **Authoritative owner or reviewer**: [Legal/security/privacy/product/customer owner or unknown.]
- **Not-applicable decisions**: [Decision, rationale, reviewer or assumption, and date/session.]

## Data Classification

| Data Type | Owner | Sensitivity | Source | Storage Location | Retention | Access Rules | Notes |
| --------- | ----- | ----------- | ------ | ---------------- | --------- | ------------ | ----- |
| [Data type] | [Owner] | [Public/Internal/Customer-owned/Private/Regulated/Secret] | [Source] | [Location or unknown] | [Retention or unknown] | [Who can read/write/export/delete] | [Notes] |
| [Data type] | [Owner] | [Public/Internal/Customer-owned/Private/Regulated/Secret] | [Source] | [Location or unknown] | [Retention or unknown] | [Who can read/write/export/delete] | [Notes] |

## Regulated and Customer Data

- Collect only data needed for the documented product flow.
- Define consent, notice, purpose, owner, and retention before collecting sensitive, regulated, or customer-owned data.
- Sensitive data reads, exports, deletes, and permission changes require owner review.
- Logs, analytics, test fixtures, screenshots, prompts, and support artifacts must not include sensitive data unless policy explicitly permits it.
- Deletion, export, correction, audit, and retention workflows must be documented before implementation when users or customers have those rights.
- **Project-specific constraints**: [Rules, reviewer, or open question.]

## Cross-Border Data

- Identify where users, customers, infrastructure, vendors, backups, logs, and support access may be located.
- Do not assume cross-border transfer is allowed; record region, vendor, residency, and approval requirements.
- If residency or transfer rules are unknown, block implementation choices that would make reversal expensive.
- **Allowed regions**: [Regions or unknown.]
- **Restricted transfers**: [Data types, destinations, vendors, or unknown.]
- **Required approvals**: [Owner/reviewer/evidence or unknown.]

## AI Coding Restrictions

- Do not include secrets, production data, unrestricted customer data, private internal documents, or regulated records in prompts, logs, screenshots, generated examples, or test fixtures.
- Use synthetic, anonymized, or sanitized data for examples and tests.
- Generated content that affects users, customers, compliance, legal, financial, healthcare, education, or safety decisions requires human review before use.
- Record model/vendor restrictions when policy, contract, or data class limits where data may be processed.
- **Allowed AI inputs**: [Data classes or sources.]
- **Prohibited AI inputs**: [Data classes or sources.]
- **Model/vendor constraints**: [Approved vendors, regions, retention settings, or unknown.]

## Required Approvals and Evidence

- Compliance-impacting changes require a named reviewer before implementation or merge.
- Evidence should include the relevant policy or decision source, reviewer, date/session, verification performed, and remaining risk.
- Temporary exceptions require owner, reason, expiry, compensating control, and follow-up task.
- **Required reviewers**: [Legal/security/privacy/customer/product owner or not applicable.]
- **Required evidence**: [Policy links, approval notes, test results, audit log, DPIA/security review, or not applicable.]

## Implementation Constraints

- Auth, permissions, retention, deletion, export, audit, logging, analytics, data sharing, and vendor integrations must follow the classifications above.
- Do not add new data collection, third-party processing, cross-border transfer, or AI processing without updating this file.
- If a compliance question is unresolved, choose the least data-exposing implementation path and record the blocker.

## Open Compliance Questions

| Question | Owner | Due Point | Implementation Impact |
| -------- | ----- | --------- | --------------------- |
| [Question] | [Owner or unknown] | [Before design/build/release] | [What is blocked or constrained] |
```
