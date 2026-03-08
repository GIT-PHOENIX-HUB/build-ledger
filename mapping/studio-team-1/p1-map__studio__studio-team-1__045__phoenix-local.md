# STUDIO TEAM 1 -- Phase 1 Local Mapping Report

## 1. Header

| Field | Value |
|---|---|
| **Team ID** | STUDIO TEAM 1 |
| **Surface** | Studio (ShanesMacStudio) |
| **Assigned Root Index** | 045 |
| **Main Directory Path** | `/Users/shanewarehime/Phoenix_Local` |
| **Total Size** | 162 MB local (457 MB including _GATEWAY symlink target on OneDrive) |
| **Item Count** | 1,122 files / 438 directories (local); ~5,668 files / ~1,635 directories combined |
| **Created** | 2026-02-23 04:54:09 |
| **Last Modified** | 2026-03-08 04:52:49 |
| **Moved or Unavailable** | No |
| **Type Designation** | Large dir — Primary local AI operations hub with OneDrive-synced _GATEWAY |

## 2. File Tree (depth 2)

```
Phoenix_Local/
├── _GATEWAY -> OneDrive/.../Phoenix Ops - Documents/_AI_MEMORY/_GATEWAY (1)   [SYMLINK, 295 MB]
├── _GATEWAY_local_backup_2026-03-08/                                          [10 MB, 55+ items]
│   ├── 000_HANDOFF.md, 000_README_MASTER.md, 000HISTORY.md
│   ├── AGENT_IDENTITY_REGISTRY.md, AGENT_RULES_OF_CONDUCT.md
│   ├── AGENT_TO_AGENT/, bin/, CONFIGS/, COWORK/
│   ├── echo-persistence/ [contains .git]
│   ├── EMERGENCY/, HANDOFF_ARCHIVE/, LEDGER_QUEUE/ [contains .git]
│   ├── LOGS/, PROPOSALS/, SCRIPTS/, TAPROOT/
│   ├── ECHO.md [HAZARDOUS_SKIP]
│   ├── LEDGER.md (244 KB)
│   └── various HANDOFF_TO_STEPHANIE_*.md files
├── _SNAPSHOTS/                                                                [151 MB]
│   ├── MANIFEST_STUDIO_PRE_MIGRATION.txt (1.4 MB)
│   ├── restic-repo/ (150 MB)
│   ├── ROOT_FILE_TRIAGE.txt
│   └── .restic-password [SENSITIVE]
├── PHOENIX-ECHO-GATEWAY-MASTER-RUNBOOK/                                       [244 KB]
│   ├── AGENTS.md [HAZARDOUS_SKIP]
│   ├── HEARTBEAT.md, IDENTITY.md, MEMORY.md, SOUL.md, TOOLS.md, USER.md
│   ├── memory/
│   └── .phoenix-sessions/ (13 checkpoint.json + 10 session jsonl files)
├── CLAUDE.md [HAZARDOUS_SKIP]
├── FILE_FILING_PROTOCOL.md
├── LEDGER.md (140 KB)
└── PROJECT_FILING_BOARD.md
```

## 3. Contextual Summary

**Primary local operations hub for the Phoenix Echo AI system.** This is where Echo lives — the working directory referenced in CLAUDE.md as the source of truth for session logs, handoffs, and AI memory. The critical `_GATEWAY` directory is a symlink to OneDrive-synced cloud storage (`Phoenix Ops - Documents/_AI_MEMORY/_GATEWAY (1)`), providing cross-device persistence.

Key components:
- **_GATEWAY (symlink)** — 295 MB OneDrive-synced AI memory system (LEDGER, HANDOFF, ECHO identity, repo audits, operational docs)
- **_GATEWAY_local_backup** — 10 MB local snapshot of _GATEWAY from 2026-03-08
- **_SNAPSHOTS** — 151 MB restic backup repository + pre-migration manifests
- **PHOENIX-ECHO-GATEWAY-MASTER-RUNBOOK** — Operational runbook with session checkpoints
- Root-level LEDGER.md (140 KB) — active session logging

**Relationship to other directories:**
- `~/Phoenix_Dev/ARCHIVES` contains an older archived version of the _GATEWAY structure
- `~/GitHub/PHOENIX-ECHO-GATEWAY-MASTERRUNBOOK` appears to be the repo version of the local runbook
- The _GATEWAY symlink target is the same OneDrive storage accessed via `~/phoenixelectric.life`

## 4. Data Summary

| Component | Size | % of Local |
|---|---|---|
| _SNAPSHOTS (restic backup) | 151 MB | 93% |
| _GATEWAY_local_backup | 10 MB | 6% |
| PHOENIX-ECHO-GATEWAY-MASTER-RUNBOOK | 244 KB | <1% |
| Root files (LEDGER.md, etc.) | 140 KB | <1% |
| **LOCAL TOTAL** | **162 MB** | **100%** |
| _GATEWAY symlink target (OneDrive) | 295 MB | (external) |
| **COMBINED TOTAL** | **~457 MB** | |

## 5. File Detail

### Key Files
- **LEDGER.md** (root, 140 KB) — Active session log, frequently written
- **PROJECT_FILING_BOARD.md** — Updated 2026-03-07, project filing rules
- **FILE_FILING_PROTOCOL.md** — Naming conventions and filing protocol

### Key Directories
- **_GATEWAY/** (symlink) — THE critical path. Contains ECHO.md, HANDOFF, LEDGER, PRO_BUFFER, all operational memory
- **_SNAPSHOTS/restic-repo/** — 150 MB encrypted backup with `.restic-password` file
- **_GATEWAY_local_backup_2026-03-08/** — Contains echo-persistence/.git, LEDGER_QUEUE/.git, VAULT_SECRETS_REFERENCE.md
- **PHOENIX-ECHO-GATEWAY-MASTER-RUNBOOK/.phoenix-sessions/** — 13 checkpoint files + 10 session logs

### File Types (local only)
| Extension | Count |
|---|---|
| .md | 735 |
| .sh | 57 |
| .ps1 | 49 |
| .json | 41 |
| .sample | 28 |
| .txt | 19 |
| .log | 17 |
| .jsonl | 16 |

## 6. Future Recommendations

- The `_SNAPSHOTS/restic-repo` (150 MB) is 93% of local storage — verify restic backups are current and the password file is secured
- `_GATEWAY_local_backup` should be compared against live _GATEWAY for drift
- Consider whether both root LEDGER.md AND _GATEWAY/LEDGER.md are needed (potential drift/confusion)

## 7. Hazard/Skip Log

**Hazard files found (paths logged, NOT opened):**

| File | Path |
|---|---|
| CLAUDE.md | `Phoenix_Local/CLAUDE.md` |
| AGENTS.md | `Phoenix_Local/PHOENIX-ECHO-GATEWAY-MASTER-RUNBOOK/AGENTS.md` |
| ECHO.md | `Phoenix_Local/_GATEWAY_local_backup_2026-03-08/ECHO.md` |
| ECHO.md | `Phoenix_Local/_GATEWAY/ECHO.md` (via symlink to OneDrive) |

**Sensitive files found:**
| File | Path |
|---|---|
| .restic-password | `_SNAPSHOTS/.restic-password` |
| VAULT_SECRETS_REFERENCE.md | `_GATEWAY_local_backup_2026-03-08/VAULT_SECRETS_REFERENCE.md` |

## 8. Open Questions

1. Is the root-level LEDGER.md a duplicate of _GATEWAY/LEDGER.md or do they serve different purposes?
2. Is the restic backup in _SNAPSHOTS current, or has it been superseded?
3. Are the 13 .phoenix-sessions checkpoint files actively used or stale?
4. Does the _GATEWAY_local_backup get refreshed automatically or was it a one-time copy?
5. Is `.restic-password` stored in plaintext? Should it be in a secrets manager?

## 9. Confidence Notes

All measurements HIGH. Symlink target verified and measured separately. File counts verified via find. Size measurements verified via du. Activity assessment HIGH (85 files modified in last 7 days).

## 10. Adversarial Review

- **Symlink dependency risk**: _GATEWAY depends on OneDrive sync — if OneDrive disconnects or the shared library is removed, the entire AI memory system becomes unavailable locally
- **OneDrive naming conflict**: The target is `_GATEWAY (1)` (with space and parenthetical number), indicating OneDrive created a conflict copy at some point — the "real" `_GATEWAY` may have diverged
- **Sensitive data exposure**: `.restic-password` in plaintext and `VAULT_SECRETS_REFERENCE.md` are in the local backup
- **Two git repos** inside the local backup (`echo-persistence`, `phoenix-sharepoint-build-main`) — status unknown
- **93% of local storage** is a single restic repo — if no longer needed, 150 MB is reclaimable

---

*Report generated: 2026-03-08 | STUDIO TEAM 1 | Root Index 045*
