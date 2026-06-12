# MISSION PLAN — A5: ruff + pre-commit + gitleaks tooling unit (live-fire test of phoenix-mission-orchestrator)

> File: `plan__twin-peaks-v2__a5-tooling-precommit__20260612.md`
> Status: **DRAFT — AWAITING GATE 3**
> Lead session host: shanes-MacBook-Pro · Claude Code CLI 2.1.153 · Phoenix Echo (Fable 5)
> Date: 2026-06-12

---

## 1. Pre-Flight Confirmation

| # | Item | Answer |
| :-- | :-- | :-- |
| 1 | Mission restated | Build Issue #29 Lane A item **A5** — drop lint/format/secret-scan tooling configs into `PHOENIX_UNIFIED_STAGING` — off `main @ 092fdfa`, on branch `v2-tooling-precommit`, landing as a **draft PR** with a planted-secret-caught-by-gitleaks proof in the body. This run is simultaneously the **live-fire test of the phoenix-mission-orchestrator skill**: expected behavior is full gates with a hard stop here at Gate 3. Browser 044 verifies the PR GitHub-side; Shane merges; FD explicitly off this lane. |
| 2 | Exact deliverables | (1) `.pre-commit-config.yaml` at repo root — ruff (lint+format) + gitleaks hooks; (2) `ruff.toml` at repo root (new file — zero edits to existing `python-runtime/pyproject.toml`); (3) `.gitleaks.toml` at repo root (baseline config); (4) draft PR with Correction-3 proof block: truth label, hook-run outputs pasted, branch+SHA, planted-secret catch proof, zero secret values |
| 3 | Target / branch strategy | `GIT-PHOENIX-HUB/PHOENIX_UNIFIED_STAGING`, base `main @ 092fdfa` (= live tip, verified via `gh api`), branch `v2-tooling-precommit` (verified free, 404). **Execution uses a FRESH CLONE** at `/tmp/mission-a5-staging/` — the existing local clone is FROZEN on the Hermes branch per Codex directive and will not be touched. |
| 4 | Required resources | `gh` authed as shane7777777777777 ✓ · git ✓ · **pre-commit, gitleaks, ruff: NOT INSTALLED — install required (§3)** · skills: this one + phoenix-vault-secrets (scan posture) + phoenix-archive-not-delete (cleanup posture) ✓ |
| 5 | Success criteria (= Gate 5 tests) | **SC1** branch exists on origin, ahead of `092fdfa` by exactly 1 commit containing ONLY the 3 new files; **SC2** draft PR open with full proof block; **SC3** captured: `pre-commit run --all-files` on clean tree → ruff + gitleaks PASS; **SC4** captured: with planted fake secret in WORKING TREE ONLY → gitleaks hook FAILS (catches it); secret never staged, never committed, absent from all history (verified by `git log -p` grep on the branch); **SC5** PR diff contains zero secret values (value-shaped grep clean); **SC6** Lane A HOLD respected: PR remains DRAFT, no merge by any agent |
| 6 | Risks / constraints | (a) **Lane A is HOLD per Codex Oversight** — Shane's Gate 3 GO on this plan is the authority that opens this single item (or Shane coordinates with Codex first; surfaced, not decided here); (b) tool installs touch this Mac's user environment (reversible, listed §3); (c) frozen Hermes clone adjacency — mitigated by fresh clone; (d) per builder tightening #2: any Gate 1/4 check failure → propose idempotent fix + WAIT, never work around |
| 7 | Task one | Gate 1 environment scoping — **DONE** (results §3) |

## 2. Architecture Decision

- **Chosen: Single session** (this lead), plus **one read-only verifier subagent at Gate 5** (built-in Explore — independent cold-read of the PR against §11, no write tools).
- **Justification**: three small config files, one owner, strictly sequential (configs → hook test → secret test → PR). Per the skill's matrix this is the textbook single-session signal; a team cannot partition 3 files among 3–5 owners without inventing work. The verifier subagent adds an independent Gate 5 eye at near-zero token cost.
- **Token budget acknowledgment**: 1 session + 1 Explore subagent — minimal. No team spend.

## 3. Gate 1 — Environment Scoping Results (run live 2026-06-12)

| Check | Command | Result |
| :-- | :-- | :-- |
| Claude Code version | `claude --version` | **2.1.153** (≥2.1.32 ✓; note <2.1.154 so dynamic workflows unavailable — irrelevant to this mission) |
| Agent teams enabled | `echo $CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS` | empty — disabled (irrelevant: single session chosen) |
| Display mode | `which tmux` | tmux absent — in-process (irrelevant: no team) |
| Subagent definitions | `ls ~/.claude/agents/ .claude/agents/` | none user-level, none project-level (only built-ins needed) |
| Tooling | `command -v pre-commit gitleaks ruff` | **all three MISSING** |
| gh auth | `gh auth status` | shane7777777777777, active ✓ |
| Live main tip | `gh api .../branches/main` | **`092fdfa` "deploy: retry lane SSH connections"** — base = tip, no drift |
| Branch collision | `gh api .../branches/v2-tooling-precommit` | 404 — name free ✓ |
| Config placement | `git ls-tree 092fdfa` | root has no pyproject; `python-runtime/pyproject.toml` exists → root `ruff.toml` chosen (new-file-only diff) |
| Frozen clone | `git status -sb` | on `hermes/skills-framework-port-20260610`, clean, untouched — fresh clone mandated |

**Required environment changes (idempotent, with rollback) — execute only after Gate 3 GO:**
1. `brew install gitleaks pre-commit ruff` (rollback: `brew uninstall` — Shane's hand if ever wanted; tools are standard dev kit and stay useful for the whole blitz)
2. Fresh clone: `gh repo clone GIT-PHOENIX-HUB/PHOENIX_UNIFIED_STAGING /tmp/mission-a5-staging -- --branch main` (cleanup §12)
3. NO settings.json changes. NO agent-teams enablement. NO hook installs on this Mac.

## 4. Team Roster

| Name | Role | Subagent type | Model | Plan approval? | Permission posture |
| :-- | :-- | :-- | :-- | :-- | :-- |
| echo-lead | builds configs, runs hook tests, opens PR | — (lead session) | fable (current) | this document IS the plan approval | normal permission mode; no bypass |
| a5-verifier | independent Gate 5 cold-read of PR vs §11 | Explore (built-in, read-only) | haiku (Explore default) | no (read-only) | read-only by construction |

## 5. Task Breakdown

| # | Task | Owner | Depends on | Definition of done |
| :-- | :-- | :-- | :-- | :-- |
| 1 | Gate 1 scoping | echo-lead | — | §3 complete ✓ |
| 2 | Install gitleaks/pre-commit/ruff | echo-lead | Gate 3 GO | `command -v` returns paths; `--version` each |
| 3 | Fresh clone + branch `v2-tooling-precommit` off `092fdfa` | echo-lead | 2 | `git log -1` = 092fdfa; branch checked out in /tmp clone |
| 4 | Author the 3 configs | echo-lead | 3 | files exist; `pre-commit validate-config` passes |
| 5 | Clean-tree hook run (SC3 capture) | echo-lead | 4 | `pre-commit run --all-files` output saved; ruff+gitleaks PASS |
| 6 | Planted-secret test (SC4 capture) | echo-lead | 5 | fake value in working tree only → gitleaks FAILS; output saved; file deleted from working tree (never staged); `git status` clean after |
| 7 | Commit (1 commit, 3 files) + push branch + open DRAFT PR with proof block | echo-lead | 6 | PR URL; body has truth label SCAFFOLD→LIVE-config + SC3/SC4 outputs + SHA |
| 8 | Gate 5 verification incl. independent verifier | echo-lead + a5-verifier | 7 | §11 table all-pass; verifier verdict in FINDING format |

## 6. File Ownership Map (zero overlaps)

| Owner | Owns (writable) | Read-only |
| :-- | :-- | :-- |
| echo-lead | `/tmp/mission-a5-staging/{.pre-commit-config.yaml, ruff.toml, .gitleaks.toml}` — nothing else in the repo | everything else |
| a5-verifier | nothing | the PR + this plan |

Conflict check: confirmed no two owners share a writable path. ☑

## 7. Plan-Approval Policy

- Single session — this Mission Plan is the only plan; Shane's Gate 3 entry below is the only approval that opens Gate 4.

## 8. Quality Gates (Hooks)

| Hook | Enforces | Script |
| :-- | :-- | :-- |
| — | N/A (no team; quality gates are SC1–SC6 run by lead + independent verifier) | — |

## 9. Spawn Prompts

### a5-verifier (Explore, spawned at Gate 5 only)
```text
Read-only verification. Read the draft PR <URL> (gh pr view/diff) and the Gate 5 table in
plan__twin-peaks-v2__a5-tooling-precommit__20260612.md (§11). Independently verify each row:
branch base = 092fdfa lineage, exactly 1 commit / 3 files, proof block fields present
(truth label, hook outputs, SHA, planted-secret catch), zero value-shaped secrets in diff
(grep the diff for sk-ant-/ghp_/AKIA/BEGIN PRIVATE KEY patterns). Verdict per row PASS/FAIL +
overall, in FINDING + SEVERITY + EVIDENCE + SOLUTION format for any FAIL. Modify nothing.
```

## 10. Monitoring & Escalation

- Single session: self-checkpoint after tasks 3, 6, 7 (one-line progress: step/gap/%).
- 3-Failure Rule: any command failing 3× (brew install, push, PR create) → STOP, report Shane, propose fix + wait (builder tightening #2).
- Planted-secret discipline (builder tightening #1): the fake secret exists ONLY in the working tree during task 6 — never staged, never committed, not on the branch, absent from history.

## 11. Gate 5 — Verification Plan

| SC | Verification | Expected |
| :-- | :-- | :-- |
| SC1 | `gh api .../compare/092fdfa...v2-tooling-precommit` | 1 commit ahead; files = exactly the 3 configs |
| SC2 | `gh pr view --json isDraft,body` | draft=true; proof block complete |
| SC3 | saved output from task 5 | ruff PASS + gitleaks PASS on clean tree |
| SC4 | saved output task 6 + `git log -p -- <testfile>` empty + history grep | gitleaks FAIL on plant; zero history trace |
| SC5 | `gh pr diff \| grep -E "<value-shaped patterns>"` | empty |
| SC6 | PR state | DRAFT; merged=false; no agent merge |
| ALL | a5-verifier independent read | concur, FINDING-format on any miss |

## 12. Cleanup Plan

1. No teammates to shut down (verify no orphaned subagents); no tmux.
2. Fresh clone `/tmp/mission-a5-staging/` — after PR lands and 044 verifies: STAGE (move) to `/tmp/ARCHIVE_TO_REVIEW__DELETE__<date>/` per phoenix-archive-not-delete; deletion is Shane's.
3. Update this plan §15, status → VERIFIED, then ARCHIVED (move to `missions/_archive/` — never deleted).

## 13. Approval Log (Gate 3)

| Date/time | Action | By | Notes |
| :-- | :-- | :-- | :-- |
| 2026-06-12 | Submitted for approval | echo-lead | **Open item for Shane: Lane A is HOLD per Codex Oversight — your GO here opens A5 specifically (recommend cc'ing Codex on the GO so the contract stays coherent)** |
| | APPROVED / REJECTED / MODIFIED | Shane | |

## 14. TODO Appendix

- Claude Code 2.1.153 < 2.1.154 → dynamic workflows unavailable on this host; note for any future workflow-based mission (upgrade path: normal CC update).

## 15. Final Report (filled at Gate 5)

- Pending Gate 3.
