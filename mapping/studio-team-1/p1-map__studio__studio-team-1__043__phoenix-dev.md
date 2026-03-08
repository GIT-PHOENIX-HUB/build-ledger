# STUDIO TEAM 1 -- Phase 1 Local Mapping Report

## 1. Header

| Field | Value |
|---|---|
| **Team ID** | STUDIO TEAM 1 |
| **Surface** | Studio (ShanesMacStudio) |
| **Assigned Root Index** | 043 |
| **Main Directory Path** | `/Users/shanewarehime/Phoenix_Dev` |
| **Total Size** | 390 MB |
| **Item Count** | 5,243 files |
| **Created** | 2026-03-07 12:20:50 |
| **Last Modified** | 2026-03-07 13:16:39 |
| **Moved or Unavailable** | No |
| **Type Designation** | Phoenix dir — Archive/staging workspace |

## 2. File Tree (depth 2)

```
Phoenix_Dev/
├── STAGING/
│   └── DROP_ZONE/                          (160 KB, 16 files)
└── ARCHIVES/                               (389 MB, 56 subdirectories)
    ├── REPO_AUDIT_2025-12-30/              (249 MB) — 10 archived git repos
    ├── ARCHIVE/                            (61 MB)  — gauntlet backup, ledger history
    ├── LEDGER_HISTORY_BACKUP_2026-02-18/   (59 MB)
    ├── SHAREPOINT_BUILD_CONSOLIDATED/      (4.3 MB)
    ├── ROOT_FILES/                         (3.4 MB) — PRO_BUFFER, TEAM_HANDOFF, playbooks
    ├── AUDIT/                              (2.7 MB)
    ├── AZURE_RUNBOOKS_LIVE_20260119/       (932 KB) — 21 PowerShell runbooks
    ├── SESSION_LOGS/                       (692 KB) — 23 session logs
    ├── BLITZ_MODE/                         (360 KB) — research, plans, braindumps
    ├── RESEARCH/                           (304 KB) — 10 research reports
    └── (46 more subdirectories...)
```

## 3. Contextual Summary

**Consolidated archive and staging workspace** — NOT active development code. Contains:
- Session logs, ledger backups, and handoff documents from Echo continuity system
- 10 archived git repos from Dec 2025 audit (249 MB — 64% of total)
- Azure/PowerShell runbooks for ServiceTitan, SharePoint, AI infrastructure
- Research reports, audit results, operational documentation
- Staging materials for Stephanie (CLI packages, handbooks)
- Boot profiles, prompt templates, agent specifications

**Relationship to ~/GitHub/:** REPO_AUDIT_2025-12-30 contains older snapshots of repos that also exist in ~/GitHub/. However, 3-4 archived repos (mcp-vault, ST_Directory_Assistant, phoenix-ai-staging) are NOT in current ~/GitHub/ and may contain unique content.

## 4. Data Summary

| Component | Size | % of Total |
|---|---|---|
| REPO_AUDIT_2025-12-30 (archived repos) | 249 MB | 64% |
| ARCHIVE + LEDGER_HISTORY_BACKUP | 120 MB | 31% |
| Everything else (56 subdirs) | 21 MB | 5% |
| **TOTAL** | **390 MB** | **100%** |

## 5. File Detail

### Key Directories
- **REPO_AUDIT_2025-12-30/** — 10 archived git repos. Some NOT in current ~/GitHub/.
- **ROOT_FILES/** — PRO_BUFFER.md (most recently modified, 2026-03-05), TEAM_HANDOFF, system playbooks
- **AZURE_RUNBOOKS_LIVE_20260119/** — 21 PowerShell scripts for Azure Automation
- **KNOWLEDGE_BUILDER/** — daily_collection.sh and process_collection.mjs (automated knowledge aggregation)
- **STAGING/DROP_ZONE/** — test scripts, claude hooks config, monitoring logs (appears dormant since Jan 2026)

## 6. Future Recommendations

Consider renaming to `Phoenix_Dev_Archive` to reflect archival nature. The REPO_AUDIT (249 MB) could be compressed if those repos exist on GitHub remote.

## 7. Hazard/Skip Log

**Hazard files found (paths logged, NOT opened):**

| File | Path |
|---|---|
| ECHO.md | `ARCHIVES/ARCHIVE/LEDGER_HISTORY_BACKUP_2026-02-18/ECHO.md` |
| ECHO.md | `ARCHIVES/LEDGER_HISTORY_BACKUP_2026-02-18/ECHO.md` |
| AGENTS.md | `ARCHIVES/PHOENIX_ECHO_DOCS/AGENTS.md` |
| AGENTS.md | `ARCHIVES/REPO_AUDIT_2025-12-30/old-phoenix-ai-core-staging-old/AGENTS.md` |
| CLAUDE.md | `ARCHIVES/REPO_AUDIT_2025-12-30/old-phoenix-ai-core-staging-old/CLAUDE.md` |

## 8. Open Questions

1. Is this redundant with ~/GitHub/? (Partially — some archived repos are unique)
2. Was this recently consolidated? (Creation date 2026-03-07 but files date to 2025-12-14)
3. Is STAGING/DROP_ZONE still active?
4. Are KNOWLEDGE_BUILDER cron jobs still running?

## 9. Confidence Notes

All measurements HIGH. Redundancy assessment HIGH (direct name comparison). Creation date interpretation MEDIUM (may reflect move operation).

## 10. Adversarial Review

- DROP_ZONE monitoring logs suggest it was once part of active automation — verify no active cron jobs reference this path
- At least 3-4 archived repos in REPO_AUDIT are NOT in ~/GitHub/ — do not assume full redundancy
- 13 .git directories found inside ARCHIVES — all archival, none at root level

---

*Report generated: 2026-03-08 | STUDIO TEAM 1 | Root Index 043*
