#!/usr/bin/env bash
set -euo pipefail

find . -name SKILL.md -not -path './.git/*' -not -path './node_modules/*' | sed 's|^\./||' | sort
