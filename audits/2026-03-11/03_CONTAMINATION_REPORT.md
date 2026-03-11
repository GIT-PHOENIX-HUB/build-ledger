# CONTAMINATION REPORT — Phoenix Electric GitHub Ecosystem
## Forensic Audit 2026-03-11

---

## ERA 1: ServiceTitan Contamination

### CRITICAL — Active Code Still Present

| File | Location | Lines | Type |
|------|----------|-------|------|
| `servicetitan-client.ts` | phoenix-ai-core-staging/servicetitan/ | 467 | Full OAuth client hitting api.servicetitan.io |
| `servicetitan-director.ts` | phoenix-ai-core-staging/servicetitan/ | 457 | ST director class |
| `servicetitan-extended.js` | phoenix-ai-core-staging/servicetitan/ | 1,587 | Extended ST client |
| `servicetitan.js` | phoenix-ai-core-staging/servicetitan/ | 405 | ST JS client |
| `jobs.ts` | phoenix-ai-core-staging/servicetitan/ | 754 | 13 st_* tool definitions |
| `customers.ts` | phoenix-ai-core-staging/servicetitan/ | 558 | 8 st_* tool definitions |
| `dispatch.ts` | phoenix-ai-core-staging/servicetitan/ | 605 | 9 st_* tool definitions |
| `estimates.ts` | phoenix-ai-core-staging/servicetitan/ | 544 | 8 st_* tool definitions |
| `invoices.ts` | phoenix-ai-core-staging/servicetitan/ | 606 | 10 st_* tool definitions |
| `inventory.ts` | phoenix-ai-core-staging/servicetitan/ | 315 | 4 st_* tool definitions |
| `memberships.ts` | phoenix-ai-core-staging/servicetitan/ | 611 | 10 st_* tool definitions |
| `pricebook.ts` | phoenix-ai-core-staging/servicetitan/ | 706 | 11 st_* tool definitions |
| **TOTAL** | **14 files** | **8,115 lines** | **ALL DEAD CODE** |

**Additional ST contamination:**
- `mcp/tool-registry.ts` (164 lines) — @deprecated, still imports ../servicetitan/*
- `mcp/tool-executor.ts` (302 lines) — @deprecated, still imports ../servicetitan/*
- `index.ts` — exports `ServiceTitanClient as ServiceFusionClient` alias
- `function/index.ts` — exports `ServiceTitanDirector as ServiceFusionDirector` alias
- `configs/mcp-servers/servicetitan-config.json` — real ST tenant ID 1493882547

**The refactor/purge-servicetitan branch exists but the purge is INCOMPLETE.**

### HIGH — Misnamed Files (Content is SF, Name Says ST)

| File | Repo | Issue |
|------|------|-------|
| `configs/mcp-servers/servicetitan-config.json` | phoenix-ai-core | Named ST, content is SF config |
| `configs/claude/contexts/servicetitan.md` | phoenix-ai-core | Named ST, content is SF context |

### MEDIUM — PowerShell Runbooks with ST API Calls

| File | Repo | Specific Contamination |
|------|------|----------------------|
| `TechnicianDailyReports.ps1` | echo-gateway + echo-bot | `Get-ServiceTitanToken`, `auth.servicetitan.io`, `api.servicetitan.io` |
| `WeeklyReport.ps1` | echo-gateway + echo-bot | `Invoke-ServiceTitanAPI`, `api.servicetitan.io` |
| `Process-Customers.ps1` | echo-gateway + echo-bot | "ServiceTitan Customer Export" reference |
| `Receipt-Extractor.ps1` | echo-gateway + echo-bot | ServiceTitan mention |

### LOW — Documentation References (Appropriate Context)

| Repo | Nature |
|------|--------|
| twin-peaks | Runbooks DOCUMENT the contamination with remediation steps |
| phoenix-echo-bot/docs/ | Vision docs reference ST history |
| phoenix-builder-space-knowledge | Has `servicetitan.js` and `servicetitan-extended.js` in src/ |

---

## ERA 2: OpenClaw Contamination

### CRITICAL — Active in Production Manifest

| File | Line | Content | Fix |
|------|------|---------|-----|
| `phoenix-ai-core/teams-app/manifest.json` | 18 | `"Built on OpenClaw."` | Remove — this is the PUBLIC Teams app description |

### HIGH — .clawhub Directory and OpenClaw Skills

| File | Repo | Issue |
|------|------|-------|
| `.clawhub/lock.json` | phoenix-ai-core | OpenClaw lock file at repo root |
| `skills/` (36 folders) | phoenix-ai-core | All 36 skills in OpenClaw package.json format |
| `skills/agent-chronicle/package.json` | phoenix-ai-core | `"name": "@openclaw/agent-chronicle"` |
| `skills/tubescribe/SKILL.md` | phoenix-ai-core | `metadata.openclaw` block |
| `vps-sync/clawrouter/` | phoenix-ai-core | Full OpenClaw router TypeScript package |

### MEDIUM — Historical References

| Repo | Files | Nature |
|------|-------|--------|
| Phoenix-Echo-Gateway | public-vps/pages/docs.js, docs-vps.js | "Originally built on OpenClaw" in UI text |
| Phoenix-Echo-Gateway | workspace-vps/MEMORY.md.bak | "Old VPS: OpenClaw fallback" |
| Phoenix-Echo-Gateway | .phoenix-sessions-vps/*.checkpoint.json | Conversation transcripts referencing OC history |

---

## ERA 3: Dead 10-Agent References (PA-08, PA-09, PA-10)

### CLEAN — No Active References Found

**Zero matches for PA-08, PA-09, or PA-10 across all 18 repos.**

The 10→7 migration is cleanly documented in:
- `phoenix-ai-core-staging/configs/agent_registry.json` — explicit mapping table
- `phoenix-ai-core-staging/docs/vision/PHOENIX_7_AGENT_CHANGELOG.md` — changelog

---

## OTHER CONTAMINATION

### 192GB RAM Error (Actual: 96GB)

| File | Line | Content | Fix |
|------|------|---------|-----|
| `phoenix-command-app/README.md` | 47 | "Mac Studio M3 Ultra (192GB unified memory)" | Change to 96GB |
| `phoenix-command-app/README.md` | 383 | "M3 Ultra, 192GB unified memory" | Change to 96GB |

twin-peaks mentions 192GB but only as "upgrade path" — correct in context.

### Hardcoded Secrets / Azure IDs in Code

| File | Repo | Content |
|------|------|---------|
| `src/brain-blueprint.js:627-634` | echo-gateway + echo-bot | Azure tenant ID, App ID |
| `src/auth/msalConfig.js:5-6` | phoenix-command-app | Azure Client ID + Tenant ID |
| `.env.example` | phoenix-ai-core-staging | Real Azure tenant + subscription IDs |
| `configs/mcp-servers/servicetitan-config.json` | staging | Real ST tenant ID 1493882547 |

### SECURITY ALERT

| File | Location | Issue |
|------|----------|-------|
| `Chrome Passwords.csv` | ~/GitHub/Documents/sharepoint/ | **PLAINTEXT CREDENTIALS FILE IN ~/GitHub/** |

---

## CONTAMINATION SEVERITY SUMMARY

| Era | Critical | High | Medium | Low |
|-----|----------|------|--------|-----|
| ServiceTitan | 8,115 lines dead code | 2 misnamed files | 4 PS1 scripts | docs only |
| OpenClaw | 1 Teams manifest | .clawhub + 36 skills | 2 UI text refs | historical |
| 10-Agent | 0 | 0 | 0 | 0 |
| Other | Chrome Passwords.csv | 192GB error x2 | Azure IDs in code | — |
