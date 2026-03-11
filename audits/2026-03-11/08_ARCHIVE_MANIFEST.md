# ARCHIVE MANIFEST — Phoenix Archive Repository Design
## Forensic Audit 2026-03-11 | Archivist Agent
## STATUS: COMPLETE — Preserve unique assets BEFORE archiving

---

## GOLDEN RULE: COPY FIRST, ARCHIVE SECOND

For every repo below:
1. Identify unique assets (files that exist NOWHERE else)
2. COPY unique assets to their canonical permanent home
3. VERIFY the copy (SHA-256 match per phoenix-filesystem methodology)
4. THEN archive the repo with provenance README

---

## REPO 1: phoenix-echo-bot

| Field | Value |
|-------|-------|
| **Path** | `~/GitHub/phoenix-echo-bot/` |
| **Total Files** | ~85 source files |
| **Archive Tag** | `archive/2026-03-11/echo-bot/gateway-twin` |
| **Why Archive** | Confirmed twin of Phoenix-Echo-Gateway (10/12 files MD5 identical) |

### Unique Assets to Preserve FIRST

| Asset | Path | Destination | Notes |
|-------|------|-------------|-------|
| PhoenixOps AI Brain docs | `docs/deep-research/PhoenixOps_AI_Brain/` (47 files) | phoenix-archive/echo-bot/ops-brain/ | ONLY COPY of complete ops specification |
| brain-blueprint.js | `src/brain-blueprint.js` (914 lines) | phoenix-archive/echo-bot/src/ | DIVERGES from gateway version (older Key Vault names) |
| Config variants | `config-studio.json`, `config-vps.json` | phoenix-archive/echo-bot/configs/ | Instance-specific configs |
| Channel branches | git branches with channel-specific code | Preserve via git tag | Check `git branch -a` before archiving |

### Duplicates (safe to archive without preserving)

- `src/` (10/12 files identical to Phoenix-Echo-Gateway)
- `automation/runbooks/` (identical to gateway's — gateway is canonical)

---

## REPO 2: gateway

| Field | Value |
|-------|-------|
| **Path** | `~/GitHub/gateway/` |
| **Total Files** | 3 files |
| **Archive Tag** | `archive/2026-03-11/gateway/vps-dashboard-stub` |
| **Why Archive** | Stub repo — 3 dashboard files only |

### Unique Assets to Preserve FIRST

| Asset | Path | Destination | Notes |
|-------|------|-------------|-------|
| ws-manager.js | `public-vps/core/ws-manager.js` | VERIFY vs Phoenix-Echo-Gateway | May be duplicate |
| icon-manager.js | `public-vps/core/icon-manager.js` | VERIFY vs Phoenix-Echo-Gateway | May be duplicate |
| design-system.css | `public-vps/css/design-system.css` | VERIFY vs Phoenix-Echo-Gateway | May be duplicate |

**ACTION:** Compare these 3 files against Phoenix-Echo-Gateway equivalents. If identical, archive without preserving. If unique, merge into gateway repo first.

---

## REPO 3: phoenix-electric-miniapp

| Field | Value |
|-------|-------|
| **Path** | `~/GitHub/phoenix-electric-miniapp/` |
| **Total Files** | ~50 source files |
| **Archive Tag** | `archive/2026-03-11/miniapp/command-app-copy` |
| **Why Archive** | Contains embedded phoenix-command-app copy + unique Telegram bot |

### Unique Assets to Preserve FIRST

| Asset | Path | Destination | Notes |
|-------|------|-------------|-------|
| Telegram bot logic | `miniapp/app.js` | phoenix-archive/miniapp/telegram/ | Core bot entry point |
| Bot commands | `miniapp/bot-commands.js` | phoenix-archive/miniapp/telegram/ | Command handler |
| Server handler | `miniapp/server-handler.js` | phoenix-archive/miniapp/telegram/ | Webhook handler |
| BotFather setup | `miniapp/BOTFATHER_SETUP.md` | phoenix-archive/miniapp/telegram/ | Deployment guide |
| Deployment doc | `miniapp/DEPLOYMENT.md` | phoenix-archive/miniapp/telegram/ | Setup instructions |

### Duplicates (safe to archive without preserving)

- `phoenix-command-app/` (43 files — confirmed duplicate of standalone repo)

---

## REPO 4: phoenix-builder-space-knowledge

| Field | Value |
|-------|-------|
| **Path** | `~/GitHub/phoenix-builder-space-knowledge/` |
| **Total Files** | ~305 source files |
| **Archive Tag** | `archive/2026-03-11/builder-space/predecessor` |
| **Why Archive** | Predecessor repo — superseded by staging, but contains unique knowledge |

### Unique Assets to Preserve FIRST

| Asset | Path | Destination | Notes |
|-------|------|-------------|-------|
| SharePoint scripts | `sharepoint-scripts/` (16 files) | phoenix-archive/builder-space/sharepoint/ | CRITICAL: includes customer_lookup_index.json (1700 customers), folder structure spec, email routing rules |
| ST integration research | `docs/service-titan-vision/` (17+ files with PNG diagrams) | phoenix-archive/builder-space/st-research/ | ONLY COPY of complete ST API integration research |
| Technical docs | `Technical Vision and Roadmap*.md`, `Phoenix_MCP_Tool_Interface_Spec.md` | phoenix-archive/builder-space/docs/ | Historical planning docs |
| Bicep IaC | `src/infrastructure/` (if present) | phoenix-archive/builder-space/iac/ | Azure infrastructure-as-code |
| Test suites | `tests/` (10 files) | phoenix-archive/builder-space/tests/ | Jest unit tests — reference value |

### Duplicates

- `src/integrations/servicetitan.js` (1,587 lines — predecessor of staging's SF code)
- `archive/mcp-vault/` = `mcp-inventory/` (internal duplicate)

---

## REPO 5: phoenix-production-test

| Field | Value |
|-------|-------|
| **Path** | `~/GitHub/phoenix-production-test/` |
| **Total Files** | ~35 source files |
| **Archive Tag** | `archive/2026-03-11/prod-test/test-scaffold` |
| **Why Archive** | Dormant test scaffold — 3 commits, integration test patterns worth preserving |

### Unique Assets to Preserve FIRST

| Asset | Path | Destination | Notes |
|-------|------|-------------|-------|
| Integration modules | `integrations/` (8 JS modules) | phoenix-archive/prod-test/ | Chase parser, QB sync, SharePoint client, Excel parser |
| MCP tools | `mcp/` (4 modules) | phoenix-archive/prod-test/ | tool-registry, tool-executor, sharepoint-tools |
| Test suites | `tests/` (11 Jest files) | phoenix-archive/prod-test/ | Test patterns for all integration areas |
| .env.example | `.env.example` | phoenix-archive/prod-test/ | Environment template |

---

## REPO 6: PHOENIX_UNIFIED_PROD_REPO

| Field | Value |
|-------|-------|
| **Path** | `~/GitHub/PHOENIX_UNIFIED_PROD_REPO/` |
| **Total Files** | ~5,008 (545MB including staging copy) |
| **Archive Tag** | `archive/2026-03-11/unified-prod/dead-workspace` |
| **Why Archive** | Zero real commits — workspace dump with massive staging duplicate |

### Unique Assets to Preserve FIRST

| Asset | Path | Destination | Notes |
|-------|------|-------------|-------|
| Agent Bridge Ledger | `AGENT_BRIDGE_LEDGER.md` (49KB) | phoenix-archive/unified-prod/docs/ | Multi-agent orchestration reference |
| Shared Ops Ledger | `SHARED_OPS_LEDGER.md` (16KB) | phoenix-archive/unified-prod/docs/ | Operational procedures |
| Swarm Plan | `ECHO_PRO_SWARM_PLAN.md` (3.7KB) | phoenix-archive/unified-prod/docs/ | Swarm execution design |
| System docs | `docs/` (11 files) | phoenix-archive/unified-prod/docs/ | Runbooks, system book, integration map, hardening doctrine |
| Original Playbook | `orig playbook/` (16 parts) | phoenix-archive/unified-prod/playbook/ | CRITICAL: Complete 16-part system design spec (200-500 lines each) |
| Operator scripts | `scripts/` (5 shell scripts) | phoenix-archive/unified-prod/scripts/ | Control scripts, note capture, safety mode |

### MUST DELETE (NOT unique — wastes 545MB)

- `Phoenix-ai-core-staging-main/` — Full copy of staging repo with node_modules. Use original.
- `archive/review4delete/` — Already staged for deletion by a previous Echo

---

## REPO 7: rexel

| Field | Value |
|-------|-------|
| **Path** | `~/GitHub/rexel/` |
| **Total Files** | 0 |
| **Archive Tag** | `archive/2026-03-11/rexel/empty-repo` |
| **Why Archive** | Zero commits, zero files — empty placeholder |

### Unique Assets: NONE

**Action:** Archive tag only. No content to preserve.

---

## REPO 8: phoenix-sharepoint-theme

| Field | Value |
|-------|-------|
| **Path** | `~/GitHub/phoenix-sharepoint-theme/` (also `phoenix-sharepoint-theme-main/` locally) |
| **Total Files** | 4 content files + 2 meta files |
| **Archive Tag** | `archive/2026-03-11/sp-theme/branding-assets` |
| **Why Archive** | Dormant, but contains ONLY copies of company branding |

### Unique Assets to Preserve FIRST — ALL ARE CRITICAL

| Asset | Path | Destination | Notes |
|-------|------|-------------|-------|
| Theme HTML | `index.html` | phoenix-archive/sp-theme/ | ONLY COPY — SharePoint theme markup |
| Deployment script | `Phoenix-SharePoint-Theme.ps1` | phoenix-archive/sp-theme/ | ONLY COPY — PowerShell deployment |
| Background image | `assets/Phoenix_Black_Background.jpg` | phoenix-archive/sp-theme/assets/ | ONLY COPY — company branding |
| Logo | `assets/Phoenix_Transparent.png` | phoenix-archive/sp-theme/assets/ | ONLY COPY — company logo |

**WARNING:** These 4 files are the ONLY copies of Phoenix Electric's SharePoint branding. Loss = rebuilding from scratch.

---

## PHOENIX-ARCHIVE REPO STRUCTURE

```
phoenix-archive/
  README.md                          # Provenance and structure guide
  ARCHIVE_INDEX.md                   # Complete index of all archived content

  echo-bot/                          # archive/2026-03-11/echo-bot/gateway-twin
    README.md                        # Why archived, what's canonical
    ops-brain/                       # 47 PhoenixOps AI Brain docs
    src/brain-blueprint.js           # Diverged version (reference only)
    configs/                         # Instance configs

  gateway-stub/                      # archive/2026-03-11/gateway/vps-dashboard-stub
    README.md
    (3 files if unique, empty if duplicates)

  miniapp/                           # archive/2026-03-11/miniapp/command-app-copy
    README.md
    telegram/                        # 7 unique Telegram bot files

  builder-space/                     # archive/2026-03-11/builder-space/predecessor
    README.md
    sharepoint/                      # 16 SharePoint automation scripts
    st-research/                     # ST API integration research (17+ files)
    docs/                            # Technical vision docs
    iac/                             # Bicep infrastructure-as-code
    tests/                           # Jest test suites

  prod-test/                         # archive/2026-03-11/prod-test/test-scaffold
    README.md
    integrations/                    # 8 integration modules
    mcp/                             # 4 MCP tool modules
    tests/                           # 11 test files

  unified-prod/                      # archive/2026-03-11/unified-prod/dead-workspace
    README.md
    docs/                            # 11 system docs + 3 root docs
    playbook/                        # 16-part original playbook
    scripts/                         # 5 operator scripts

  rexel/                             # archive/2026-03-11/rexel/empty-repo
    README.md                        # "Empty repo, archived for record"

  sp-theme/                          # archive/2026-03-11/sp-theme/branding-assets
    README.md
    index.html
    Phoenix-SharePoint-Theme.ps1
    assets/
      Phoenix_Black_Background.jpg
      Phoenix_Transparent.png
```

---

## PRESERVATION SUMMARY

| Category | File Count | Size Estimate | Risk If Lost |
|----------|-----------|---------------|-------------|
| SharePoint branding | 4 files | ~12MB | CRITICAL — company visual identity |
| Ops brain docs | 47 files | ~8MB | HIGH — complete operations spec |
| Original playbook | 16 parts | ~5MB | HIGH — system design knowledge |
| ST research | 17+ files | ~3MB | MEDIUM — historical reference |
| SharePoint scripts | 16 files | ~2.5MB | HIGH — customer automation (1700 customers) |
| Telegram bot | 7 files | ~150KB | MEDIUM — integration reference |
| Test suites | 21 files | ~500KB | LOW — reference patterns |
| System docs | 14 files | ~2MB | MEDIUM — runbooks and procedures |
| Operator scripts | 5 files | ~100KB | LOW — shell utilities |
| **TOTAL UNIQUE** | **~147 files** | **~33MB** | |

**Space reclaimed by archiving:** ~600MB (primarily from UNIFIED_PROD's staging copy and node_modules)
