# Agents Guidance

This repository contains a small static PWA for sharing location via SMS. The documents in this repo are structured as follows:

- `PRD.md` — primary source of truth for feature requirements and acceptance criteria.
- `README.md` — user-facing repository overview and instructions.
- `AGENTS.md` — guidance for automated agents and reviewers working on this codebase.

## Purpose

Agents should use `PRD.md` to understand the product goals, requirements, scope, and behavior before making changes.

## Agent Responsibilities

- Preserve the single source of truth in `PRD.md`.
- Keep `README.md` aligned with implemented behavior.
- Update `AGENTS.md` when the repo structure or agent-guidance changes.
- Avoid adding backend complexity: this repo is intentionally static and client-only.

## Repo Overview

### Key files

- `location-share.html` — app UI and geolocation + SMS logic.
- `manifest.json` — PWA metadata.
- `sw.js` — service worker caching strategy.

### What to change

- If UI behavior changes, update both `location-share.html` and `README.md`.
- If feature scope changes, update `PRD.md` first and then reflect the change in `README.md`.
- If caching assets or PWA metadata changes, ensure `sw.js` and `manifest.json` remain consistent.

## Review Checklist for Agents

1. Does the implementation match the feature list in `PRD.md`?
2. Is the README still correct for installation and usage?
3. Is the service worker caching the expected app assets?
4. Are new assets or scripts referenced in the manifest or HTML?
5. Is the change consistent with a static, client-only PWA?

## Constraints

- Do not introduce a backend service or external data store.
- Keep the app simple and mobile-first.
- Use the `sms:` URI only for user-initiated sending.
- Maintain offline app-shell caching without complex routing.
