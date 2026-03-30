# STATUS CHECK — What's Done, What's Incomplete, What's Not Started
**Source:** Apple Notes, created 2026-03-29

---

## DONE

- Phase 0: Gold Snapshot — 24/24 repos, SHA256 verified
- Phase 1: Governance Lock — TIER 1 decisions recorded, 24 governance docs written, GitHub Topics applied, 18 integration PRs open
- Phase 5A (partial): Hub structure created in phoenix-plugins (/skills/, /mcps/, /plugins/), extractions staged locally
- Gateway V1: LIVE on VPS, deploy pipeline green
- CG-01 + CS-01: Authenticated on MacBook, MCP bridge verified
- 24-repo local triage: All repos have 3-folder structure + VERIFICATION.md
- Runbook: Written, gate-reviewed, PASSED
- GIT-PHOENIX-HUB org: Created, teams configured, rulesets active
- 2 repos archived on GitHub: gateway, rexel

## INCOMPLETE

- Phase 1 publish: 18 PRs open but NOT merged yet (need Browser or Shane to merge)
- build-ledger: rebase conflict, needs manual resolution
- phoenix-ai-core: 3 remote commits ahead, needs careful integration
- phoenix-builder-space-knowledge: branch protection blocks CLI merge
- 2 READMEs missing: phoenix-electric-miniapp, phoenix-showcase
- DUAL_CODEX_SETUP closeout: Studio replication not done, project docs not reconciled
- Security prep: .gitignore additions done locally, actual token rotation + BFG NOT done

## NOT STARTED

- Phase 2: Security Remediation — no secrets rotated, no BFG runs, no scanning enabled
- Phase 3: Contracts Extraction — @phoenix/contracts package not created
- Phase 4: Pipeline Wiring — bot not reconnected to Gateway
- Phase 5A: Hub extractions not verified working in destination
- Phase 5B: No repos archived based on extraction verification, monorepo not seeded
- Phase 5C: No READMEs rewritten to tier standards
- Phase 6: No CI workflows deployed, no Dependabot enabled
- V3 Gateway build
- Studio Codex replication

---

**Bottom line:** Governance + triage + infrastructure are done. Security, code work, pipeline, and consolidation haven't started. The 18 open PRs are the bridge — once merged, the local transformation is published and we move to Phase 2.
