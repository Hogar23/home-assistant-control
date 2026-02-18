# OpenClaw Skill: Home Assistant Control

OpenClaw skill for controlling and inspecting Home Assistant via REST API.

## Features

- Safe service execution (`ha_safe_action.sh`) with guardrails
- Local-first URL routing with public fallback
- Entity discovery/search (`ha_entity_find.sh`)
- Entity map generation (`fill_entities_md.sh`)
- Naming-context aliases for natural commands (`references/naming-context.md`)
- Environment self-check (`self_check.sh`)

## Runtime Requirements

- bash
- curl
- jq

## Configuration

Use private env file (recommended):

- `~/.openclaw/private/home-assistant.env`
- or set `HA_ENV_FILE=/absolute/path/to/env`

Required:

- `HA_TOKEN`
- URL strategy:
  - `HA_URL_PUBLIC` (cloud setups; enough by itself)
  - optional `HA_URL_LOCAL` (tried first when override not set)
  - optional `HA_URL` (explicit override)

### Example private env file

Create `~/.openclaw/private/home-assistant.env`:

```env
HA_TOKEN=YOUR_LONG_LIVED_ACCESS_TOKEN
HA_URL_PUBLIC=https://your-home.example.com
# Optional local URL (tried first when HA_URL is not set)
# HA_URL_LOCAL=http://homeassistant.local:8123
# Optional explicit override (no fallback)
# HA_URL=http://homeassistant.local:8123
```

## Main Scripts

- `scripts/self_check.sh`
- `scripts/ha_call.sh`
- `scripts/ha_safe_action.sh`
- `scripts/ha_entity_find.sh`
- `scripts/fill_entities_md.sh`
- `scripts/save_naming_context.sh`

## Package Artifact

This repo includes `home-assistant-control.skill` for direct distribution.
