# Compliance Blueprint

Use this blueprint only when the selected mode is `strict`, relevant regulations or company policies apply, or the project handles finance, healthcare, education, privacy-sensitive, customer-owned, or cross-border data. For an in-scope project, create `context/compliance.md`; otherwise record a concise not-applicable decision in `context/governance.md`.

```md
# Compliance

## Applicability
- Applicable regulations, contractual obligations, and company policies: [items]
- Not-applicable decisions and rationale: [items]

## Data Classification
- Data types, owner, sensitivity, retention, and storage location: [items]

## Regulated And Customer Data
- Collection, use, access, deletion, and audit constraints: [rules]

## Cross-Border Data
- Regions, transfer restrictions, residency requirements, and approvals: [rules]

## AI Coding Restrictions
- Allowed inputs, prohibited inputs, model or vendor constraints, and redaction rules: [rules]

## Required Approvals And Evidence
- Required reviewers, legal or security sign-off, and audit evidence: [rules]

## Open Compliance Questions
- Question, owner, due point, and implementation impact: [items]
```

This file is an implementation constraint record, not legal advice. Do not assert compliance without an authoritative policy, reviewer, or documented evidence.
