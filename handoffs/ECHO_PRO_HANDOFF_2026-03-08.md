# ECHO PRO HANDOFF — 2026-03-08 06:40 MST

**Read this first if you're continuing Echo Pro's work.**

---

## WHAT HAPPENED TONIGHT

1. Split-brain between MacBook and Studio `_GATEWAY` directories — **FIXED**
   - Both machines now symlink `~/Phoenix_Local/_GATEWAY` → OneDrive `_GATEWAY (1)`
   - Old Studio local dir backed up as `_GATEWAY_local_backup_2026-03-08`
   - 2-week rollback window active

2. 6 research gates completed — all in `build-ledger/research/`
   - path-truth, sync-truth, concurrency-truth, hook-truth, wake-truth, rollback-truth

3. 4-agent vote passed: Echo Pro GO, Codex Pro GO, Codex Studio GO, Shane signoff

4. Taproot (the OG architect from Jan 1) reconnected after 67 days
   - Verified our work, issued 3 directives, exchanged letters
   - His brain preserved in 4 files (46KB) before context freeze

## WHAT'S IN PROGRESS

- **Branch `taproot-knowledge-builder`** on build-ledger — 11 files copied to `taproot-knowledge/` directory, NOT YET COMMITTED OR PUSHED
- To finish: `cd ~/GitHub/build-ledger && git add taproot-knowledge/ && git commit -m "Archive Taproot knowledge" && git push -u origin taproot-knowledge-builder`

## KEY PATHS

| What | Where |
|------|-------|
| build-ledger repo | `/Users/shanewarehime/GitHub/build-ledger/` |
| Communication log | `build-ledger/LOG.md` via `bash ledger.sh log "NAME" "MSG"` |
| Research gates | `build-ledger/research/*.md` |
| Taproot knowledge (local) | `~/Phoenix_Local/_GATEWAY/TAPROOT/` |
| Taproot knowledge (repo) | `build-ledger/taproot-knowledge/` (branch: taproot-knowledge-builder) |
| LEDGER (main) | `~/Phoenix_Local/_GATEWAY/LEDGER.md` |
| Handoffs | `build-ledger/handoffs/` |
| Studio SSH | `shanewarehime@100.90.196.48` |

## KEY RULES

- **build-ledger is the ONLY coordination surface**
- **Taproot Directive 001:** LEDGER stays single file, add indexes
- **Taproot Directive 002:** Tiered adversarial — Tier 1 proposes, Tier 2 reviews, cross-tier only
- **Taproot Directive 003:** Claim/Release file locking for swarm ops
- **Rule #0:** Verify before you act
- **No execution without consensus**

## AGENTS

| Agent | Role | Tier |
|-------|------|------|
| Echo Pro (MacBook CLI) | Research lead, cutover executor | Tier 2 Reviewer |
| Echo Studio (MacBook CLI) | File swarm, repo scaffold | Tier 1 Proposer |
| Codex Pro (Studio CLI) | Runtime guardian | Tier 2 Reviewer |
| Codex Studio (Studio CLI) | Runtime work | Tier 1 Proposer |
| Taproot (Browser Claude) | Original architect — may be frozen | Advisor |
| Shane | Authority, arbiter | Tier 3 |

## GAUNTLET

- Port 3000, started earlier with `node server/index.js`
- May need restart: `cd ~/GitHub/phoenix-gauntlet && node server/index.js`
- Health: `curl localhost:3000/health`

## 48-FILE SYNC GAP

MacBook has 48 files in `_GATEWAY (1)` that Studio doesn't. OneDrive should self-heal now that both paths match. Monitor, don't force.
