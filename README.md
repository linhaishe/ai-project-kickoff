# AI Project Kickoff

AI Project Kickoff is an agent skill for turning a PRD, product brief, rough product idea, or existing repository into a durable pre-implementation context package.

Use it when you want an agent to create the project docs future sessions need before implementation starts: product overview, architecture context, design direction, progress state, implementation rules, wireframes, and optional governance records.

## Install

### skills installer

Install from GitHub with the skills installer:

```bash
npx skills@latest add miamiamia/ai-project-kickoff
```

Select the `ai-project-kickoff` skill when prompted.

### Claude-style skill/plugin installers

This repository includes `.claude-plugin/plugin.json`, modeled after the structure used by [`mattpocock/skills`](https://github.com/mattpocock/skills).

If your installer supports GitHub plugin repositories, install this repo and select the `ai-project-kickoff` skill.

### Codex plugin installers

This repository also includes `.codex-plugin/plugin.json` for Codex plugin packaging. The manifest exposes the `skills/` directory, with `ai-project-kickoff` as the published skill.

## When To Use

- Starting a new product or app from a rough idea.
- Turning a PRD or product brief into implementation-ready context.
- Preparing an existing repo for AI-assisted work when docs are missing or stale.
- Creating `AGENTS.md` plus durable `context/*.md` handoff files.
- Capturing architecture, UI direction, progress state, implementation rules, wireframes, and governance before coding.

## What It Creates

Required outputs:

- `AGENTS.md`
- `context/project-overview.md`
- `context/architecture-context.md`
- `context/design.md`
- `context/progress-tracker.md`
- `context/implementation-rules.md`
- `prototypes/wireframes.md`

Conditional outputs:

- `prototypes/user-flow.md`
- `prototypes/screens/*.md`
- `context/governance.md`
- `context/compliance.md`
- `context/adr/NNNN-short-title.md`

## Runtime References

The `skills/ai-project-kickoff/references/` directory contains runtime blueprints. These files are safe for the agent to read while generating a new project context package:

- `agents.md`
- `project-overview.md`
- `architecture-context.md`
- `design.md`
- `implementation-rules.md`
- `progress-tracker.md`
- `wireframes.md`
- `user-flow.md`
- `screen.md`
- `governance.md`
- `compliance.md`
- `adr-template.md`

The `skill-design/` directory contains author notes and source examples used while designing the skill. Runtime steps should not depend on that directory.

## Example Prompts

```text
Use ai-project-kickoff to create a context package for this PRD.
```

```text
Initialize this repo for AI-assisted implementation with AGENTS.md, architecture, design, progress, and implementation rules.
```

```text
Turn this rough product idea into a pre-implementation handoff package.
```

## Release Checks

Before publishing, run:

```bash
bash scripts/check-release.sh
```

The check verifies required files, prevents `.DS_Store` from entering the package, blocks old source-example terms from runtime content, and runs `git diff --check`.

## License

MIT
