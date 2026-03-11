# CONSOLIDATION PLAN — Phoenix Electric 18→7+1 Repo Unification
## Forensic Audit 2026-03-11 | ARCHITECT + WB Reviewed
## STATUS: DRAFT — WAITING_ON_SHANE for Gateway Decision + Staging Decision

---

## DECISIONS SHANE MUST MAKE BEFORE EXECUTION

### DECISION 1: Gateway Repo Fate
Phoenix-Echo-Gateway is a standalone gateway with 28.7K LOC. Options:
- **A) Keep Phoenix-Echo-Gateway as repo #8** (separate from phoenix-ai-core) — gateway is its own thing
- **B) Merge gateway src/ into phoenix-ai-core** — one repo to rule them all
- **RECOMMENDATION: A** — The gateway and the business automation layer serve different purposes

### DECISION 2: Staging vs Core
phoenix-ai-core has identity/skills/docs. phoenix-ai-core-staging has the actual production code.
- **A) Rename staging → core** (archive current core's unique assets first)
- **B) Merge staging packages INTO core/production/** (already partially done)
- **C) Keep both** with clear scope split (core = identity, staging = code)
- **RECOMMENDATION: A** — Staging IS the canonical code. Current core is mostly an archive dump.

### DECISION 3: PowerShell Runbook Home
10 PowerShell scripts (9.5K lines) exist in 4 repos. Where do they canonically live?
- **A) phoenix-ai-core** (business automation belongs with the core)
- **B) service-fusion** (they're operational scripts)
- **C) Separate automation/ directory in whatever becomes canonical core**
- **RECOMMENDATION: C** — in whichever repo becomes the canonical phoenix-ai-core

### DECISION 4: phoenix-showcase
- **A) Keep as 8th active repo** (deploy via GitHub Pages)
- **B) Archive** (it's just 2 files)
- **RECOMMENDATION: A** — it's the public story

---

## PHASE 1: IMMEDIATE SAFETY (Before ANY moves)

### PR-01: Fix PhoenixMailCourier Expiration (CRITICAL — 17 days)
- **Target:** phoenix-command-app
- **Action:** Renew Azure App Registration "Phoenix Mail Courier" before March 28
- **Files:** src/auth/msalConfig.js (update Client ID if rotated)
- **Risk:** If not done, field app SSO breaks
- **WAITING_ON_SHANE:** Is this already handled? Check Azure Portal.

### PR-02: Fix 192GB RAM Error
- **Target:** phoenix-command-app/README.md
- **Action:** Lines 47 and 383: change "192GB" → "96GB"
- **Risk:** None

### PR-03: Remove "Built on OpenClaw" from Teams Manifest
- **Target:** phoenix-ai-core/teams-app/manifest.json
- **Action:** Line 18: remove "Built on OpenClaw." from description
- **Risk:** None — cosmetic but public-facing

### PR-04: Secure Chrome Passwords File
- **Action:** MOVE ~/GitHub/Documents/sharepoint/Chrome Passwords.csv to secure location
- **Risk:** CRITICAL — plaintext credentials in ~/GitHub/
- **NOT A GIT OPERATION — manual file move required**

---

## PHASE 2: CONTAMINATION CLEANUP

### PR-05: Complete ServiceTitan Purge (phoenix-ai-core-staging)
- **Branch:** refactor/purge-servicetitan (already exists)
- **Actions:**
  1. ARCHIVE entire `servicetitan/` directory (14 files, 8,115 lines) → phoenix-archive
  2. ARCHIVE `mcp/tool-registry.ts` and `mcp/tool-executor.ts` (deprecated, ST imports)
  3. Clean `index.ts` and `function/index.ts` — remove ST→SF alias exports
  4. ARCHIVE `configs/mcp-servers/servicetitan-config.json`
  5. ARCHIVE `claude_skills/servicetitan/SKILL.md`
  6. ARCHIVE `dist/servicetitan/` compiled output
- **Verify:** `grep -ri servicetitan src/ packages/ --include="*.ts" --include="*.js"` returns 0

### PR-06: Rename Misnamed ST Files (phoenix-ai-core)
- **Actions:**
  1. Rename `configs/mcp-servers/servicetitan-config.json` → `servicefusion-config.json`
  2. Rename `configs/claude/contexts/servicetitan.md` → `servicefusion.md`
- **Verify:** Content unchanged, only filenames

### PR-07: Purge OpenClaw from phoenix-ai-core
- **Actions:**
  1. ARCHIVE `.clawhub/` directory
  2. ARCHIVE `vps-sync/clawrouter/` package
  3. Clean 36 skills in `skills/` — remove `openclaw` metadata from package.json files
  4. Remove OpenClaw text from `public-vps/pages/docs.js` and `docs-vps.js` in gateway
- **Verify:** `grep -ri openclaw --include="*.json" --include="*.js" --include="*.ts"` returns 0

### PR-08: Clean PowerShell ST Contamination
- **Files:** TechnicianDailyReports.ps1, WeeklyReport.ps1, Process-Customers.ps1
- **Action:** Replace `api.servicetitan.io` → `api.servicefusion.com`, update auth patterns
- **Risk:** HIGH — these may still be called by Azure Automation. Verify before editing.
- **WAITING_ON_SHANE:** Are these PowerShell runbooks still in active use?

---

## PHASE 3: ARCHIVE OPERATIONS

### Archive Order (execute with phoenix-filesystem methodology):

| Order | Repo | Archive Tag | Unique Assets to Preserve |
|-------|------|-------------|---------------------------|
| 1 | rexel | archive/2026-03-11/rexel/empty-repo | None (empty) |
| 2 | phoenix-echo-bot | archive/2026-03-11/echo-bot/gateway-twin | brain-blueprint.js, channel branches, runbooks |
| 3 | gateway | archive/2026-03-11/gateway/vps-dashboard-stub | 3 JS/CSS files (merge into echo-gateway first) |
| 4 | phoenix-electric-miniapp | archive/2026-03-11/miniapp/command-app-copy | miniapp/ Telegram bot logic |
| 5 | phoenix-builder-space-knowledge | archive/2026-03-11/builder-space/predecessor | SP scripts, Bicep IaC, SDK, TAPROOT playbooks |
| 6 | phoenix-production-test | archive/2026-03-11/prod-test/test-scaffold | Integration test modules |
| 7 | PHOENIX_UNIFIED_PROD | archive/2026-03-11/unified-prod/dead-workspace | AGENT_BRIDGE_LEDGER, SHARED_OPS_LEDGER, docs/ |
| 8 | phoenix-sharepoint-theme | archive/2026-03-11/sp-theme/branding-assets | index.html, PS1 script, assets/ |

### For EACH archive operation:
1. Read the repo fully (DONE — this audit)
2. Copy unique assets to canonical target repo FIRST
3. git tag the repo: `archive/2026-03-11/[repo]/[description]`
4. Add README.md to archive folder explaining provenance
5. Push archive tag
6. Move repo content to phoenix-archive

---

## PHASE 4: REPO RESTRUCTURE

### After archiving, the 7+1 repos are:

| Repo | Canonical Scope |
|------|----------------|
| **phoenix-ai-core** | Identity + canonical business automation code + MCP servers |
| **Phoenix-Echo-Gateway** | Gateway server + dashboard + channel adapters (if Decision 1 = A) |
| **service-fusion** | Claude Code plugin wrapper for SF MCP (docs + commands + skills) |
| **twin-peaks** | Architecture bible + runbooks + playbooks + research |
| **phoenix-gauntlet** | Multi-agent command center + swarm templates |
| **phoenix-command-app** | React PWA for field operations |
| **build-ledger** | Decision log + swarm coordination |
| **phoenix-filesystem** | Migration tooling + manifests + operating rules |
| **phoenix-archive** | ALL archived code with provenance |

### Additional repo decisions:
- **phoenix-showcase:** Keep as GitHub Pages site (low maintenance)
- **electrical-guru:** Push to GitHub, register as official plugin

---

## PHASE 5: GOVERNANCE LOCK

After all moves complete:
1. Write REPO_GOVERNANCE.md (permanent constitution)
2. Update all CLAUDE.md files to reference canonical locations
3. Lock 7-repo boundary: any new repo requires Shane's explicit approval
4. Set up service-fusion .mcp.json to use relative or env-based paths
5. Update all cross-repo references found by Pathfinder

---

## EXECUTION TIMELINE

This plan uses the phoenix-filesystem methodology:
- Every file move gets a TX-#### identifier
- Every move is copy-verify-log (SHA-256 checked)
- Nothing executes without Shane's GO on the Phase

**Estimated PRs:** 15-20 total across all phases
**Dependencies:** PR-01 (expiring secret) is TIME-CRITICAL and independent of everything else
