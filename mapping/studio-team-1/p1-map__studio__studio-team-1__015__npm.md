# Mapping Report: Root Index 015 -- `.npm`

## 1. Header

| Field | Value |
|---|---|
| **Team ID** | STUDIO TEAM 1 |
| **Surface** | Studio (ShanesMacStudio) |
| **Assigned Root Index** | 015 |
| **Main Directory Path** | `/Users/shanewarehime/.npm` |
| **Total Size** | 1.3 GB |
| **Item Count (files)** | 25,853 |
| **Created** | Feb 21 09:21:04 2026 |
| **Last Modified** | Mar 7 14:33:36 2026 (directory mtime; logs active through Mar 8 17:05) |
| **Moved or Unavailable** | No |
| **Type Designation** | config dir (npm) -- cache, npx sandbox, debug logs |

## 2. File Tree (Depth 2)

```
.npm/
├── _cacache/                          # 977 MB -- npm content-addressable cache
│   ├── content-v2/                    #   970 MB -- cached tarballs / package data
│   ├── index-v5/                      #   7.7 MB -- cache index entries
│   └── tmp/                           #   0 B   -- empty temp staging
├── _logs/                             # 44 KB  -- npm debug logs (11 files, all 2026-03-08)
├── _npx/                              # 313 MB -- npx execution caches (11 sandboxes)
│   ├── 673e420c0bc15d5b/              #  91 MB  -- @sylphx/pdf-reader-mcp@2.3.0
│   ├── 4d5fc182ca17062b/              #  36 MB  -- mcp-server-fetch-typescript@0.1.1
│   ├── a3241bba59c344f5/              #  29 MB  -- @modelcontextprotocol/server-filesystem@2026.1.14
│   ├── eea2bd7412d4593b/              #  28 MB  -- @upstash/context7-mcp@2.1.3
│   ├── de2bd410102f5eda/              #  25 MB  -- @modelcontextprotocol/server-sequential-thinking@2025.12.18
│   ├── 9ca470fa61f45e06/              #  23 MB  -- typescript@5.9.3
│   ├── 15b07286cbcc3329/              #  23 MB  -- @modelcontextprotocol/server-memory@2026.1.26
│   ├── 69c381f8ad94b576/              #  22 MB  -- vitest@4.0.18
│   ├── 3dfbf5a9eea4a1b3/              #  22 MB  -- @modelcontextprotocol/server-github@2025.4.8
│   ├── 9833c18b2d85bc59/              #  14 MB  -- @playwright/mcp@0.0.68
│   └── 1d6e82a4126006c4/              #  32 KB  -- tsc@2.0.4
├── _prebuilds/                        # 24 KB  -- native addon prebuilds
│   └── 9f979f-keytar-v7.9.0-napi-v3-darwin-arm64.tar.gz
└── _update-notifier-last-checked      # 0 B    -- update check timestamp
```

## 3. Contextual Summary

`.npm` is the **npm (Node Package Manager) local cache and runtime directory**. It serves three purposes:

1. **Content-Addressable Cache (`_cacache`)** -- 977 MB of downloaded package tarballs and metadata
2. **npx Execution Sandboxes (`_npx`)** -- 313 MB across 11 cached environments. Notably, 7 of the 11 sandboxes are **MCP (Model Context Protocol) servers** -- direct evidence of the Phoenix Echo infrastructure
3. **Debug Logs (`_logs`)** -- Rolling npm debug logs showing Claude Code update checks every ~30 minutes

The `_prebuilds` directory holds a single native addon prebuild for `keytar` (credential storage), arm64 architecture, confirming Apple Silicon platform.

## 4. Data Summary

| Component | Size | File Count | % of Total |
|---|---|---|---|
| `_cacache` (package cache) | 977 MB | ~25,800 | 75.2% |
| `_npx` (npx sandboxes) | 313 MB | ~50 | 24.1% |
| `_logs` (debug logs) | 44 KB | 11 | <0.01% |
| `_prebuilds` (native addons) | 24 KB | 1 | <0.01% |
| **TOTAL** | **1.3 GB** | **25,853** | **100%** |

## 5. File Detail

### MCP Server Inventory (from npx cache)

| Package | Version | Size |
|---|---|---|
| `@sylphx/pdf-reader-mcp` | 2.3.0 | 91 MB |
| `mcp-server-fetch-typescript` | 0.1.1 | 36 MB |
| `@modelcontextprotocol/server-filesystem` | 2026.1.14 | 29 MB |
| `@upstash/context7-mcp` | 2.1.3 | 28 MB |
| `@modelcontextprotocol/server-sequential-thinking` | 2025.12.18 | 25 MB |
| `@modelcontextprotocol/server-memory` | 2026.1.26 | 23 MB |
| `@modelcontextprotocol/server-github` | 2025.4.8 | 22 MB |
| `@playwright/mcp` | 0.0.68 | 14 MB |

### Latest Debug Log

Shows npm 10.9.4, Node v22.22.0 via nvm, Claude Code update check (`npm view @anthropic-ai/claude-code@stable version`).

## 6. Future Recommendations

### Canonical Name
```
cache__npm__package-cache-and-npx-runtime__undated
```

### Maintenance Recommendations
- **Cache cleanup opportunity**: 977 MB `_cacache` is safe to prune with `npm cache clean --force`
- **npx sandbox review**: 313 MB in sandboxes. Remove unused MCP server caches.
- **Do not relocate**: This directory must remain at `~/.npm`

## 7. Hazard/Skip Log

| File | Found? |
|---|---|
| `CLAUDE.md` | Not found |
| `ECHO.md` | Not found |
| `KINDLE.md` | Not found |
| `CODEX.md` | Not found |
| `AGENTS.md` | Not found |

No hazard files detected.

## 8. Open Questions

1. **Claude Code update checker cadence** -- Running approximately every 30 minutes. Built-in to Claude Code?
2. **npx cache staleness** -- Are all 11 sandboxes actively used? Some MCP servers may be stale.
3. **Global .npmrc** -- Referenced in debug logs but not mapped here.

## 9. Confidence Notes

| Aspect | Confidence | Notes |
|---|---|---|
| Directory structure | **High** | Full `find` and `du` verified |
| Size measurements | **High** | `du -sh` at every level |
| npx package identification | **High** | Read `package.json` from every sandbox |
| MCP server inventory | **High** | Directly extracted from package.json |

Overall confidence: **High**.

## 10. Adversarial Review

**Challenge 1: Is 1.3 GB concerning?**
No. Typical for active Node.js development with multiple projects and 8 MCP servers.

**Challenge 2: Could sensitive data exist?**
Possible in `.npmrc` (outside this directory) but unlikely in this tree. `_cacache` stores public npm packages.

**Challenge 3: Is anything here user-created content?**
No. The entire `.npm` directory is regenerable. Zero backup priority.

**Challenge 4: Are the MCP server versions current?**
Worth verifying. `@modelcontextprotocol/server-github@2025.4.8` is nearly a year old. Stale npx caches may not pick up security updates.

---

*End of Report -- Root Index 015 -- `.npm`*
