#!/usr/bin/env bash
# Load Home Assistant env vars from an external file (optional).
# Priority:
# 1) HA_ENV_FILE (if set)
# 2) ~/.openclaw/private/home-assistant.env (if exists)

set -euo pipefail

ENV_FILE="${HA_ENV_FILE:-$HOME/.openclaw/private/home-assistant.env}"

if [[ -f "$ENV_FILE" ]]; then
  # Export values from env file to current shell.
  set -a
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +a
fi
