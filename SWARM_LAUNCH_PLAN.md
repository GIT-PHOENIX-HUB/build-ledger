# STRATEGIC SWARM LAUNCH PLAN — No More Chaos

**Author:** Echo Pro (Opus 4.6)
**Date:** 2026-03-08
**Purpose:** Controlled multi-agent launch that prevents stampedes

---

## THE PROBLEM

6 CLIs x 12 agents = 72 agents loose on the filesystem with no coordination.
Result: chaos, race conditions, duplicate work, agents "chomping at the bit" with no traffic control.

## THE FIX: 5 Rules Before Any Swarm Launches

### Rule 1: ONE Coordination Surface

**build-ledger repo is the ONLY place agents talk.**
- No side channels, no CLI chat, no OneDrive shared writes
- Every agent logs to `LOG.md` via `bash ledger.sh log "NAME" "MESSAGE"`
- If it's not in the LEDGER, it didn't happen

### Rule 2: CLAIM Before Touch

**No agent touches a file or directory without logging a CLAIM first.**
```
bash ledger.sh log "TEAM 1 Agent A" "CLAIM: /path/to/target"
```
- CHECK the LEDGER before claiming — if someone else claimed it, back off
- RELEASE when done: `bash ledger.sh log "TEAM 1 Agent A" "RELEASE: /path/to/target"`
- Stale claims (>1 hour) can be challenged but not silently overridden

### Rule 3: TEAMS, Not Mobs

**7 agents max. That's it. Learned the hard way.**

| Team | Role | Machine | Max Agents |
|------|------|---------|------------|
| Team 1 | Primary execution | Studio | 3 |
| Team 2 | Secondary execution | Studio | 2 |
| Team 3 | Review & audit | MacBook | 2 |

- Teams work on ASSIGNED directories only — no freelancing
- Assignments posted to build-ledger BEFORE launch
- Each team has a lead agent who posts status every 10 minutes

### Rule 4: AUDIT Before Expansion

**No new agents launch until the current batch has been audited.**

Launch sequence:
1. Start Team 1 (4 agents) on assigned directories
2. Wait for first audit report (10 min)
3. Shane reviews audit — GO or HOLD
4. If GO: launch Team 2 on next batch
5. Wait for Team 2 audit
6. If GO: launch Team 3 (review/audit team)
7. NEVER skip the audit step

### Rule 5: KILL Switch

**Shane says STOP, everything stops. No negotiation.**
- `bash ledger.sh log "Shane" "STOP ALL"` = immediate halt
- Agents check LEDGER before starting any new work item
- If STOP is in the last 10 entries, do nothing, wait for instructions

---

## LAUNCH SEQUENCE

### Phase 0: Pre-Flight (5 min)

1. Pull build-ledger on all machines
2. Post team assignments to build-ledger
3. Verify no stale CLAIMS in LEDGER
4. Shane confirms: "GO FOR LAUNCH"

### Phase 1: Team 1 Only (15 min)

- 4 agents on Studio
- Assigned directories from the mapping queue
- Lead agent posts status at 5 and 10 minutes
- At 10 min: Shane reviews first audit
- Decision: CONTINUE / HOLD / ABORT

### Phase 2: Team 1 + Team 2 (15 min)

- 8 agents total across Studio
- Team 2 gets next batch of assignments
- Both teams post status at 5-min intervals
- At 10 min: Shane reviews combined audit
- Decision: CONTINUE / HOLD / ABORT

### Phase 3: Full Swarm (ongoing)

- 7 agents max (Team 1 + 2 + 3)
- Team 3 on MacBook does review/audit of Team 1+2 output
- Status reports every 10 min
- Shane can scale down anytime: "HOLD TEAM 2" stops Team 2 only

---

## TEAM ASSIGNMENT FORMAT

Before launch, post this to build-ledger:

```markdown
## SWARM ASSIGNMENT — [DATE]

### Team 1 (Studio, 4 agents)
- Agent 1: /path/to/dir1
- Agent 2: /path/to/dir2
- Agent 3: /path/to/dir3
- Agent 4: /path/to/dir4

### Team 2 (Studio, 4 agents)
- Agent 5: /path/to/dir5
- Agent 6: /path/to/dir6
- Agent 7: /path/to/dir7
- Agent 8: /path/to/dir8

### Team 3 (MacBook, 4 agents — REVIEW)
- Agent 9: Review Team 1 output
- Agent 10: Review Team 1 output
- Agent 11: Review Team 2 output
- Agent 12: Review Team 2 output
```

---

## AUDIT REPORT FORMAT

Every 10 minutes, team lead posts:

```markdown
## TEAM [N] AUDIT — [TIME]
- Items assigned: X
- Items completed: Y
- Items in progress: Z
- Conflicts: [list any CLAIM collisions]
- Issues: [anything unexpected]
- Next: [what we're doing next]
```

---

## WHAT WENT WRONG LAST TIME (THE STAMPEDE OF 2026-03-08)

**The Drop:** 6 CLIs x 12 agents each = 72 agents. Plus 3 Codex instances as supervisors. 75 total.

Within 5 minutes, all 75 were running — "like thoroughbred horses chomping at the bit." The 3 Codex supervisors couldn't keep up. 20 minutes of pure chaos. Shane had to fire Codex and take manual control.

What went wrong:
1. **75 agents, no coordination** — race conditions everywhere
2. **No claims** — multiple agents touching the same files simultaneously
3. **No audits** — Shane couldn't see what was happening until it was too late
4. **No kill switch** — once the stampede started, there was no clean way to stop it
5. **No team structure** — every agent was freelancing instead of following assignments
6. **Supervisors overwhelmed** — 3 Codex trying to manage 72 agents is a 1:24 ratio. Should be 1:4 max.

## WHAT THIS PLAN FIXES

1. **Capped at 7** — 3 teams, never more
2. **Claim/Release** — every file touch logged, collisions caught immediately
3. **Mandatory audits** — no expansion without Shane reviewing output
4. **STOP command** — instant halt, no negotiation
5. **Assigned lanes** — every agent knows exactly what it owns

---

## SHANE'S COMMANDS

| Command | What It Does |
|---------|-------------|
| `GO FOR LAUNCH` | Start Phase 1 |
| `CONTINUE` | Proceed to next phase |
| `HOLD` | Pause all new work, finish current items |
| `HOLD TEAM [N]` | Pause specific team |
| `STOP ALL` | Immediate halt, everything stops |
| `RESUME` | Restart after HOLD |

---

*Built from the lessons of the stampede and Taproot's Directive 003.
The swarm is powerful. But power without control is just chaos.*
