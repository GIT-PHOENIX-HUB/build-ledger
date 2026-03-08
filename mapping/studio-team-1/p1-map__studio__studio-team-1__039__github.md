# FILESYSTEM MAP: 039 — GitHub

## 1. Header

| Field | Value |
|-------|-------|
| **Team ID** | STUDIO TEAM 1 |
| **Surface** | Studio (ShanesMacStudio) |
| **Assigned Root Index** | 039 |
| **Main Directory Path** | `/Users/shanewarehime/GitHub` |
| **Total Size** | 2.4 GB |
| **Item Count** | 15 git repos, 3 non-git directories, 4 loose files |
| **Created** | 2026-03-02 13:41:32 |
| **Last Modified** | 2026-03-08 14:27:22 |
| **Moved or Unavailable** | No |
| **Type Designation** | large dir (all repos) |

## 2. File Tree

```
GitHub/                                          2.4 GB total
├── PHOENIX_UNIFIED_PROD_REPO/                   879 MB   (NOT git)
├── phoenix-gauntlet/                            473 MB   (git, DIRTY)
├── Phoenix-Echo-Gateway/                        278 MB   (git, DIRTY)
├── Phoenix-ai-core-staging/                     224 MB   (git, CLEAN)
├── phoenix-ai-core/                             221 MB   (git, CLEAN)
├── phoenix-production-test/                     171 MB   (git, CLEAN)
├── phoenix-echo-bot/                             44 MB   (git, CLEAN)
├── phoenix-builder-space-knowledge/              34 MB   (git, CLEAN)
├── taproot-blitz-build/                          25 MB   (git, DIRTY, NO REMOTE)
├── phoenix-command-app/                          16 MB   (git, CLEAN)
├── twin-peaks/                                   11 MB   (git, CLEAN)
├── phoenix-sharepoint-theme/                    4.0 MB   (git, CLEAN)
├── phoenix-sharepoint-theme-main/               2.0 MB   (NOT git)
├── PHOENIX-ECHO-GATEWAY-MASTERRUNBOOK/          580 KB   (NOT git)
├── phoenix-filesystem/                          1.1 MB   (git, DIRTY)
├── phoenix-filesystem-main/                     452 KB   (git, DIRTY)
├── phoenix-electric-miniapp/                    516 KB   (git, DIRTY)
├── build-ledger/                                1.1 MB   (git, DIRTY)
├── phoenix-icon-4k copy 2.png                    11 MB   (loose)
├── phoenix-icon-4k copy.png                      11 MB   (loose)
├── phoenix-sharepoint-theme-main.zip            1.8 MB   (loose)
└── iTerm2 Session Feb 19, 2026...txt              52 KB  (loose)
```

## 3. Contextual Summary

Central code repository directory for all Phoenix Electric / Phoenix Echo development. 15 git repos spanning the core AI platform, Echo Gateway, filesystem mapping, GPT-OSS research (twin-peaks), and operational tooling (build-ledger, phoenix-gauntlet). All repos under `shane7777777777777` GitHub account. One repo (taproot-blitz-build) is local-only with no remote.

## 4. Data Summary

| Metric | Value |
|--------|-------|
| Total git repos | 15 |
| Clean repos | 8 |
| Dirty repos | 7 |
| Non-git directories | 3 |
| Loose files | 4 (22 MB in duplicate PNGs) |
| Repos with no remote | 1 (taproot-blitz-build) |

## 5. File Detail — Git Repos

| Repo | Size | Branch | Status | Remote |
|------|------|--------|--------|--------|
| phoenix-ai-core | 221 MB | main | CLEAN | github.com SSH |
| Phoenix-ai-core-staging | 224 MB | feature/capp-component-refactor | CLEAN | github.com HTTPS |
| Phoenix-Echo-Gateway | 278 MB | main | DIRTY (10 files) | github.com HTTPS |
| phoenix-echo-bot | 44 MB | main | CLEAN | github.com SSH |
| phoenix-builder-space-knowledge | 34 MB | main | CLEAN | github.com HTTPS |
| phoenix-command-app | 16 MB | main | CLEAN | github.com HTTPS |
| phoenix-electric-miniapp | 516 KB | main | DIRTY (4 files) | github.com HTTPS |
| phoenix-production-test | 171 MB | main | CLEAN | github.com HTTPS |
| phoenix-sharepoint-theme | 4.0 MB | main | CLEAN | github.com HTTPS |
| phoenix-filesystem | 1.1 MB | main | DIRTY (4 files) | github.com SSH |
| phoenix-filesystem-main | 452 KB | main | DIRTY (1 file) | github.com SSH (SAME remote as phoenix-filesystem!) |
| phoenix-gauntlet | 473 MB | main | DIRTY (6 files) | github.com HTTPS |
| twin-peaks | 11 MB | main | CLEAN | github.com SSH |
| taproot-blitz-build | 25 MB | main | DIRTY (26 untracked) | NO REMOTE |
| build-ledger | 1.1 MB | main | DIRTY (mapping/) | github.com SSH |

## 6. Future Recommendations

**Cleanup candidates:**
- `phoenix-filesystem-main` and `phoenix-filesystem` share same remote — likely duplicate clone
- `phoenix-sharepoint-theme-main/` (non-git) + ZIP are redundant with the git repo
- Two `phoenix-icon-4k copy*.png` (22 MB) are loose assets
- `taproot-blitz-build` needs a remote configured if it should persist
- `PHOENIX_UNIFIED_PROD_REPO` (879 MB, non-git) — evaluate for redundancy

## 7. Hazard/Skip Log

**Hazard files found (paths logged, NOT opened):**

| File | Path |
|------|------|
| CLAUDE.md | `PHOENIX_UNIFIED_PROD_REPO/CLAUDE.md` |
| CLAUDE.md | `phoenix-builder-space-knowledge/CLAUDE.md` |
| CLAUDE.md | `twin-peaks/CLAUDE.md` |
| AGENTS.md | `phoenix-ai-core/AGENTS.md` |

## 8. Open Questions

1. **7 dirty repos** — work-in-progress or forgotten uncommitted changes?
2. **Duplicate remote:** phoenix-filesystem and phoenix-filesystem-main share the same remote with divergent histories
3. **Phoenix-ai-core-staging** on feature branch, not main — intentional?
4. **Mixed auth protocols** (HTTPS vs SSH) across repos
5. **taproot-blitz-build** has no remote — data loss risk if disk fails

## 9. Confidence Notes

All aspects HIGH. Git status, remotes, and branch info directly verified for all 15 repos.

## 10. Adversarial Review

- `PHOENIX_UNIFIED_PROD_REPO` (879 MB, non-git) may contain nested repos and unique content
- taproot-blitz-build with no remote = unrecoverable if lost
- phoenix-filesystem duplicate situation could cause push conflicts
- Loose PNG files (22 MB) waste space

---

*Report generated: 2026-03-08 | STUDIO TEAM 1 | Root Index 039*
