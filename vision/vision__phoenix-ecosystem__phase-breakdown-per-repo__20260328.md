# Phase Breakdown — Phase by Phase, Then Per-Repo
**Source:** Apple Notes, created 2026-03-28

---

## Phase Chain — What Happens When

### Phase 0: Gold Snapshot (15 min)
- Snapshot all 24 repos to ~/Documents/GOLD_SNAPSHOT_2026-03-28/
- SHA256 manifest for rollback
- Gate: shasum -c manifest.sha256 all OK

### Phase 1: Governance Lock (2-3 hrs)
- Shane fills TIER 1 decisions (10 items from DECISION_LIST.md)
- Merge 24 governance PRs (Product Bible + Build Doc + CODEOWNERS)
- Apply GitHub Topics to all 24 repos
- Gate: 24/24 docs on main, topics applied

### Phase 2: Security Remediation (3-4 hrs)
- Rotate 6 secrets (GAUNTLET_TOKEN, OpenClaw token, SF OAuth, Azure OIDC, M365, staging appKey)
- BFG history rewrite on 9 repos (Shane GO per force-push)
- .gitignore additions, git rm --cached on tracked secrets
- Enable org-wide secret scanning + push protection
- Gate: Zero CRITICAL findings, all rotated, scanning active

### Phase 3: Contracts Extraction (2-3 hrs)
- Create @phoenix/contracts shared types package in phoenix-ai-core-staging
- Extract duplicated types (keyvault, logger, SF types, auth types, MCP types)
- Wire 4 importing repos to use contracts instead of local copies
- Gate: Contracts build, all importing repos pass tests

### Phase 4: Pipeline Wiring (3-4 hrs)
- Reconnect bot → Gateway → Command App → Service Fusion
- Bot is ALREADY in Azure — this is reconnection
- Investigate "command-app" branch in miniapp before touching it
- Wire MCP hub (23 SF tools from current)
- Gate: End-to-end smoke test passes all 4 legs

### Phase 5A: Capability Hub Build (3-4 hrs)
- Restructure phoenix-plugins: add /skills/, /mcps/, /plugins/ dirs (D1)
- Extract from 5 repos into hub (D2 — extract BEFORE archive)
- Verify each extraction works in hub
- Gate: Hub directories exist, capabilities verified, ZERO source repos archived

### Phase 5B: Repo Archive + Consolidation (3-4 hrs, multi-session)
- Archive 5 extraction-source repos (ONLY after W5A-GATE)
- Seed phoenix-unified monorepo from PHOENIX_UNIFIED_PROD
- Subtree-migrate active repos into workspace
- Gate: Workspace builds, tests pass, source repos archived

### Phase 5C: Documentation Pass (1-2 hrs)
- SHOWCASE READMEs on 5 flagships (Phoenix-ECHO, Gateway, current, plugins, bot)
- STANDARD READMEs on all active repos
- MINIMAL-FROZEN READMEs on archives
- Gate: All READMEs match their tier

### Phase 6: CI Hardening (2-3 hrs, parallel with W5)
- Branch protection rulesets (18 active + 6 archive)
- GitHub Actions (guardian-no-delete, lint-and-test, secret-scan)
- Dependabot on all code repos
- Gate: Protection active, CI green, scanning enforced

---

## Per-Repo Breakdown — What Happens to Each Repo

| # | Repo | Phase 2 | Phase 3 | Phase 4 | Phase 5A | Phase 5B | Phase 5C | Phase 6 |
|---|------|---------|---------|---------|----------|----------|----------|---------|
| 1 | Phoenix-Echo-Gateway | BFG if needed | — | Pipeline hub (reconnect bot) | — | SOVEREIGN (no absorb) | SHOWCASE README | Guardian ruleset |
| 2 | Phoenix-ai-core-staging | .env cleanup | Contracts host | — | — | Subtree → unified | STANDARD README | Guardian ruleset |
| 3 | phoenix-ai-core | BFG (token in SETUP.md) | — | — | — | ARCHIVE (after review) | FROZEN README | Archive ruleset |
| 4 | Phoenix-ECHO | credentials.md remediation | — | — | — | SOVEREIGN forever | SHOWCASE README | Guardian ruleset |
| 5 | phoenix-plugins | — | — | — | BECOMES HUB (D1) | SOVEREIGN | SHOWCASE README | Guardian ruleset |
| 6 | PHOENIX_UNIFIED_PROD | — | — | — | — | Becomes monorepo shell | STANDARD README | Archive → Guardian |
| 7 | phoenix-command-app | Hardcoded GUIDs | — | Pipeline wiring | — | Subtree → unified | STANDARD README | Guardian ruleset |
| 8 | phoenix-electric-miniapp | Hardcoded GUIDs | — | Pipeline wiring | — | Subtree → unified | STANDARD README | Guardian ruleset |
| 9 | phoenix-echo-bot | — | — | Pipeline wiring (reconnect Azure) | — | Archive w/ MOVED.md | SHOWCASE README | Guardian ruleset |
| 10 | phoenix-sharepoint-theme | — | — | — | — | Keep standalone | STANDARD README | Guardian ruleset |
| 11 | current (PCS) | — | — | Pipeline (SF MCP) | — | Subtree → unified | SHOWCASE README (flagship) | Guardian ruleset |
| 12 | phoenix-365 | — | Contracts consumer | — | EXTRACT M365 → hub | ARCHIVE (after W5A) | FROZEN README | Archive ruleset |
| 13 | service-fusion | — | — | — | EXTRACT SF → hub | ARCHIVE (after W5A) | FROZEN README | Archive ruleset |
| 14 | rexel | — | — | — | EXTRACT Rexel → hub | ARCHIVE (after W5A) | FROZEN README | Archive ruleset |
| 15 | phoenix-builder-space-knowledge | Credential audit | — | — | — | Subtree → unified | STANDARD README | Guardian ruleset |
| 16 | phoenix-gauntlet | Tailscale IP fix | — | — | EXTRACT → hub | ARCHIVE (after W5A) | FROZEN README | Archive ruleset |
| 17 | phoenix-production-test | — | — | — | — | ARCHIVE (Shane decision) | FROZEN README | Archive ruleset |
| 18 | phoenix-filesystem | — | — | — | — | ARCHIVE (Shane decision) | FROZEN README | Archive ruleset |
| 19 | phoenix-archive | credentials.md review | — | — | — | SOVEREIGN (append-only) | FROZEN README | Archive ruleset |
| 20 | build-ledger | — | — | — | — | SOVEREIGN | STANDARD README | Guardian ruleset |
| 21 | twin-peaks | Partial remediation | — | — | — | SOVEREIGN | STANDARD README | Guardian ruleset |
| 22 | phoenix-showcase | — | — | — | — | Archive or seed (Shane) | STANDARD README | Archive ruleset |
| 23 | gateway | — | — | — | — | ARCHIVE (absorb 4 files → Gateway first) | FROZEN README | Archive ruleset |
| 24 | phoenix-marketing | — | — | — | EXTRACT MCP → hub | ARCHIVE (after W5A) | FROZEN README | Archive ruleset |

---

## Disposition Summary

- **Sovereign (never absorbed):** Phoenix-ECHO, Phoenix-Echo-Gateway, twin-peaks, build-ledger, phoenix-plugins (hub), phoenix-archive
- **Absorbed into phoenix-unified:** ai-core-staging, command-app, miniapp, current, builder-space-knowledge
- **Extracted then archived (D2):** service-fusion, rexel, phoenix-365, phoenix-gauntlet, phoenix-marketing
- **Archived directly:** phoenix-ai-core, phoenix-echo-bot, gateway, phoenix-production-test, phoenix-filesystem, phoenix-showcase
- **Monorepo shell:** PHOENIX_UNIFIED_PROD → becomes phoenix-unified
