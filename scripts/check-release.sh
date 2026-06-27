#!/usr/bin/env bash
set -euo pipefail

required=(
  "skills/ai-project-kickoff/SKILL.md"
  "README.md"
  "LICENSE"
  ".claude-plugin/plugin.json"
  ".codex-plugin/plugin.json"
  "skills/ai-project-kickoff/references/agents.md"
  "skills/ai-project-kickoff/references/project-overview.md"
  "skills/ai-project-kickoff/references/architecture-context.md"
  "skills/ai-project-kickoff/references/design.md"
  "skills/ai-project-kickoff/references/implementation-rules.md"
  "skills/ai-project-kickoff/references/progress-tracker.md"
  "skills/ai-project-kickoff/references/wireframes.md"
  "skills/ai-project-kickoff/references/user-flow.md"
  "skills/ai-project-kickoff/references/screen.md"
  "skills/ai-project-kickoff/references/governance.md"
  "skills/ai-project-kickoff/references/compliance.md"
  "skills/ai-project-kickoff/references/adr-template.md"
)

for file in "${required[@]}"; do
  if [ ! -f "$file" ]; then
    echo "missing required file: $file" >&2
    exit 1
  fi
done

if find . -name .DS_Store -print -quit | grep -q .; then
  echo "remove .DS_Store files before publishing" >&2
  exit 1
fi

if grep -R -n -E 'Ghost AI|Stripe|Feature 29|code-standards|ai-workflow-rules|working-issue' skills/ai-project-kickoff README.md; then
  echo "found old project or retired runtime-reference terms" >&2
  exit 1
fi

if grep -R -n -E 'using `references/screen\.md`|creation triggers in `references/compliance\.md`' skills/ai-project-kickoff/references; then
  echo "found runtime reference path leaked into generated blueprint text" >&2
  exit 1
fi

git diff --check

echo "release package checks passed"
