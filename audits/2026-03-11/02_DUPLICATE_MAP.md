# DUPLICATE MAP — Phoenix Electric GitHub Ecosystem
## Forensic Audit 2026-03-11

---

## DUPLICATION 1: THE GATEWAY TRIPLE (CONFIRMED)

**Three repos contain the same Node.js gateway:**

| File | phoenix-echo-gateway | phoenix-echo-bot | Match |
|------|---------------------|-----------------|-------|
| src/index.js (1,285 lines) | 3f44353e | 3f44353e | **IDENTICAL** |
| src/agent.js (257 lines) | 90e55f42 | 90e55f42 | **IDENTICAL** |
| src/tools.js (411 lines) | e488d11a | e488d11a | **IDENTICAL** |
| src/session.js (461 lines) | cc62ca97 | cc62ca97 | **IDENTICAL** |
| src/config.js (357 lines) | e42ee720 | e42ee720 | **IDENTICAL** |
| src/channels-integration.js | c0a3f63f | c0a3f63f | **IDENTICAL** |
| src/cron.js (414 lines) | 07b6783c | 07b6783c | **IDENTICAL** |
| src/logger.js (228 lines) | de111619 | de111619 | **IDENTICAL** |
| src/prompt.js (135 lines) | 1e95280c | 1e95280c | **IDENTICAL** |
| src/runbooks.js (198 lines) | 6a383794 | 6a383794 | **IDENTICAL** |
| src/auth.js | 01f28420 | 7e0366e2 | **DIVERGED** — gateway has OAuth beta header |
| src/brain-blueprint.js | ad6776e5 | 9b95705d | **DIVERGED** — minor string diffs |
| package.json | 1a2c9d89 | 1a2c9d89 | **IDENTICAL** |

**Canonical:** Phoenix-Echo-Gateway (has OAuth hardening)
**Archive:** phoenix-echo-bot (older auth, misleading name)

Additionally, `phoenix-echo-gateway` has INTERNAL duplication:
- `src/channels/` and `src/channels-vps-nested/` are byte-for-byte identical

And a THIRD PARTIAL COPY exists inside `phoenix-ai-core`:
- `imports/prodo_live_snapshot_2026-03-06/archive/root_cleanhouse/Phoenix-Echo-Gateway-main/`

---

## DUPLICATION 2: THE SF TOOLS OVERLAP

**Two repos independently built Service Fusion tools:**

| Aspect | service-fusion | Phoenix-ai-core-staging |
|--------|---------------|------------------------|
| Type | Plugin wrapper (docs/commands) | Full MCP server (code) |
| Tools defined | 23 active + 34 deprecated | 23 active + 35 deprecated stubs |
| Executable code | NONE — points to staging binary | 7,000+ lines TS |
| .mcp.json | Hardcodes path to staging's dist/ | Self-contained |
| Location of binary | staging/packages/servicefusion-mcp/dist/ | Same |

**service-fusion is a SHELL that depends on staging.** They are not true duplicates — they're a doc layer and a code layer that should be unified.

**Additional SF overlap:** `phoenix-builder-space-knowledge/src/integrations/servicetitan.js` contains the predecessor ST integration code (1,587 lines).

---

## DUPLICATION 3: PHOENIX-COMMAND-APP COPIES

**The React PWA exists in 3 locations:**

| Location | Status |
|----------|--------|
| `~/phoenix-command-app/` | CANONICAL — standalone repo on GitHub |
| `~/GitHub/phoenix-electric-miniapp/phoenix-command-app/` | FULL COPY embedded in miniapp |
| `~/GitHub/phoenix-ai-core-staging/packages/phoenix-command/` | ENHANCED COPY (1,848 lines App.jsx vs 265 in canonical) |

**The staging version is MORE complete than the standalone repo.**

---

## DUPLICATION 4: POWERSHELL RUNBOOKS

**The same ~10 PowerShell runbooks appear in:**

| Location | Lines | ServiceTitan Contamination |
|----------|-------|---------------------------|
| phoenix-echo-gateway/automation/runbooks/ | 9,527 | YES — TechDailyReports, WeeklyReport |
| phoenix-echo-bot/automation/runbooks/ | 9,493 | YES — same files |
| phoenix-ai-core-staging/runbooks/ | 14 scripts | Partial |
| phoenix-ai-core/production/.../runbooks/ | 14 scripts | Partial |

**No single canonical location for runbooks.** They're scattered across 4 repos.

---

## DUPLICATION 5: TRIPLE-LAYERED STAGING CODE IN PHOENIX-AI-CORE

**The 7-package monorepo exists 3 times INSIDE phoenix-ai-core:**
1. `production/phoenix-ai-core/packages/` — promoted candidate
2. `imports/prodo_live_snapshot_2026-03-06/Phoenix-ai-core-staging-main/packages/` — raw import
3. `imports/.../archive/root_cleanhouse/.../PHOENIX_SANDBOX_20260304/.../packages/` — quarantined dump

Plus the canonical version in `~/GitHub/phoenix-ai-core-staging/packages/`.

**FOUR COPIES of the same monorepo exist across the filesystem.**

---

## DUPLICATION 6: PHOENIX_UNIFIED_PROD 545MB EMBEDDED CLONE

`~/GitHub/PHOENIX_UNIFIED_PROD_REPO/` contains:
- `Phoenix-ai-core-staging-main/` — 545MB FULL COPY of staging with node_modules

This is a FIFTH copy of the staging code.

---

## DUPLICATION SEVERITY SUMMARY

| Duplication | Copies | Risk | Action |
|-------------|--------|------|--------|
| Gateway src/ code | 3+ repos | HIGH — drift already happening (auth.js) | Pick canonical, ARCHIVE rest |
| SF MCP tools | 2 repos (shell + code) | MEDIUM — unclear which is canonical | Merge into one |
| Phoenix command app | 3 locations | MEDIUM — staging version is AHEAD | Reconcile, pick canonical |
| PowerShell runbooks | 4 repos | HIGH — ST contamination in some | Pick canonical home |
| Staging monorepo | 4-5 copies | CRITICAL — 545MB waste, confusion | Prune to ONE |
