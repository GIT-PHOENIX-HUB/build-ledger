# CONTAMINATION EDIT PLAN — Line-by-Line Cleanup Spec
## Forensic Audit 2026-03-11 | Clean-Room Agent
## STATUS: READY — Requires Shane GO per phase

---

## EXECUTION RULES

1. **NO DELETE** — all removed code goes to phoenix-archive first
2. **Every edit gets a TX-#### identifier** per phoenix-filesystem methodology
3. **Verify after each PR** — grep confirms zero remaining contamination
4. **PowerShell edits BLOCKED** until Shane confirms runbook active/inactive status

---

## PHASE A: ServiceTitan Source Code (phoenix-ai-core-staging)

### TX-A001: Archive servicetitan/ directory (8,115 lines)
- **Action:** MOVE entire `servicetitan/` directory to phoenix-archive
- **Path:** `~/GitHub/phoenix-ai-core-staging/servicetitan/`
- **Files:** 14 (.ts and .js files — client, director, jobs, customers, dispatch, estimates, invoices, inventory, memberships, pricebook, plus compiled output)
- **Verify:** `ls ~/GitHub/phoenix-ai-core-staging/servicetitan/` returns "not found"

### TX-A002: Clean index.ts exports
- **File:** `~/GitHub/phoenix-ai-core-staging/index.ts`
- **Line 9:** `* - servicetitan: Service Fusion API client...` → REMOVE reference to legacy path
- **Lines 28-33:** DELETE the 6 lines of @deprecated ServiceTitan re-exports:
  ```
  /** @deprecated Import from @phoenix/servicefusion-mcp instead. */
  export { ServiceTitanClient as ServiceFusionClient, getServiceTitanClient as getServiceFusionClient } from './servicetitan/servicetitan-client';
  /** @deprecated Import from @phoenix/servicefusion-mcp instead. */
  export { ServiceTitanDirector as ServiceFusionDirector } from './servicetitan/servicetitan-director';
  ```
- **Line 43:** DELETE `export type { PaginatedResponse } from './servicetitan/servicetitan-client';`

### TX-A003: Clean function/index.ts exports
- **File:** `~/GitHub/phoenix-ai-core-staging/function/index.ts`
- **Lines 13-16:** DELETE the 4 lines of @deprecated ServiceTitan re-exports:
  ```
  /** @deprecated Import from @phoenix/servicefusion-mcp instead. Legacy aliases from servicetitan/ directory. */
  export { ServiceTitanDirector as ServiceFusionDirector } from '../servicetitan/servicetitan-director';
  /** @deprecated Legacy types from servicetitan/ directory. */
  export type { ServiceTitanDirectorConfig as ServiceFusionDirectorConfig, ServiceTitanClient as ServiceFusionClient } from '../servicetitan/servicetitan-director';
  ```

### TX-A004: Archive mcp/tool-registry.ts (164 lines)
- **File:** `~/GitHub/phoenix-ai-core-staging/mcp/tool-registry.ts`
- **Action:** ARCHIVE entire file to phoenix-archive (imports from servicetitan/)
- **Note:** Marked @deprecated — new tools use @phoenix/servicefusion-mcp

### TX-A005: Archive mcp/tool-executor.ts (302 lines)
- **File:** `~/GitHub/phoenix-ai-core-staging/mcp/tool-executor.ts`
- **Action:** ARCHIVE entire file to phoenix-archive (routes st_* tools to servicetitan/)
- **Note:** Marked @deprecated — new tools use @phoenix/servicefusion-mcp

### TX-A006: Archive servicetitan-config.json
- **File:** `~/GitHub/phoenix-ai-core-staging/configs/mcp-servers/servicetitan-config.json`
- **Action:** ARCHIVE to phoenix-archive (contains real ST tenant ID 1493882547)
- **Security:** This file has a live tenant ID — archive, don't just delete

### TX-A007: Verify staging purge
- **Command:** `grep -ri "servicetitan" ~/GitHub/phoenix-ai-core-staging/src/ ~/GitHub/phoenix-ai-core-staging/packages/ --include="*.ts" --include="*.js"`
- **Expected:** 0 matches (servicefusion-mcp package should have NO ST references)

---

## PHASE B: ServiceTitan Misnamed Files (phoenix-ai-core)

### TX-B001: Rename servicetitan-config.json
- **File:** `~/GitHub/phoenix-ai-core/configs/mcp-servers/servicetitan-config.json`
- **Action:** RENAME to `servicefusion-config.json`
- **Content:** Unchanged (already has SF content, just wrong filename)

### TX-B002: Rename servicetitan.md context
- **File:** `~/GitHub/phoenix-ai-core/configs/claude/contexts/servicetitan.md`
- **Action:** RENAME to `servicefusion.md`
- **Content:** Unchanged (already has SF content, just wrong filename)

### TX-B003: Verify ai-core rename
- **Command:** `find ~/GitHub/phoenix-ai-core/ -name "*servicetitan*" -not -path "*/.git/*"`
- **Expected:** 0 matches

---

## PHASE C: OpenClaw Contamination (phoenix-ai-core)

### TX-C001: Fix Teams manifest (PUBLIC-FACING)
- **File:** `~/GitHub/phoenix-ai-core/teams-app/manifest.json`
- **Line 18:** `"Built on OpenClaw."` → REMOVE that phrase
- **Replace with:** `"Sovereign AI orchestration for Phoenix Electric."`
- **Risk:** None — cosmetic but this is the public Teams app description

### TX-C002: Archive .clawhub/ directory
- **Path:** `~/GitHub/phoenix-ai-core/.clawhub/`
- **Contents:** `lock.json` (9 lines — OpenClaw metadata)
- **Action:** ARCHIVE to phoenix-archive, then remove

### TX-C003: Archive vps-sync/clawrouter/
- **Path:** `~/GitHub/phoenix-ai-core/vps-sync/clawrouter/`
- **Contents:** Full OpenClaw router TypeScript package (~25 files)
- **Action:** ARCHIVE to phoenix-archive, then remove
- **Verify:** Not imported by any active code (search for "clawrouter" in imports)

### TX-C004: Clean 36 skill package.json files
- **Path:** `~/GitHub/phoenix-ai-core/skills/*/package.json`
- **Action per file:** Replace `@openclaw/` with `@phoenix/` in name field
- **Action per file:** Remove `"openclaw"` from keywords array
- **Action per file:** Replace `"homepage": "https://clawhub.ai/..."` with `"homepage": "https://phoenixelectric.life/skills/..."`
- **Action per file:** Rename `"openclaw": {` metadata block to `"phoenix": {`
- **Example (agent-chronicle/package.json):**
  - Line 2: `"@openclaw/agent-chronicle"` → `"@phoenix/agent-chronicle"`
  - Line 8: `"openclaw"` keyword → `"phoenix"`
  - Line 23: `"homepage": "https://clawhub.ai/..."` → `"homepage": "https://phoenixelectric.life/skills/agent-chronicle"`
  - Line 27: `"openclaw": {` → `"phoenix": {`
- **Verify:** `grep -ri "openclaw" ~/GitHub/phoenix-ai-core/skills/ --include="*.json"` returns 0

### TX-C005: Archive OpenClaw skill metadata reference
- **File:** `~/GitHub/phoenix-ai-core/skills/tubescribe/SKILL.md`
- **Action:** Remove `metadata.openclaw` block if present

---

## PHASE D: OpenClaw Contamination (Phoenix-Echo-Gateway)

### TX-D001: Clean docs.js OpenClaw references
- **File:** `~/GitHub/phoenix-echo-gateway/public-vps/pages/docs.js`
- **Line ~506:** `"Originally built on OpenClaw (open source)"` → `"Originally built with open-source AI patterns"`
- **Line ~543:** `"OpenClaw Parity (extended thinking, branching)"` → `"Advanced AI Capabilities (extended thinking, branching)"`

### TX-D002: Clean docs-vps.js OpenClaw references
- **File:** `~/GitHub/phoenix-echo-gateway/public-vps/pages/docs-vps.js`
- **Line ~445:** `"Originally built on OpenClaw (open source)"` → `"Originally built with open-source AI patterns"`
- **Line ~482:** `"OpenClaw Parity (extended thinking, branching)"` → `"Advanced AI Capabilities (extended thinking, branching)"`

### TX-D003: Verify gateway OpenClaw purge
- **Command:** `grep -ri "openclaw" ~/GitHub/phoenix-echo-gateway/ --include="*.js" --include="*.json" --include="*.ts" | grep -v ".git/" | grep -v "node_modules/" | grep -v ".checkpoint.json" | grep -v "MEMORY.md.bak"`
- **Expected:** 0 matches (historical session files and backups are OK to keep)

---

## PHASE E: 192GB RAM Error (phoenix-command-app)

### TX-E001: Fix README line 47
- **File:** `~/phoenix-command-app/README.md`
- **Line 47:** `"Mac Studio M3 Ultra (192GB unified memory)"` → `"Mac Studio M3 Ultra (96GB unified memory)"`

### TX-E002: Fix README line 383
- **File:** `~/phoenix-command-app/README.md`
- **Line 383:** `"M3 Ultra, 192GB unified memory"` → `"M3 Ultra, 96GB unified memory"`

---

## PHASE F: PowerShell ST Contamination (BLOCKED — WAITING_ON_SHANE)

### STATUS: Cannot execute until Shane confirms runbook active/inactive status

### TX-F001 through TX-F004: PowerShell runbook edits
- **Files affected:**
  - `~/GitHub/phoenix-echo-gateway/automation/runbooks/InvoiceCollection.ps1` (8 ST refs)
  - `~/GitHub/phoenix-echo-gateway/automation/runbooks/TechnicianDailyReports.ps1` (6 ST refs)
  - `~/GitHub/phoenix-echo-gateway/automation/runbooks/WeeklyReport.ps1` (2 ST refs)
  - `~/GitHub/phoenix-echo-gateway/automation/runbooks/MorningReport.ps1` (2 ST refs)
- **Action:** Replace `api.servicetitan.io` → `api.servicefusion.com`, update auth patterns
- **Risk:** HIGH — if these are active Azure Automation runbooks, editing breaks production
- **BLOCKED until:** Shane checks Azure Portal → Automation Account → Runbooks → Recent jobs

---

## PHASE G: Security Items

### TX-G001: Chrome Passwords.csv (MANUAL — NOT A GIT OP)
- **File:** `~/GitHub/Documents/sharepoint/Chrome Passwords.csv`
- **Action:** MOVE to encrypted location (Keychain, vault, or encrypted drive)
- **Verify:** `ls ~/GitHub/Documents/sharepoint/Chrome\ Passwords.csv` returns "not found"
- **WAITING_ON_SHANE**

### TX-G002: PhoenixMailCourier renewal (AZURE PORTAL — NOT A GIT OP)
- **Target:** Azure Portal → App Registrations → Phoenix Mail Courier
- **Action:** Renew certificates & secrets BEFORE March 28, 2026
- **If rotated:** Update Client ID in `~/phoenix-command-app/src/auth/msalConfig.js:5-6`
- **WAITING_ON_SHANE**

---

## EXECUTION SUMMARY

| Phase | TXs | Lines Affected | Status |
|-------|-----|---------------|--------|
| A: ST Source Code | 7 | ~8,700 | READY |
| B: ST Misnamed Files | 3 | 2 files renamed | READY |
| C: OpenClaw (ai-core) | 5 | ~200+ across 36+ files | READY |
| D: OpenClaw (gateway) | 3 | 4 line edits | READY |
| E: 192GB RAM Error | 2 | 2 line edits | READY |
| F: PowerShell ST | 4 | ~20 line edits | **BLOCKED** |
| G: Security | 2 | Manual actions | **BLOCKED** |
| **TOTAL** | **26** | **~9,000 lines** | **5/7 READY** |

---

## POST-CLEANUP VERIFICATION

After all phases complete, run this master verification:

```bash
# ServiceTitan check (should return 0 outside of archive/)
grep -ri "servicetitan" ~/GitHub/phoenix-ai-core-staging/ --include="*.ts" --include="*.js" | grep -v ".git/" | grep -v "node_modules/" | grep -v "dist/"

# OpenClaw check (should return 0 outside of historical files)
grep -ri "openclaw" ~/GitHub/phoenix-ai-core/ --include="*.json" --include="*.js" --include="*.ts" | grep -v ".git/" | grep -v "node_modules/"

# 192GB check
grep -ri "192GB" ~/phoenix-command-app/ --include="*.md"

# Cross-repo full sweep
for repo in ~/GitHub/*/; do
  echo "=== $(basename $repo) ==="
  grep -ri "servicetitan\|openclaw" "$repo" --include="*.ts" --include="*.js" --include="*.json" 2>/dev/null | grep -v ".git/" | grep -v "node_modules/" | grep -v "dist/" | head -5
done
```
