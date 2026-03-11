# REPO MANIFEST — Phoenix Electric GitHub Ecosystem
## Forensic Audit 2026-03-11 | 18 Repos + 6 Extra Local Dirs

---

## THE 7-REPO TARGET STATE

| # | Repo | Status | LOC | Branch | Last Commit | Verdict |
|---|------|--------|-----|--------|-------------|---------|
| 1 | **twin-peaks** | ACTIVE | ~91K (99% docs) | main | 2026-03-10 | KEEP — architecture bible |
| 2 | **phoenix-gauntlet** | ACTIVE | ~3K code + 3.8K docs | main | 2026-03-08 | KEEP — command center V1 |
| 3 | **phoenix-ai-core** | ACTIVE (messy) | ~13.5K prod code, 644K total | staging/import-prodo | 2026-03-06 | KEEP — needs major cleanup |
| 4 | **service-fusion** | ACTIVE (hollow) | 2,113 (docs only) | main | 2026-03-10 | KEEP — plugin wrapper only |
| 5 | **phoenix-command-app** | ACTIVE | ~5.2K | main (local 7 behind) | 2026-03-05 | KEEP — fix 192GB + expiring secret |
| 6 | **phoenix-filesystem** | ACTIVE | ~3.3K code + 464K total | main | 2026-03-10 | KEEP — migration tooling |
| 7 | **build-ledger** | ACTIVE | ~40 files | main | 2026-03-09 | KEEP — swarm coordination |

## THE 11 ARCHIVE CANDIDATES

| # | Repo | Status | LOC | Last Commit | Verdict |
|---|------|--------|-----|-------------|---------|
| 8 | **Phoenix-Echo-Gateway** | ACTIVE | ~28.7K | 2026-03-09 | SPECIAL — see Gateway Decision below |
| 9 | **phoenix-echo-bot** | DORMANT | ~22K | 2026-03-03 (2 commits) | ARCHIVE — confirmed gateway twin |
| 10 | **gateway** | DORMANT | 3 files | 2026-03-10 (1 commit) | MERGE into #8, then ARCHIVE |
| 11 | **Phoenix-ai-core-staging** | ACTIVE | ~56.1K | branch active | SPECIAL — see Staging Decision below |
| 12 | **phoenix-electric-miniapp** | DORMANT | ~35 files | 2026-03-01 (1 commit) | ARCHIVE — contains command-app copy |
| 13 | **phoenix-showcase** | STATIC | 2 files (44KB HTML) | 2026-03-08 | KEEP — GitHub Pages candidate |
| 14 | **phoenix-production-test** | DORMANT | ~40 files | 2026-03-02 (3 commits) | MERGE into staging, then ARCHIVE |
| 15 | **phoenix-builder-space-knowledge** | DORMANT | ~120 files | 2026-01-22 (1 commit) | ARCHIVE — superseded by staging |
| 16 | **PHOENIX_UNIFIED_PROD** | DEAD | ZERO commits | never committed | TRIAGE — extract docs, ARCHIVE shell |
| 17 | **rexel** | DEAD | 0 files | ZERO commits | ARCHIVE immediately |
| 18 | **phoenix-sharepoint-theme** | DORMANT | 4 files | 2026-02-08 | ARCHIVE with SP assets preserved |

## GATEWAY DECISION (CRITICAL)

Phoenix-Echo-Gateway and phoenix-echo-bot are **confirmed identical twins** (MD5 verified 10/12 files match byte-for-byte). Phoenix-Echo-Gateway has the more hardened auth.js (OAuth beta header) and is the more recent version.

**Options for Shane:**
- A) Keep Phoenix-Echo-Gateway as the canonical gateway repo (separate from phoenix-ai-core)
- B) Merge Phoenix-Echo-Gateway src/ into phoenix-ai-core and archive the standalone repo

## STAGING DECISION (CRITICAL)

Phoenix-ai-core-staging contains the production-quality 7-package monorepo (servicefusion-mcp, sharepoint-director, pricebook-mcp, rexel-mcp, phoenix-agent, phoenix-command, phoenix-command-api). The `service-fusion` plugin repo points to it for its MCP server binary.

**Options for Shane:**
- A) Rename phoenix-ai-core-staging → phoenix-ai-core (make staging the canonical core)
- B) Merge staging packages INTO existing phoenix-ai-core/production/
- C) Keep both with clear scope separation (core = identity/gateway, staging = business automation)

## EXTRA LOCAL DIRECTORIES (NOT ON GITHUB)

| Dir | Type | Concern Level |
|-----|------|---------------|
| electrical-guru/ | Claude plugin, never committed | MEDIUM — real work, needs push |
| taproot-blitz-build/ | Blitz command center, no remote | HIGH — 28 untracked files, MacBook-only |
| Documents/ | Personal files misplaced | **CRITICAL — Chrome Passwords.csv in ~/GitHub/** |
| PHOENIX_UNIFIED_PROD_STAGING/ | Empty clone of UNIFIED_PROD | LOW — 1 commit, empty |
| PHOENIX-ECHO-GATEWAY-MASTERRUNBOOK/ | Historical chunks, not git | LOW — archive candidate |
| phoenix-sharepoint-theme-main/ | Extracted from zip, not git | LOW — needs git init or filing |
