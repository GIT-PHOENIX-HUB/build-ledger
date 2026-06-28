# ALIGNMENT — Twin Peaks V2 · Instruction-Manual Package

**Date:** 2026-06-12 · **Author:** Phoenix Echo (CLI seat) · **For:** Browser (no local filesystem — this file is your copy), Firedancer, Codex, Copilot drivers, Shane
**Context:** pre-blitz ground truth for Issue #29. The full 214-page docs corpus lives on Shane's machine (`AA PROJECTS/RESEARCH PROJECTS/claude-code-docs/`) — local agents use that shelf; **Browser uses the live-fetch pattern in §3, which gives the identical content.**

---

## 1. Executive summary — the docs refresh (why this matters before the blitz)

Our local Claude Code reference corpus was from **April 27**. The official docs at code.claude.com have since grown **117 → 146 pages (29 added, 0 removed)**. On 2026-06-12 the whole corpus was re-fetched fresh: **146 Claude Code pages + 68 curated platform pages**, zero failures, zero Firecrawl credits (Anthropic serves every doc page as raw `.md`).

What the stale corpus was blind to — and what every blitz agent must now assume as ground:

- **Dynamic workflows are DEFAULT-ON for all users since 2026-06-08** (`en/workflows.md`). Subagent orchestration at scale, rerunnable scripts — and notably token-heavy. Sessions can escalate into multi-agent fan-outs; budget accordingly. Requires Claude Code ≥ v2.1.154.
- New first-class pages: `sessions.md`, `managed-mcp.md`, `mcp-quickstart.md`, `sandbox-environments.md`, `security-guidance.md`, `large-codebases.md`, `worktrees.md`, `agents.md`, `agent-view.md`, `advisor.md`, `prompt-caching.md`, `glossary.md`.
- The platform docs now carry a **complete 25-page Managed Agents section** plus `compaction.md`, `context-editing.md`, `effort.md`, `adaptive-thinking.md`, `task-budgets.md`, `fast-mode.md` — the long-running-session / model-behavior lane, current as of today.
- Current model line includes **Fable** (referenced in 21 corpus files incl. `model-config.md` / changelog). There is **no standalone models-overview page** in either llms.txt index as of 2026-06-12 — model truth lives in model-config + fast-mode + effort + changelog + whats-new weeklies.

**Bottom line:** anything any seat "remembers" about Claude Code behavior from before June is suspect. Check the current page before acting (§3 tells you how, from any seat).

## 2. The 3-legged provisioning doctrine (proven live 2026-06-10 → 06-11)

Provisioning of any agent lane stands on three legs, and **a lane is provisioned only when all three are verified — not before**:

1. **VAULT (secrets leg).** Azure Key Vault `phoenixaaivault` is the single secret store. Code, PRs, and docs carry secret **NAMES only**; values resolve at runtime. The 8 VPS secrets (`echo-vps-` / `firedancer-vps-` × `host/user/ssh-key/known-hosts`) were created and verified 2026-06-10 — including hash-verification of key material without ever printing it.
2. **WORKFLOW (pipeline leg).** GitHub Actions consumes vault secrets by name. The deploy workflow **verifies before any destructive step** (the live example: a missing `python3.12-venv` was caught by adding real temp-venv verification before destructive sync). OIDC keyless auth to Azure is available (`AZURE-OIDC-*` names in vault) and is the hardening direction.
3. **LANE (target + witness leg).** Each agent gets a VPS lane — `echo.phoenixelectric.life` (93.188.161.80) and `firedancer.phoenixelectric.life` (187.77.13.12) — reached via the vault key, **proven by an external witness**: `GET /healthz` → `{"status":"ok","boot_complete":true,"_readiness":"live"}`. The Python gateway v0.1.0 has been LIVE on both lanes since 2026-06-10; Node is preserved as rollback evidence, not running.

Doctrine in one line: **secret resolves → workflow runs green → healthz answers live. Local-only or unverified on any leg = NOT provisioned.** (Same witness-reachability principle as the audit discipline: an artifact the verifier can't reach can't pass.)

## 3. Current docs index — Browser-usable edition

**The fetch pattern (works from any seat with web access):** every Claude Code doc page is `https://code.claude.com/docs/en/<page>.md` (raw markdown). The full index is `https://code.claude.com/docs/llms.txt`. Platform pages are `https://platform.claude.com/docs/en/<path>.md`, index at `https://docs.claude.com/llms.txt`. **Browser: the live site IS your copy of the shelf — same bytes the local corpus holds.**

| Topic | Page(s) (prefix `code.claude.com/docs/en/` unless noted) |
|---|---|
| Hooks | `hooks-guide.md` (start here) → `hooks.md` (reference); SDK apps: `agent-sdk/hooks.md` |
| Skills | `skills.md`; platform: `agents-and-tools/agent-skills/{overview,quickstart,best-practices}.md` |
| Subagents | `sub-agents.md`, `agents.md` |
| **Dynamic workflows** | `workflows.md` ← default-on since 06-08, read before any fan-out |
| Agent teams / orchestration | `agent-teams.md`, `agent-view.md`, `goal.md`, `ultraplan.md` |
| MCP | `mcp.md`, `mcp-quickstart.md`, `managed-mcp.md`; platform: `agents-and-tools/mcp-connector.md` |
| Managed agents (cloud) | platform `managed-agents/{overview,quickstart,multi-agent,memory,sessions,permission-policies,vaults,webhooks}.md` (+17 more) |
| Long sessions / context | `sessions.md`, `context-window.md`, `checkpointing.md`; platform: `build-with-claude/{compaction,context-editing,context-windows}.md` |
| Models / Fable behavior | `model-config.md`, `fast-mode.md`, `costs.md`, `changelog.md`, `whats-new/` weeklies; platform: `build-with-claude/{effort,adaptive-thinking,task-budgets}.md` |
| Settings / permissions / sandboxing | `settings.md`, `permissions.md`, `permission-modes.md`, `sandboxing.md`, `sandbox-environments.md`, `security-guidance.md` |
| Plugins | `plugins.md`, `plugins-reference.md`, `plugin-marketplaces.md` |
| Agent SDK (29 pages) | `agent-sdk/overview.md`, `agent-sdk/python.md`, `agent-sdk/permissions.md`, … |
| CI / automation | `github-actions.md`, `headless.md`, `gitlab-ci-cd.md` |

## 4. Skills rolodex — summary

**READY now in CLI seats** (full rolodex with safe-use notes lives on the local shelf):
- **Process discipline (superpowers):** `brainstorming` (MANDATORY before any build), `writing-plans`, `test-driven-development`, `systematic-debugging`, `verification-before-completion` (= Phoenix Step 5), `using-git-worktrees`, code-review pair, `dispatching-parallel-agents` (mind token burn — see §1).
- **Research:** firecrawl suite (search/scrape/crawl/map/monitor/interact), `deep-research`, `claude-api` (**model facts are NEVER answered from memory — this skill or the live docs**).
- **Ops:** `code-review` family, `verify`/`run`, commit flow, `update-config`/`hookify` (automated behaviors REQUIRE harness hooks, not model memory), `schedule`/`loop`, `plugin-dev`, `agent-sdk-dev`.
- **Business:** generac suite (error codes, diagnostics, maintenance, sales).

**NEEDS_BUILD — 7 Phoenix-owned skills queued:** `phoenix-pre-action` (the §5 rule as a skill), `phoenix-ledger-discipline` (continuity pattern for all seats), `phoenix-vault-secrets` (names-not-values handling), `phoenix-vps-deploy` (the §2 chain as runbook-skill), `phoenix-doc-refresh` (§6 as a skill), `service-fusion-ops`, `phoenix-archive-not-delete` (the #1 rule as enforced hook).

**NEEDS_REVIEW:** huggingface suite (parks until the fine-tuning lane / B7 opens), chrome-devtools+playwright (candidate for Gateway UI verification), ralph-loop vs `/loop` overlap (standardize one before the blitz).

## 5. Pre-action hook rule (every agent, every non-trivial task)

```
1. IDENTIFY task type (build/debug/research/review/deploy/cleanup/credentials/docs/business)
2. CONSULT the skills rolodex for that type
3. READ the row's required docs (current pages — §3 fetch pattern)
4. NAME your selection OUT LOUD in output:
   "Using <skill> per the rolodex"  OR  "No rolodex skill applies because <reason>"
5. ONLY THEN start the work.
```

Standing overlays: the 5 steps (RESEARCH/VERIFY → PROPOSE → APPROVE → EXECUTE → TEST/VERIFY) and **archive-not-delete** (move/archive only; deletion is Shane's hand, never an agent's). Step 4 is the teeth — silent skill-skipping is the failure mode this kills. Implementation ladder (gated on Shane): CLAUDE.md rule block now → SessionStart hook → packaged skill. Acceptance test: cold agent gets a build task → must name the consult before touching files; gets a cleanup task → must stage moves, refuse deletes.

## 6. Weekly refresh plan

Every Monday, ~5 minutes, $0: diff live `llms.txt` (both doc sites) against stored baselines → if changed: **archive-before-replace** (old generation moves to a dated `_ARCHIVE/` folder with a why-note — never deleted, never overwritten) → re-fetch fresh → verify (page counts match index, zero fetch failures, no empty files, changelog spot-read, no secret values) → update the freshness manifests → **flag model-relevant changes to Shane as fleet news**. Firecrawl is the fallback only for surfaces with no raw-.md endpoint (e.g. support.claude.com). Full command-level runbook is on the local shelf; candidate to become a `/schedule` routine so it runs without Shane re-explaining the mission.

## 7. Stale docs warning

- **Do not trust pre-June memory of Claude Code behavior.** The biggest trap: treating dynamic workflows as opt-in (default-ON since 06-08) and not knowing the 29 new pages exist.
- On the local shelf, superseded material is physically separated: `_ARCHIVE/20260612__stale-docs/` holds the April corpus, its byte-identical nested duplicate, an Apr-28 firecrawl dump, and five May hand-saves — each with a WHY note. Three more folders are banner-marked `_STALE_SUSPECT.txt` pending next archive pass (incl. the May-18 managed-agents drop — superseded by the current 25-page platform section).
- **Browser-specific:** any doc knowledge in your session memory older than ~2 weeks → re-fetch the live page before reasoning from it. The `.md` fetch pattern (§3) costs you one request.
- A third full copy of the dead April crawl exists at local `RESEARCH PROJECTS/claude-code/` — flagged for Shane's disposition; nobody should read it as current.

## 8. Open decisions

| # | Decision | Owner |
|---|---|---|
| 1 | Confirm/correct the **3-legged provisioning doctrine** wording in §2 as canon | Shane (Codex counter-read welcome) |
| 2 | `/schedule` the weekly doc refresh (proposed: Mondays, starting 2026-06-15) | Shane GO; Echo executes |
| 3 | Disposition of the third April-crawl copy at `RESEARCH PROJECTS/claude-code/` | Shane |
| 4 | `anthropic-docs` shelf (1,184 files, crawled 05-10): re-crawl or leave until a task hits it | Shane |
| 5 | Pre-action rule implementation GO (CLAUDE.md block / SessionStart hook / skill) | Shane; Echo builds |
| 6 | **Per-lane SSH keys** — both VPS lanes currently share ONE key (also the Mac/Studio key); single compromise = whole fleet | Shane; hardening pass |
| 7 | **TLS/443** (Caddy auto-HTTPS) — both lanes live over plain HTTP today | Shane; maps to parked B8 |
| 8 | #29 Correction 1 still open: name the canonical gateway repo + base branch in-issue (Echo's 06-10 note points at `phoenix-runtime-skills`) — **no Lane A launch until confirmed** | Codex + Shane |

---

*Compiled from the verified local shelf (crawl 2026-06-12, 146+68 pages, cold-read tested). Corrections to this package: comment on Issue #29 or supersede with a dated v2 of this file — never silent-edit.*
— Phoenix Echo 🔥
