# STUDIO TEAM 1 -- Phase 1 Local Mapping Report

## 1. Header

| Field | Value |
|---|---|
| **Team ID** | STUDIO TEAM 1 |
| **Surface** | Studio (ShanesMacStudio) |
| **Assigned Root Index** | 047 |
| **Main Directory Path** | `/Users/shanewarehime/phoenixelectric.life` |
| **Total Size** | 353 MB |
| **Item Count** | 6,115 files / 2,776 directories |
| **Created** | 2026-03-07 08:43:50 |
| **Last Modified** | 2026-03-07 08:43:50 |
| **Moved or Unavailable** | No — symlink to OneDrive Shared Library |
| **Type Designation** | Symlink — OneDrive SharePoint team site (Phoenix Ops) |

## 2. File Tree (depth 2)

```
phoenixelectric.life/                          (SYMLINK)
  -> ~/Library/CloudStorage/OneDrive-SharedLibraries-phoenixelectric.life/
     Phoenix Ops - Documents/                  (353 MB total)
       _AI_MEMORY/                             325 MB  — AI system memory (92% of total)
       SERVICE/                                 24 MB  — Customer service files
       INTERNAL/                               4.3 MB  — Procedures, policies, training
       ACCOUNTING/                               0 B   — Empty scaffolding
       CONSTRUCTION/                             0 B   — Empty scaffolding
       EMAIL_ARCHIVE/                            0 B   — Empty scaffolding
       EMPLOYEES/                                0 B   — Empty scaffolding
       General/                                  0 B   — Empty
       PHOENIX_COMMAND_APP/                      0 B   — Empty scaffolding
       PRICEBOOK/                                0 B   — Empty scaffolding
       REPORTS/                                  0 B   — Empty scaffolding
       VENDORS/                                  0 B   — Empty scaffolding
```

## 3. Contextual Summary

**OneDrive Shared Library symlink — Phoenix Electric's SharePoint team site document library.** This is a macOS-synced view of the `Phoenix Ops` SharePoint site. The symlink at `~/phoenixelectric.life` resolves through `~/Library/CloudStorage/OneDrive-SharedLibraries-phoenixelectric.life/`.

**9 of 13 top-level business directories are empty scaffolding** (ACCOUNTING, CONSTRUCTION, EMAIL_ARCHIVE, EMPLOYEES, General, PHOENIX_COMMAND_APP, PRICEBOOK, REPORTS, VENDORS). All actual content lives in three directories:

- **_AI_MEMORY** (325 MB, 92%) — The AI operational memory system. Contains `_GATEWAY (1)` (295 MB) which is the same target as `~/Phoenix_Local/_GATEWAY` symlink. Also contains Vendors data (16 MB), Pricebook (5.8 MB), Ops (1.9 MB), and other operational data.
- **SERVICE** (24 MB, 7%) — Real business data: customer job photos (JPG), estimates (PDF), and customer profiles (JSON) organized by customer name.
- **INTERNAL** (4.3 MB, 1%) — Procedures, policies, training materials, fleet info, meeting notes.

**Critical overlap:** `_AI_MEMORY/_GATEWAY (1)` (295 MB) is the SAME directory that `~/Phoenix_Local/_GATEWAY` symlinks to. These are not duplicates — they're the same OneDrive-synced content accessed via different paths.

## 4. Data Summary

| Component | Size | % of Total |
|---|---|---|
| _AI_MEMORY/_GATEWAY (1) (repo audit + AI ops) | 295 MB | 84% |
| _AI_MEMORY/Vendors | 16 MB | 5% |
| SERVICE (customer data) | 24 MB | 7% |
| _AI_MEMORY/Pricebook | 5.8 MB | 2% |
| INTERNAL | 4.3 MB | 1% |
| Everything else | 7.9 MB | 2% |
| **TOTAL** | **353 MB** | **100%** |

### _AI_MEMORY Subdirectories

| Directory | Size | Contents |
|---|---|---|
| _GATEWAY (1)/ | 295 MB | Main gateway — LEDGER, HANDOFF, ECHO, repo audits, session logs |
| Vendors/ | 16 MB | ServiceFusion/Rexel data, 13 MB customer list XLSX |
| Pricebook/ | 5.8 MB | Pricebook data |
| _GATEWAY/ | 3.0 MB | Secondary gateway (OneDrive conflict copy) |
| Ops/ | 1.9 MB | Operations data |
| Manifests/ | 1.1 MB | Manifest files |
| Jobs/ | 772 KB | Job notes, Rexel job match XLSX |
| Indexes/ | 528 KB | Index files |
| Decisions/ | 112 KB | Decision records |
| Quarantine/ | 16 KB | Quarantined items |
| 7 empty dirs | 0 B | agent_logs, customer_insights, decision_history, etc. |

## 5. File Detail

### File Types (top 15)

| Extension | Count | Notes |
|---|---|---|
| .md | 1,888 | Markdown — dominant (AI memory, handoffs, logs) |
| .json | 1,387 | Config, customer profiles, package metadata |
| .ts | 1,031 | TypeScript source (from cloned repos in REPO_AUDIT) |
| .js | 522 | JavaScript source |
| .ps1 | 205 | PowerShell scripts (Azure runbooks) |
| .sample | 154 | Git hook samples (from 12 repos) |
| .txt | 76 | Text files |
| .sh | 57 | Shell scripts |
| .xlsx | 53 | Excel spreadsheets (customer lists, capabilities) |
| .png | 46 | Images |
| .map | 43 | Source maps |
| .py | 26 | Python scripts |
| .yml | 18 | YAML configs |
| .bicep | 18 | Azure Bicep IaC templates |
| .jpg | 15 | Service job site photos |

### 12 Git Repos (all inside _AI_MEMORY/_GATEWAY (1)/REPO_AUDIT_2025-12-30/)

10 archived repo clones from Dec 2025 audit + 2 SharePoint build clones in LEDGER_QUEUE and SHAREPOINT_BUILD_CONSOLIDATED.

### Largest Files
- `REPO_AUDIT.../phoenix-ai-core/node_modules/ffmpeg-static/ffmpeg` — 43 MB
- 4x `.git/objects/pack/*.pack` files — 24 MB each
- `Vendors/.../5936_customer_list.xlsx` — 13 MB

## 6. Future Recommendations

- **OneDrive naming conflict**: Two `_GATEWAY` directories exist — `_GATEWAY` (3 MB) and `_GATEWAY (1)` (295 MB). The `(1)` suffix indicates OneDrive created a conflict copy. Investigate which is canonical and clean up the other.
- **Empty scaffolding directories**: 9 business directories with structure but zero content — either populate or remove to reduce confusion.
- **REPO_AUDIT storage**: 248 MB of archived repos (70% of total) could be compressed or removed if they exist on GitHub remote.
- **ffmpeg binary**: 43 MB binary in node_modules inside an archived repo — reclaimable.

## 7. Hazard/Skip Log

**Hazard files found (paths logged, NOT opened):**

| File | Path |
|---|---|
| ECHO.md | `_AI_MEMORY/_GATEWAY/ECHO.md` |
| ECHO.md | `_AI_MEMORY/_GATEWAY (1)/ECHO.md` |
| AGENTS.md | `_AI_MEMORY/_GATEWAY (1)/REPO_AUDIT_2025-12-30/old-phoenix-ai-core-staging-old/AGENTS.md` |
| CLAUDE.md | `_AI_MEMORY/_GATEWAY (1)/REPO_AUDIT_2025-12-30/old-phoenix-ai-core-staging-old/CLAUDE.md` |
| AGENTS.md | `_AI_MEMORY/_GATEWAY (1)/REPO_AUDIT_2025-12-30/phoenix-builder-space-knowledge/codex-guides/AGENTS.md` |
| CLAUDE.md | `_AI_MEMORY/_GATEWAY (1)/REPO_AUDIT_2025-12-30/phoenix-builder-space-knowledge/codex-guides/CLAUDE.md` |

## 8. Open Questions

1. Which `_GATEWAY` is canonical — `_GATEWAY` (3 MB) or `_GATEWAY (1)` (295 MB)? The `(1)` suffix suggests OneDrive conflict.
2. Are the 9 empty business directories planned for future use or abandoned scaffolding?
3. Is there a `_GATEWAY 2` file (80 bytes found) — another OneDrive conflict artifact?
4. Does `~/Phoenix_Local/_GATEWAY` symlink point to `_GATEWAY (1)` or `_GATEWAY`? (Answer: `_GATEWAY (1)`)
5. Is SERVICE data (customer photos, profiles) being actively used or is it historical?

## 9. Confidence Notes

All measurements HIGH. Symlink chain fully resolved. File counts and sizes verified via du and find. Git repo detection verified. OneDrive conflict naming pattern identified with HIGH confidence.

## 10. Adversarial Review

- **OneDrive sync risk**: All data depends on OneDrive/SharePoint sync. If sync breaks or the shared library is unshared, 353 MB becomes inaccessible.
- **Dual _GATEWAY conflict**: Two _GATEWAY directories is a data integrity risk — changes to the wrong one won't propagate. The `(1)` suffix means OneDrive detected a naming collision.
- **Overlap with Phoenix_Local**: `~/Phoenix_Local/_GATEWAY` and `~/phoenixelectric.life/Phoenix Ops - Documents/_AI_MEMORY/_GATEWAY (1)` resolve to the SAME directory. This is NOT duplication — it's two access paths to one location. But the local backup in `Phoenix_Local/_GATEWAY_local_backup_2026-03-08` IS a separate copy.
- **Overlap with Phoenix_Dev**: `~/Phoenix_Dev/ARCHIVES/REPO_AUDIT_2025-12-30` contains the SAME 10 repos as `_AI_MEMORY/_GATEWAY (1)/REPO_AUDIT_2025-12-30` — likely actual duplication (248 MB x2 = ~500 MB wasted).
- **No sensitive credential files found** (.env, .key, .pem, etc.) — clean.
- **43 MB ffmpeg binary** inside archived node_modules is dead weight.

---

*Report generated: 2026-03-08 | STUDIO TEAM 1 | Root Index 047*
