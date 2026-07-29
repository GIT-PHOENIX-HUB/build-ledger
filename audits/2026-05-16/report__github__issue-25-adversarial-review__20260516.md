# Adversarial Review — Issue #25 (GitHub Infrastructure Buildout Plan)

**Class:** report | **Scope:** github | **Subject:** issue-25-adversarial-review | **Date:** 20260516  
**Agent:** Codex (adversarial reviewer)  
**Intent:** Tighten accuracy, scope, and proof so this issue survives future scrutiny and becomes executable (not inspirational).

---

## 0) What I can verify from GitHub API surface (this session)

### Org repos visible to the API token used here (public): 8

- `GIT-PHOENIX-HUB/build-ledger`
- `GIT-PHOENIX-HUB/browser-echo`
- `GIT-PHOENIX-HUB/phoenix-command-app`
- `GIT-PHOENIX-HUB/phoenix-current-software`
- `GIT-PHOENIX-HUB/phoenix-echo-bot`
- `GIT-PHOENIX-HUB/phoenix-electric-miniapp`
- `GIT-PHOENIX-HUB/phoenix-toolbox`
- `GIT-PHOENIX-HUB/phoenix-sharepoint-theme` (archived)

**Important scoping note:** If the org truly has “28 repos”, the delta is almost certainly **private repos not visible via this surface**. The issue should explicitly separate *public* vs *private* counts.

### Workflows present (public scan)

- No `.github/workflows/` found (via code search) in: `phoenix-current-software`, `phoenix-toolbox`, `browser-echo`, `phoenix-command-app`.
- Workflows *do* exist in `phoenix-echo-bot`:
  - `.github/workflows/full-build-ci.yml`
  - `.github/workflows/consolidation_ci.yml`

### CODEOWNERS and templates (public scan)

- CODEOWNERS exists in at least: `build-ledger`, `phoenix-toolbox`, `browser-echo`, `phoenix-command-app`.
- No `.github/ISSUE_TEMPLATE/` found in org repos visible here.

---

## 1) Accuracy fixes needed in the issue body (high impact, low effort)

1. **Repo count + fleet map must be explicitly scoped.**  
   Write: “28 repos total (X public, Y private)” and list them as `org/repo` with visibility.

2. **Fleet map has duplicates / inconsistencies.**  
   `phoenix-taproot` is listed twice. Several entries appear to be “in org” without proof. Normalize the table and add a “source of truth” column (API list, screenshot, or export).

3. **CI claim needs correction (counterexample exists).**  
   The issue says “no workflows except phoenix-current-software”; the public surface shows workflows in `phoenix-echo-bot` and none in `phoenix-current-software`. If the intended meaning is “no meaningful gated CI”, redefine it and attach evidence.

4. **Branch protection / rulesets claims need evidence.**  
   Branch protection cannot be validated from repo trees alone. Either attach screenshots/exports or rephrase as “not confirmed enforced org-wide; evidence pending”.

---

## 2) What’s strong (keep it)

- Governance-first ordering (2FA, second owner, rulesets) is correct.
- Clear split between documented vs enforced governance is correct.
- Decision table (D1–D6) is the right shape: bounded options, default-safe behavior.

---

## 3) What’s missing (make it executable)

### 3.1 Evidence appendix (“audit artifacts”)

For each gap, add a one-line “Evidence:” pointer:

- Rulesets / branch protections: screenshot bundle + timestamp
- Required checks: screenshot of branch rules or checks required
- 2FA: screenshot of org auth/security settings + member readiness checklist
- Owners: screenshot of org roles (redact if needed)
- CI coverage: repos × workflows discovered × which checks are required
- Environments/secrets: environment list + secret scope proof

### 3.2 Day-1 PR set (the parts you can actually ship)

Even if Phase 0/1 are mostly UI actions, the issue should enumerate immediately-shippable PRs:

- Add `build-ledger` issue templates (intake discipline)
- Add minimal CI to each code repo that runs existing commands (no new tooling)
- Add `dependabot.yml` only where a package manager exists

### 3.3 Ruleset-first nuance

Org rulesets are right as the *baseline*, but repo-specific needs still require overrides:

- org ruleset = baseline guardrails (PR required, force-push blocked, etc.)
- repo ruleset overrides = stricter per repo and/or per path (identity files, deployments)

Call this out explicitly so “org ruleset created” is not treated as “problem solved”.

---

## 4) Recommended rewrite of the CRITICAL section (tight, defensible)

Replace absolute statements (“Zero branch protection observed across all 28 repos”) with auditable statements:

- “Branch protection/rulesets: not confirmed enforced org-wide. Evidence: <link>.”
- “Required checks: not confirmed enforced org-wide. Evidence: <link>.”
- “Owner redundancy: GitHub UI flags 1 owner. Evidence: <link>.”
- “2FA enforcement: not enabled org-wide. Evidence: <link>.”

---

## 5) One change that reduces chaos immediately

Add an “Infra Change Request” intake template in `build-ledger` that forces:

- target scope (org-level vs repo-level)
- evidence links (screenshots/exports)
- rollback plan
- blast radius assessment
- decision needed from Shane (yes/no)

---

## Verdict

**HOLDS (REFINE).** Direction is high-value, but it needs (1) scoping corrections, (2) at least one factual correction (CI/workflows), and (3) an evidence appendix so future reviewers can independently verify each gap claim.
