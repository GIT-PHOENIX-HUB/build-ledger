# MAPPING REPORT: .claude.json

## 1. Header

| Field | Value |
|---|---|
| **Team ID** | STUDIO TEAM 1 |
| **Surface** | Studio (ShanesMacStudio) |
| **Assigned Root Index** | 007 |
| **Main Directory Path** | `/Users/shanewarehime/.claude.json` |
| **Total Size** | 82,004 bytes (84K on disk) |
| **Item Count** | 1 |
| **Created** | 2026-03-08 17:09:32 |
| **Last Modified** | 2026-03-08 17:09:32 |
| **Moved or Unavailable** | No |
| **Type Designation** | Config file (Claude Code) |

**Note on timestamps:** The created and modified dates are identical (2026-03-08), which indicates the file was recently regenerated or rewritten in-place by Claude Code, resetting both timestamps. The `firstStartTime` field inside the JSON shows the actual first use date as **2025-11-27**, meaning the user has been running Claude Code for over 3 months. The file is continuously overwritten as a single atomic JSON write by the application.

## 2. File Tree

```
-rw-------  1 shanewarehime  staff  82004 Mar  8 17:09 /Users/shanewarehime/.claude.json
```

Single file. Permissions: owner read/write only (600). No group or other access.

## 3. Contextual Summary

`.claude.json` is the **primary persistent state file for Claude Code** (Anthropic's CLI tool, internally codenamed "Tengu"). It resides in the user's home directory and serves as the single source of truth for:

- **Application preferences** (theme, verbose mode, notification channel, auto-updates)
- **Feature flags** (cached Statsig gates and GrowthBook features -- 120+ feature flags)
- **Project-level configurations** (44 distinct project directories with per-project MCP server definitions, tool permissions, session metrics, cost tracking, and onboarding state)
- **GitHub repository path mappings** (11 repos mapped to local filesystem paths)
- **OAuth account identity** (linked Anthropic account metadata)
- **Usage telemetry** (352 startups, 880,314 prompt queue uses, per-session token counts, costs, FPS metrics)
- **MCP server definitions** (both global and per-project Model Context Protocol server configurations)
- **Skill usage history** (30 tracked skills)

## 4. Data Summary

| Metric | Value |
|---|---|
| **File size** | 82,004 bytes |
| **Lines** | 2,364 |
| **Format** | JSON (single object) |
| **Top-level keys** | 70 |
| **Project entries** | 44 |
| **GitHub repo mappings** | 11 |
| **Feature flags (GrowthBook)** | 120 |
| **Feature gates (Statsig)** | 18 |
| **MCP servers (global)** | 1 (chrome-control) |
| **MCP servers (per-project)** | Multiple (filesystem, memory, thinking, pdf, fetch, github, excel, pdf-forms, doc-edit) |
| **Tracked skills** | 30 |

**Top-level key categories:**

1. **App config** -- `numStartups`, `installMethod`, `autoUpdates`, `theme`, `preferredNotifChannel`, `verbose`
2. **UX state** -- `hasSeenTasksHint`, `hasSeenStashHint`, `hasCompletedOnboarding`, `tipsHistory` (43 tips)
3. **Feature flags/caches** -- `cachedStatsigGates` (18), `cachedDynamicConfigs` (2), `cachedGrowthBookFeatures` (120)
4. **Identity** -- `userID` (SHA-256 hash), `anonymousId`, `oauthAccount` (8 sub-keys)
5. **Project registry** -- `projects` (44 entries, each with MCP servers, tools, metrics, costs)
6. **Repo mapping** -- `githubRepoPaths` (11 repos to local paths)
7. **Global MCP** -- `mcpServers` (1 entry: chrome-control)
8. **Telemetry** -- `promptQueueUseCount`, per-project `lastCost`/`lastModelUsage`/`lastSessionMetrics`
9. **Migration flags** -- `sonnet45MigrationComplete`, `opus45MigrationComplete`, etc.

## 5. File Detail

### Structure and Purpose

The file is a flat JSON object (not nested by section -- all 70 keys are at the top level).

**`projects` (44 entries):** Each key is an absolute filesystem path. Each value contains:
- `allowedTools` -- Tool permission overrides
- `mcpServers` -- Per-project MCP server definitions (command, args, env)
- `enabledMcpjsonServers` / `disabledMcpjsonServers` -- MCP JSON server toggles
- `hasTrustDialogAccepted` -- Trust dialog state
- Session metrics: `lastCost`, `lastModelUsage`, `lastSessionId`, `lastSessionMetrics`, `lastTotalInputTokens`, etc.

**Notable project-level MCP servers found:**
- Home dir (`/Users/shanewarehime`): filesystem, memory, thinking, pdf, fetch, github
- Excel MCP server, PDF forms MCP server, document-edit MCP server (in MCP_VAULT sub-projects)
- Phoenix-configs: memory server with custom `MEMORY_FILE_PATH` env var

**File permissions:** `600` (owner-only read/write), appropriate for a file containing account identifiers and session data.

## 6. Future Recommendations

### Canonical Name Suggestion

```
config__user__claude-code-state__undated.json
```

### Additional Recommendations

1. **Backup consideration:** This file contains the entire project registry, MCP configurations, and account linkage. Loss would require re-onboarding all 44 projects.
2. **Size monitoring:** At 82KB and 2,364 lines, the file is growing with each new project.
3. **Stale project cleanup:** Several project paths reference directories that may no longer exist (e.g., `.Trash/`, `Downloads/` paths). These are dead weight.

## 7. Hazard/Skip Log

| Item | Severity | Status |
|---|---|---|
| `oauthAccount.emailAddress` | MEDIUM | Present in file. **REDACTED** in this report. |
| `oauthAccount.accountUuid` | LOW | Present. REDACTED. |
| `oauthAccount.organizationUuid` | LOW | Present. REDACTED. |
| `oauthAccount.displayName` | LOW | Present. REDACTED. |
| `userID` | LOW | SHA-256 hash. Not directly PII but a stable identifier. |
| `anonymousId` | LOW | Present. REDACTED. Telemetry identifier. |

**No high-severity secrets (API keys, tokens, passwords, JWTs) were detected in the file.**

## 8. Open Questions

1. **Filesystem timestamp anomaly:** Created and modified dates are both 2026-03-08, yet `firstStartTime` is 2025-11-27 and `numStartups` is 352. Claude Code performs atomic full-file rewrites.
2. **Stale project entries:** At least 3-4 project paths reference Trash, Downloads, or paths with unusual naming. Are these intentionally retained?
3. **Global vs per-project MCP server divergence:** The global `mcpServers` has only chrome-control, while the home-directory project has 6 MCP servers.

## 9. Confidence Notes

| Aspect | Confidence | Notes |
|---|---|---|
| File exists and is readable | HIGH | Confirmed via stat, ls, file, and read |
| File purpose identification | HIGH | Structure and key names are well-understood |
| Size and line count | HIGH | Verified via du and wc |
| Secret detection | HIGH | Scanned with regex patterns. Only account metadata found -- no raw secrets. |
| Project count (44) | HIGH | Programmatically extracted |
| Timestamp accuracy | MEDIUM | Filesystem shows 2026-03-08 for both created/modified, but this reflects atomic rewrite, not true creation date |

## 10. Adversarial Review

**Challenge 1: "Is this really just a config file?"**
No -- it is more accurately a **combined config + state + cache + telemetry store**. It contains runtime caches (feature flags), session telemetry (token counts, costs), identity (OAuth account), and project state (44 project registrations).

**Challenge 2: "Are the timestamps trustworthy?"**
No. Claude Code performs atomic full-file JSON writes, which resets filesystem metadata. The only reliable age indicator is the `firstStartTime` field inside the JSON itself.

**Challenge 3: "Could there be secrets you missed?"**
Unlikely but possible. Full-text regex scan covered standard API key formats. The `oauthAccount` contains PII but not authentication tokens.

**Challenge 4: "Is the 82KB size reasonable?"**
On the high side. Bulk comes from 120 feature flags, 44 project entries, and per-session metrics. This will grow unboundedly.

**Challenge 5: "Is the file safe to back up as-is?"**
With caution. Contains `oauthAccount` PII. Should not be committed to public repository.

---

*Report generated 2026-03-08 by STUDIO TEAM 1 | Root Index: 007*
