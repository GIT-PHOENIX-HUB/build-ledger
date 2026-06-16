# PLAN — Twin Peaks V2 Consolidation · Fire-Safety · Wipe · Next Steps

**Authored:** echo-S021 (Comms Director), 2026-06-16
**For:** three-way approval (**echo-S021 + claude-S034 + bbb-S050**) → then presented to Shane
**Status:** DRAFT v1 — awaiting crew AGREE

> Shane's directive: *"make a good plan, present it to me, approved by all three of you."* This is that plan. The three of us hold the gate (verified + unanimous); Shane holds the genuinely-irreversible nods. We don't open the gate easily, and we don't stall on procedure.

---

## Where we are — verified preconditions

- ✅ **Fire-safety COMPLETE.** Irreplaceable canonical is on `phoenix-archive` branch `firesafe/dr-canonical-wip-20260616`: **Tier-1 `74399da`** (54 MB active runbook WIP) + **Tier-2 `bb568ad`** (125 MiB / 10,241 unique audit `.md`). Verified on origin by Echo (CLI) and Claude (ls-remote). The code bulk (`research/` `.ts`/`.js`/`.map`, `Gateway/`, `13_ARCHIVE/`) is **re-acquirable, intentionally not backed up** — no T7 drive needed. **Ratified 2/3 (BBB pending).**
- ✅ **Corpus COMPLETE + clean.** `twin-peaks living-v2 @ 47ce4d0` = 633 files, gpt-oss 0 / ServiceTitan 0, dual-vantage verified (Echo CLI + BBB GitHub-UI). PR #34 open. `main` @ `e981694` = 1-file landing pad.
- ✅ **Carry-branch audited** (claude-S034, read-only): `archive/unique-source-carry-20260611` has **2 truly-unpushed commits** (deliberate archive work — `2780e322` clean python-runtime snapshot of staging @ `092fdfa`, **local-only by Codex ruling + re-derivable from staging**; `5dd84596` D-G preservation batch) + **35 working-tree deletions** = redundant `echo-persistence` dupes (canonicals live in active Phoenix-ECHO, 3/3 spot-checked) — **low-risk.** The other 3 ahead-of-`main` commits are already on remote archive branches (not at risk).

---

## The plan — ordered phases, each with its gate

**Phase 1 — Carry-branch facts (read-only) · OWNER: claude-S034 · ✅ DONE**
Findings: 2 truly-unpushed commits (both deliberate/self-documented archive work; `2780e322` local-only by Codex ruling + re-derivable from staging @ `092fdfa`) + 35 redundant-dupe deletions (canonicals live). Full findings on the thread.

**Phase 2 — Carry-branch disposition · GATE: Shane's hand**
Two binary calls for Shane, both low-risk:
(a) **35 deletions** → `git commit` them (prune the redundant dupe snapshots) OR `git restore` them (keep the snapshots whole). Canonicals are live either way.
(b) **2 unpushed commits** → confirm they stay local-and-lost-on-wipe (intended per Codex ruling; `2780e322` re-derivable from staging @ `092fdfa`) OR preserve them first.
Deletions/pushes are operator-altitude.

**Phase 3 — PR #34 land (corpus → `main`) · GATE: three-way GO + Shane's merge nod**
Merge `living-v2 → main`. **Mechanism (Shane picks):** merge-commit (preserves the documented batch provenance — *recommended*) vs squash (one clean landing commit). Per the BUILD_LEDGER working-mode, the mechanical merge is Shane/Codex's hand.
Post-land: archive old Twin Peaks + the `clean-runbooks-v2-firesafe-20260614` branch → phoenix-archive museum. **Never merge firesafe into living-v2.**

**Phase 4 — The wipe (destructive) · GATE: three-way GO + Shane's explicit nod**
ONLY after Phases 1–3 clear. Scope = the local working copies now made redundant (canonical fire-safe + corpus on `main`). **Exact wipe scope is enumerated and verified before execution — no blind wipe.** End-state directly verified after (the Phoenix Echo Claw rule: completion only after direct end-state verification).

**Phase 5 — Gateway-branch consolidation (side-mission S-8) · OWNER: echo-S021**
The `92_` all-remote-branches capture → Echo dedupe → `UNIQUE_REMOTE_BRANCH_CARRY_QUEUE.csv` + `CLAUDE_HANDOFF_UNIQUE_BRANCH_INPUTS.md` → reorganize-outside-git → commit remaining gateway code to `main` (branch → draft PR → Shane/Codex merge). This is "the gateway misc-branches → clean → ready to commit" Shane named.

**Phase 6 — Deep-Research run**
Canonical runbook scrub/clean is fire-safe → proceed with the DR run when Shane's ready.

---

## Standing rules honored throughout

- **No deletion by any seat** — archive only; deletions are Shane's hand.
- **Claim-before-execute** (the parallel-Tier-1-collision lesson).
- **Additive/safe** actions move on three-way agreement; **destructive/irreversible** actions wait for Shane's explicit nod.
- **Verify end-state** on any terminal action.

---

## Approval (three-way — all required before presenting to Shane)

- [x] **echo-S021** — AGREE (author)
- [x] **claude-S034** — AGREE (3 sharpenings on P2/P4 — see thread)
- [ ] **bbb-S050** — AGREE / amend

*Three AGREEs → echo-S021 presents this plan to Shane for the Phase-2/3/4 nods.*
