# REFERENCE UPDATE MAP — Cross-Repo Dependency Trace
## Forensic Audit 2026-03-11 | Pathfinder Agent
## STATUS: COMPLETE — Shows all references that break when repos move

---

## CRITICAL BREAKING REFERENCES (Fix BEFORE archiving)

### REF-01: service-fusion → phoenix-ai-core-staging (HIGHEST RISK)

| Field | Value |
|-------|-------|
| **Source** | `~/GitHub/service-fusion/.mcp.json` line 4 |
| **Reference** | `/Users/shanewarehime/GitHub/phoenix-ai-core-staging/packages/servicefusion-mcp/dist/index.js` |
| **Type** | Hardcoded absolute path to compiled MCP binary |
| **Target Repo** | phoenix-ai-core-staging |
| **Impact** | If staging is archived/renamed, service-fusion MCP server breaks IMMEDIATELY |
| **Fix** | Mirror dist/ to service-fusion repo, OR use env-based path, OR publish to npm |

### REF-02: @phoenix/* namespace imports (HIGH RISK)

| Field | Value |
|-------|-------|
| **Source** | `phoenix-ai-core-staging/packages/phoenix-agent/src/agents/*.ts` |
| **Files** | orchestrator.ts, customer-resolution.ts, smart-scheduling.ts |
| **Reference** | `import type { ServiceFusionClient } from '@phoenix/servicefusion-mcp'` |
| **Type** | TypeScript package imports via monorepo workspace |
| **Impact** | If staging monorepo is restructured, all @phoenix imports break |
| **Fix** | Ensure workspace resolution preserved in whatever becomes canonical core |

### REF-03: Plugin .mcp.json paths

| Field | Value |
|-------|-------|
| **Source** | `~/.claude/plugins/servicefusion/.mcp.json` |
| **Reference** | Points to staging packages/servicefusion-mcp/dist/ |
| **Type** | Claude Code plugin MCP server registration |
| **Impact** | Plugin can't start MCP server if path breaks |
| **Fix** | Update after staging decision (keep/rename/merge) |

---

## MEDIUM RISK REFERENCES (Fix during restructure)

### REF-04: Documentation hardcoded paths

| Source File | Reference | Target |
|------------|-----------|--------|
| `phoenix-ai-core-staging/docs/plans/2026-03-08-servicefusion-plugin-implementation.md` | Multiple lines with `/Users/shanewarehime/GitHub/phoenix-ai-core-staging/` | staging |
| `phoenix-ai-core-staging/docs/plans/2026-03-08-servicefusion-plugin-design.md` | `~/GitHub/phoenix-ai-core-staging/packages/servicefusion-mcp/` | staging |
| `phoenix-ai-core-staging/skills/phoenix-core/README.md` | `file:///Users/shanewarehime/GitHub/phoenix-ai-core-staging` | staging |

### REF-05: settings.local.json commands

| Source File | Reference | Target |
|------------|-----------|--------|
| `phoenix-ai-core-staging/configs/claude/settings.local.json` | `/Users/shanewarehime/GitHub/phoenix-gauntlet-input/01_phoenix-ai-staging/servicetitan/jobs.ts` | gauntlet-input (does not exist) |
| Same file | `/Users/shanewarehime/GitHub/phoenix-builder-space-knowledge` | builder-space (ARCHIVING) |
| Same file | `/Users/shanewarehime/GitHub/phoenix-production-test/integrations/*.js` | prod-test (ARCHIVING) |

### REF-06: Gateway workspace docs

| Source File | Reference | Target |
|------------|-----------|--------|
| `phoenix-echo-gateway/workspace/USER.md` | "phoenix-ai-core (prod), phoenix-ai-core-staging (staging), phoenix-builder-space-knowledge (overflow)" | Multiple repos |
| `phoenix-echo-gateway/workspace-vps/USER.md` | Same references | Same |
| `phoenix-echo-gateway/workspace-studio/USER.md` | Same references | Same |

---

## LOW RISK REFERENCES (Documentation only — update when convenient)

### REF-07: Historical import manifests

| Source File | Reference | Notes |
|------------|-----------|-------|
| `phoenix-ai-core/imports/PRODO_IMPORT_MANIFEST_2026-03-06.md` | `/Users/shanewarehime/GitHub/PHOENIX_UNIFIED_PROD_REPO` | Historical — already executed |
| `phoenix-ai-core/memory/2026-02-18.md` | `/Users/shanewarehime/GitHub/phoenix-echo-gateway/` | Session memory — archive context |

### REF-08: MCP server filesystem config

| Source File | Reference | Notes |
|------------|-----------|-------|
| `phoenix-ai-core-staging/configs/mcp-servers/filesystem-config.json` line 24-26 | `/Users/shanewarehime/GitHub` | Points to GitHub root, not specific repo — low risk |

### REF-09: CLAUDE.md and vision docs

| Source File | Reference | Notes |
|------------|-----------|-------|
| `phoenix-ai-core-staging/configs/claude/CLAUDE.md` | Multi-CLI system references | Dev workflow docs — update post-restructure |
| `phoenix-ai-core-staging/docs/vision/PHOENIX_VISION_ALIGNMENT_RUNBOOK_2026-02-08.md` | packages/* references | Vision docs — stable if monorepo stays together |

---

## ARCHIVAL IMPACT MATRIX

| Repo Being Archived | References TO It | Breaking? | From Where? |
|---------------------|-----------------|-----------|-------------|
| phoenix-echo-bot | 0 found | NO | N/A |
| gateway | 0 found | NO | N/A |
| phoenix-electric-miniapp | 0 found | NO | N/A |
| phoenix-builder-space-knowledge | 1 found | MEDIUM | settings.local.json |
| phoenix-production-test | 1 found | MEDIUM | settings.local.json |
| PHOENIX_UNIFIED_PROD_REPO | 1 found | LOW | import manifest (historical) |
| rexel | 0 found | NO | N/A |
| phoenix-sharepoint-theme | 0 found | NO | N/A |

## STAGING RESTRUCTURE IMPACT

| If Staging Is... | References That Break | Fix Effort |
|-----------------|----------------------|------------|
| **Renamed** (staging → core) | REF-01, REF-02, REF-03, REF-04, REF-05 | HIGH — all paths change |
| **Merged into core** | REF-01, REF-02, REF-03, REF-04 | HIGH — package structure changes |
| **Kept as-is** | None | ZERO — nothing breaks |

---

## FIX PRIORITY ORDER

1. **REF-01** (service-fusion .mcp.json) — Fix IMMEDIATELY when staging decision is made
2. **REF-03** (plugin .mcp.json) — Fix alongside REF-01
3. **REF-02** (@phoenix imports) — Fix if monorepo structure changes
4. **REF-05** (settings.local.json) — Remove references to archived repos
5. **REF-06** (workspace USER.md) — Update repo list after restructure
6. **REF-04** (docs) — Update paths in documentation
7. **REF-07, 08, 09** — Low priority, update when convenient

---

## VALIDATION CHECKLIST

After all references are updated:

```bash
# Find all absolute paths to GitHub repos
grep -rn "/Users/shanewarehime/GitHub/" ~/GitHub/*/src/ ~/GitHub/*/configs/ ~/.claude/plugins/*/ --include="*.json" --include="*.ts" --include="*.js" --include="*.md" 2>/dev/null | grep -v ".git/" | grep -v "node_modules/"

# Find all references to archived repos
for repo in phoenix-echo-bot gateway phoenix-electric-miniapp phoenix-builder-space-knowledge phoenix-production-test PHOENIX_UNIFIED_PROD_REPO rexel phoenix-sharepoint-theme; do
  echo "=== References to $repo ==="
  grep -rn "$repo" ~/GitHub/ ~/.claude/ --include="*.json" --include="*.md" --include="*.ts" --include="*.js" 2>/dev/null | grep -v ".git/" | grep -v "node_modules/" | head -5
done
```
