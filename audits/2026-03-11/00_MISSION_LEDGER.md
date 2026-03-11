# MISSION LEDGER — 18-Repo Forensic Audit
## 2026-03-11 | Echo Pro Swarm (9-agent simulation)

---

## MISSION SUMMARY

Echo Pro executed a full forensic audit of all 18 GitHub repos under shane7777777777777,
plus 6 extra local directories found in ~/GitHub/. The audit used 11 parallel recon agents
and produced verified findings with MD5 checksums, line counts, and exact file paths.

## KEY FINDINGS

### 1. GATEWAY TRIPLE CONFIRMED
phoenix-echo-gateway and phoenix-echo-bot are byte-identical on 10/12 src files (MD5 verified).
Phoenix-Echo-Gateway is the more hardened version (has OAuth beta header in auth.js).
The gateway does NOT live in phoenix-ai-core — it's a separate system.

### 2. SERVICE FUSION REPO IS A HOLLOW SHELL
service-fusion contains ZERO executable code — all docs. The actual MCP server binary
lives at phoenix-ai-core-staging/packages/servicefusion-mcp/dist/index.js.
The .mcp.json hardcodes a MacBook absolute path that breaks on Studio/VPS.

### 3. SERVICETITAN CONTAMINATION: 8,115 LINES STILL LIVE
The refactor/purge-servicetitan branch in staging exists but the purge is INCOMPLETE.
The entire servicetitan/ directory (14 files) is still present.
PowerShell runbooks in echo-gateway and echo-bot still call api.servicetitan.io.

### 4. OPENCLAW CONTAMINATION: TEAMS MANIFEST
phoenix-ai-core/teams-app/manifest.json line 18 says "Built on OpenClaw." in the
public-facing Teams app description. 36 skills still have OpenClaw package.json format.
.clawhub/ directory exists at repo root.

### 5. STAGING CODE HAS 4-5 COPIES
The 7-package monorepo (servicefusion-mcp, sharepoint-director, pricebook-mcp, etc.)
exists in: staging repo, phoenix-ai-core/production/, phoenix-ai-core/imports/ (x2),
PHOENIX_UNIFIED_PROD_REPO (545MB with node_modules).

### 6. PhoenixMailCourier EXPIRES MARCH 28 (17 DAYS)
phoenix-command-app/src/auth/msalConfig.js has hardcoded Client ID for this registration.
This is TIME-CRITICAL — independent of the unification.

### 7. CHROME PASSWORDS.CSV IN ~/GitHub/
~/GitHub/Documents/sharepoint/Chrome Passwords.csv — plaintext credentials file
sitting inside ~/GitHub/. IMMEDIATE SECURITY CONCERN.

### 8. phoenix-filesystem IS THE METHODOLOGY BLUEPRINT
53 commits, Wave 1 executed and verified (6,285 files moved with SHA-256 checksums).
The TX-#### system, manifest generation, and copy-verify-log methodology is production-proven.
This is exactly how the 18-repo unification should execute.

### 9. phoenix-ai-core IS MASSIVE AND MESSY
80,897 files total. Triple-layered copies of staging code in imports/.
305 security sweep files in docs/security/. 1,936 files in docs/week1-ops/.
80+ unstaged modifications on current branch. Needs major cleanup.

### 10. TWIN-PEAKS IS PURE ARCHITECTURE
91,441 lines but 99% documentation. 8-phase runbooks, research bible, playbooks.
Almost zero executable code (3 Modelfiles only). Clean of contamination.
The build hasn't started — all scaffolding is empty.

## DECISIONS WAITING ON SHANE

1. Gateway Repo Fate: Keep Phoenix-Echo-Gateway separate or merge into core?
2. Staging vs Core: Rename staging → core, merge, or keep both?
3. PowerShell Runbook canonical home?
4. phoenix-showcase: Keep as 8th repo or archive?
5. Are PowerShell runbooks still in active Azure Automation use?
6. Extra local dirs: electrical-guru, taproot-blitz-build — push to GitHub?
7. Chrome Passwords.csv — relocate immediately?
8. PhoenixMailCourier — has this been renewed/rotated?

## DELIVERABLES PRODUCED

All in ~/Phoenix_Local/_GATEWAY/AUDIT_2026-03-11/:
1. 01_REPO_MANIFEST.md ✅
2. 02_DUPLICATE_MAP.md ✅
3. 03_CONTAMINATION_REPORT.md ✅
4. 04_CONSOLIDATION_PLAN.md ✅
5. 00_MISSION_LEDGER.md ✅ (this file)

ALL DELIVERABLES COMPLETE:
6. 05_ADVERSARIAL_VERDICT.md ✅ (produced pre-compaction)
7. 06_CONTAMINATION_EDIT_PLAN.md ✅ (26 TX transactions, line-by-line edit spec)
8. 07_REFERENCE_UPDATE_MAP.md ✅ (10 cross-repo reference groups traced)
9. 08_ARCHIVE_MANIFEST.md ✅ (8 repos inventoried, 147 unique files, preserve-first protocol)
10. 09_REPO_GOVERNANCE.md ✅ (permanent constitution draft)
11. 10_INTEGRATION_GATE_VERDICT.md ✅ (final go/no-go with browser audit cross-reference)

## SCOPE EXPANSION REQUESTED BY SHANE
Shane requested infrastructure audit beyond GitHub:
- Mac Studio (check ~/GitHub/ + _GATEWAY for local-only production files)
- VPS via SSH over Tailscale (check deployed code vs GitHub)
- OneDrive/SharePoint (planning docs, pricebook files)
Not yet executed — flagged for next session or resumed session.

## BROWSER AUDIT COMPARISON — COMPLETED

Cross-referenced Echo Pro 11-agent swarm audit against Shane's independent browser session audit. Both audits align on all major findings. Key discrepancy resolved: **PA-01 to PA-07 architecture is SUPERSEDED** by twin-peaks dual-Ollama fleet model (per Shane's Q3 answer in browser audit). Browser audit also identified "Potentially Lost Functions" (The Guru, Knowledge Builder, Voice AI, RAG Pipeline, n8n workflows) — flagged for recovery check at `phoenix-ai-core/backups/active-runtime/2026-02-19T03-49-49Z`. Full cross-reference in 10_INTEGRATION_GATE_VERDICT.md.

## AUDIT COMPLETION

**All 11 deliverables produced.** Total: ~1,200 lines of audit documentation across 11 files.
**Produced across 2 sessions** (pre-compaction: 6 files, post-compaction: 5 files).
**Methodology:** 11 parallel recon agents + 3 focused agents for remaining deliverables + adversarial review.
**Browser cross-reference:** DONE — both audits converge.
**Next:** Shane makes decisions, then execution begins per consolidation plan.
