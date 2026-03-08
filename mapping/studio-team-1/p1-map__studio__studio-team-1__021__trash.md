# Filesystem Mapping Report: .Trash

## 1. Header

| Field | Value |
|---|---|
| **Team ID** | STUDIO TEAM 1 |
| **Surface** | Studio (ShanesMacStudio) |
| **Assigned Root Index** | 021 |
| **Main Directory Path** | `/Users/shanewarehime/.Trash` |
| **Total Size** | 1.0 GB |
| **Item Count** | 20 top-level items |
| **Created** | Mar 7 08:01:17 2026 (macOS resets on empty/re-create) |
| **Last Modified** | Mar 7 08:01:17 2026 |
| **Moved or Unavailable** | No |
| **Type Designation** | system dir |

## 2. File Tree (Top-Level Only)

```
.Trash/
├── #1 Rag.md                                          (27 KB)
├── Claude.app/                                        (564 MB)
├── Claude.dmg                                         (236 MB)
├── Codex Installer                                    (1.7 KB)
├── codex-studio-bootstrap-2026-02-22/                 (12 KB)
├── Codex.dmg                                          (149 MB)
├── Phoenix-ai-core-staging-main.zip                   (39 MB)
├── phoenix-command-app-main.zip                       (64 KB)
├── phoenix-echo-bot-main.zip                          (21 MB)
├── phoenix-echo-gateway 2/                            (192 KB)
├── Phoenix-Echo-Gateway-main.zip                      (22 MB)
├── phoenix-production-test-main.zip                   (188 KB)
├── Screenshot 2026-02-21 at 2.23.07 AM.png            (956 KB)
├── Screenshot 2026-02-24 at 2.59.21 AM.png            (1.5 MB)
├── Screenshot 2026-02-24 at 5.10.44 AM.png            (756 KB)
├── Screenshot 2026-02-26 at 3.12.25 AM.png            (1.1 MB)
├── Screenshot 2026-03-04 at 8.48.27 PM.png            (2.0 MB)
├── Screenshot 2026-03-04 at 8.52.27 PM.png            (808 KB)
└── taproot-blitz-build.zip                            (8.3 MB)
```

## 3. Contextual Summary

`.Trash` is the macOS per-user trash directory. This Trash contains **Phoenix/Echo project artifacts** and **application installers** discarded during development between February 17 and March 7, 2026.

## 4. Data Summary

| Category | Size | Count | % of Total |
|---|---|---|---|
| Application installers (Claude.app, .dmg files) | 949 MB | 3 | 93% |
| Phoenix/Echo project archives (.zip files) | 91 MB | 7 | 9% |
| Screenshots | 7.1 MB | 6 | <1% |
| Documents (#1 Rag.md) | 27 KB | 1 | <1% |
| Codex bootstrap | 14 KB | 2 | <1% |
| **TOTAL** | **1.0 GB** | **20** | **100%** |

## 5. File Detail

### Application Installers (949 MB)
- `Claude.app/` — 564 MB — Full Claude desktop app bundle (discarded version)
- `Claude.dmg` — 236 MB — Claude desktop installer
- `Codex.dmg` — 149 MB — Codex installer

### Phoenix/Echo Project Archives (91 MB)
- `Phoenix-ai-core-staging-main.zip` — 39 MB — AI core staging repo
- `Phoenix-Echo-Gateway-main.zip` — 22 MB — Echo Gateway repo
- `phoenix-echo-bot-main.zip` — 21 MB — Echo bot repo
- `taproot-blitz-build.zip` — 8.3 MB — Taproot blitz build
- `phoenix-echo-gateway 2/` — 192 KB — Duplicate gateway directory
- `phoenix-production-test-main.zip` — 188 KB — Production test repo
- `phoenix-command-app-main.zip` — 64 KB — Command app repo

### Screenshots (7.1 MB)
- 6 screenshots from Feb 21 -- Mar 4 development period

## 6. Future Recommendations

```
system__user__trash__undated
```

- **Reclaim 1 GB** by emptying Trash after confirming items are backed up
- **Review Phoenix archives** — the `-main.zip` naming suggests GitHub downloads, likely recoverable
- **Review `#1 Rag.md`** and `taproot-blitz-build.zip` before permanent deletion

## 7. Hazard/Skip Log

| File | Found? |
|---|---|
| CLAUDE.md | Not found |
| ECHO.md | Not found |
| KINDLE.md | Not found |
| CODEX.md | Not found |
| AGENTS.md | Not found |

**Note:** `.zip` archives could contain `.env` files or secrets within. Not checked.

## 8. Open Questions

1. **Are the Phoenix `.zip` archives duplicates of existing GitHub repos?** If so, safe to permanently delete.
2. **What is `#1 Rag.md`?** May contain useful research notes.
3. **Is `taproot-blitz-build.zip` the only copy?** Taproot is historically significant.
4. **Is `phoenix-echo-gateway 2` a duplicate?** Space-2 suffix suggests macOS duplicate naming.

## 9. Confidence Notes

| Aspect | Confidence | Notes |
|---|---|---|
| File listing completeness | **HIGH** | `ls -la` and `find` consistent |
| Size measurements | **HIGH** | `du -sh` completed without errors |
| Date accuracy | **MEDIUM** | Dates reflect modification times, not trash date |
| Phoenix relevance | **HIGH** | File names clearly reference Phoenix, Echo, Codex, Taproot |

## 10. Adversarial Review

- Items in `.Trash` are NOT deleted — they consume 1.0 GB and remain fully accessible
- Six Phoenix/Echo `.zip` archives likely recoverable from GitHub (`-main.zip` naming pattern)
- The `Claude.app` bundle (564 MB) is likely a superseded version
- `.zip` archives could contain `.env` files with secrets (not checked)

---

*Report generated: 2026-03-08 | STUDIO TEAM 1 | Root Index 021*
