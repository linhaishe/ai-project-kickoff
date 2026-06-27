# AI Project Kickoff Skill

This repository publishes one model-invoked skill from `skills/ai-project-kickoff/`.

## Release Package

- `skills/ai-project-kickoff/SKILL.md` is the skill entry point.
- `skills/ai-project-kickoff/references/` contains runtime blueprints. Every file here must be safe for an agent to read while generating a new project context package.
- `skill-design/` contains author notes and source examples. Do not make runtime steps depend on it.
- `.claude-plugin/plugin.json` exposes the skill for Claude-style plugin installers.
- `.codex-plugin/plugin.json` exposes the `skills/` directory for Codex plugin installers.

## Maintenance Rules

- Keep every required or conditional output in `SKILL.md` mapped to a packaged blueprint.
- Do not put old project facts, proprietary tokens, old progress states, or source-example details in runtime `references/`.
- Do not copy `references/*.md` paths into fenced generated-output templates unless the generated project will actually contain those paths.
- Update `README.md` when outputs, installation, or runtime references change.
- Run `scripts/check-release.sh` before publishing.
