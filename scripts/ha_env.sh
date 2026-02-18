#!/usr/bin/env bash
# Load Home Assistant env vars from an external file (optional).
# Behavior:
# - Loads only when HA_ENV_FILE is explicitly set.
# - Does not read default files implicitly.

set -euo pipefail

ENV_FILE="${HA_ENV_FILE:-}"

if [[ -n "$ENV_FILE" ]]; then
  if [[ ! -f "$ENV_FILE" ]]; then
    echo "Error: HA_ENV_FILE is set but file does not exist: $ENV_FILE" >&2
    exit 1
  fi

  # Export values from env file to current shell.
  set -a
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +a
fi
