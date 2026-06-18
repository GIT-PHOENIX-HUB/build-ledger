# COMMS — Phoenix Runbook → DR Pipeline
**Channel:** `build-ledger/comms__dr-pipeline__20260618.md` · Opened 2026-06-18 by Claude 1 (Comms Leader) · **Contract v2 — process-as-gate.**
**Mission:** push the **complete canonical Twin Peaks** to repo, via a process-gated forensic review.
**Rule:** single source for pipeline output + instructions. Agents post + take direction here. Shane: authority, nudges, overrides.

## Roster
- **Claude 1 — Comms Leader / Orchestrator:** runs this channel; ingests **ONLY reviews**; directs the agents. No build/push/gate.
- **FD-Audit — Full-System Auditor:** read-only full-estate sweep; writes **only his own ledger**; one shot; finds what's stranded outside the canonical set. *(RUNNING.)*
- **FD-Focused — Per-Section Reviewer:** read-only, scoped to twin-peaks/living-v2 + dropped files; the forensic review during build.
- **Echo — Adversarial Reviewer (CLI):** attacks FD's findings to validate/discredit; read-only.
- **Claude 2 — Builder & Pusher:** the only writer; ingests cleared findings only; corrects + pushes.
- **Browser — DR runner:** runs the ChatGPT Deep Research env (DR phase).
- **Shane:** authority; nudges; overrides.

## THE GATE = THE PROCESS (no individual veto)
A section **clears and advances automatically** when it passes the rubric, evidenced. No one approves; the criteria decide. Only an **evidenced criterion-failure** holds a push — never a person, never vibes, never "oh and then this." Genuine evidence-tied deadlock → Shane (only override).

**Rubric (objective, checkable):**
1. **0** ServiceTitan / gpt-oss / Node-backend (Service Fusion · Nemotron · Python-FastAPI).
2. **0** secrets / certs / keys.
3. Every claim **sourced** — resolvable ref, quote actually present.
4. **Internally consistent** — ports→9120, pricing→canonical formula, naming reconciled.
5. **Complete** — no dangling `[see X]` / TODO.

## Flow
1. **FD-Audit** confirms the canonical set is complete (or surfaces stranded content to fold in first).
2. **FD-Focused** reviews each section against the rubric (evidence per criterion).
3. **Echo** adversarially attacks FD's evidence (validate / discredit).
4. **Gate opens** when rubric passes + Echo can't discredit → **Claude 2** corrects + pushes.
5. **Round 2 (confirm):** FD then Echo re-check the correction — approvals + comments only → final push.

## Rules
- Reviewers read-only (assess only). Builder is the only writer.
- Every finding: **path + section + quote/evidence.** No memory-derived claims unless labeled.
- Push cadence: cleared section → push now; **one adjustment then push**; hold only if absolutely destructive or it hinders another push.
- Scope-walls: each agent ingests ONLY its scope; Claude 1 ingests ONLY reviews.
- All comms through this channel — **exception:** FD-Audit writes to his own ledger per Shane's directive; surfaced here when done.

## Post format
`[date] [FROM→TO] TYPE(REPORT|REVIEW|GATE-CHECK|INSTRUCTION|FLAG): body`

---
## Thread
**[2026-06-18] STATUS** — FD-Audit LAUNCHED + running (full-estate sweep, read-only, ledger-only). FD-Focused / Echo / Claude-2 mandates issued, ready to deploy. Browser queued for DR phase. Channel not yet revealed to agents (Shane gates the reveal).
**[2026-06-18] HOLD** — Claude 1 holds focused-review drop-lists + DR deliverables until FD-Audit returns (it gates whether the canonical set is complete).
