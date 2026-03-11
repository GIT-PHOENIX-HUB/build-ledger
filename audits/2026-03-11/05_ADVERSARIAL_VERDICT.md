# ADVERSARIAL VERDICT — Wrecking Ball Final Review
## 2026-03-11 | All 18 Repos Audited

---

## VERDICT: PASS_WITH_NOTED_DEFERS

The audit is solid. The findings are evidence-based with MD5 checksums, exact file paths,
and line numbers. The consolidation plan is logical and uses the proven phoenix-filesystem
methodology. However, 5 items block full PASS.

---

## BLOCKS (must resolve before execution)

### BLOCK-1: PhoenixMailCourier Expiration (CRITICAL)
- **Finding:** Azure app registration expires March 28, 2026 (17 days)
- **Evidence:** phoenix-command-app/src/auth/msalConfig.js:5-6 hardcodes Client ID
- **Fix:** Renew in Azure Portal NOW, independent of unification
- **Verify:** Azure Portal → App Registrations → Phoenix Mail Courier → Certificates & secrets
- **WAITING_ON_SHANE**

### BLOCK-2: Chrome Passwords.csv (SECURITY)
- **Finding:** Plaintext browser credentials file at ~/GitHub/Documents/sharepoint/Chrome Passwords.csv
- **Evidence:** 394KB CSV file containing exported passwords
- **Fix:** Move to secure location (Keychain, vault, or encrypted drive). ARCHIVE at minimum.
- **Verify:** ls ~/GitHub/Documents/sharepoint/Chrome\ Passwords.csv returns "not found"
- **WAITING_ON_SHANE**

### BLOCK-3: brain-blueprint.js Canonical Check
- **Finding:** 914-line file in phoenix-echo-bot may be unique
- **Evidence:** MD5 differs between echo-gateway and echo-bot versions
- **Fix:** Confirmed — file EXISTS in echo-gateway (diverged slightly). The echo-gateway
  version is canonical. The echo-bot version has older Key Vault secret names.
- **Status:** RESOLVED — echo-gateway version is canonical. Safe to archive echo-bot.

### BLOCK-4: PowerShell Runbook Active Use Check
- **Finding:** 10 PowerShell runbooks (~9.5K lines) may be in active Azure Automation use
- **Evidence:** TechnicianDailyReports.ps1 and WeeklyReport.ps1 call api.servicetitan.io
- **Fix:** CANNOT clean ST contamination in runbooks until we know if they're still running
- **Verify:** Check Azure Portal → Automation Account → Runbooks → Recent jobs
- **WAITING_ON_SHANE**

### BLOCK-5: Shane Must Choose Gateway + Staging Fate
- **Finding:** Consolidation plan has 2 decision branches that change everything
- **Evidence:** Gateway can stay separate or merge. Staging can become core or stay parallel.
- **Fix:** Shane decides. Plan adapts.
- **WAITING_ON_SHANE**

---

## DEFERS (noted, not blocking)

### DEFER-1: Remaining 5 Deliverables
- REFERENCE_UPDATE_MAP.md, ARCHIVE_MANIFEST.md, REPO_GOVERNANCE.md, CONTAMINATION_EDIT_PLAN.md,
  INTEGRATION_GATE_VERDICT.md
- These depend on Shane's decisions above
- Will produce in next session after decisions are made

### DEFER-2: Infrastructure Audit (Studio/VPS/OneDrive)
- Shane requested scope expansion to check actual deployed state
- Not yet executed — requires SSH to Studio and VPS
- Flagged for next session

### DEFER-3: Browser Audit Cross-Reference
- Shane has a parallel browser audit to share
- Discrepancies between the two audits must be resolved before execution
- Flagged for next session

### DEFER-4: service-fusion Tool Prefix Inconsistency
- workflows.md, financials.md, rexel-integration.md use `sf_` prefix
- api-reference.md and SKILL.md use `servicefusion_` prefix
- Documentation-only issue, not runtime breaking
- Fix when cleaning up service-fusion docs

### DEFER-5: taproot-blitz-build Has No Remote
- 28 untracked files, 4 committed, MacBook-only
- Contains live VPS session JSONL data
- Not urgent but should be pushed to GitHub for backup

---

## STRENGTHS OF THE AUDIT

1. **MD5-verified duplication finding** — not assumptions, actual checksums
2. **All 18 repos read** — nothing skipped, every file tree mapped
3. **Three contamination eras tracked independently** — ST, OpenClaw, 10-agent
4. **Extra local dirs audited** — found Chrome Passwords.csv nobody knew about
5. **phoenix-filesystem methodology identified** as the execution blueprint
6. **Time-critical item found** — PhoenixMailCourier expiry is a real countdown
7. **Quantified everything** — LOC, file counts, commit counts, branch states

## WEAKNESSES / GAPS

1. **No function-level diff** on the staging monorepo's 4 copies — we know they're copies
   but don't know which is most current at the function level
2. **VPS deployed state unknown** — what's actually running vs what's in the repos
3. **Studio state unknown** — ~/Phoenix-Echo-Gateway/ was referenced but not local to MacBook
4. **OneDrive/SharePoint not checked** — may contain critical planning docs
5. **The 80+ unstaged modifications in phoenix-ai-core** were not read — could contain
   important work that would be lost if the branch is reset
