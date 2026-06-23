# Twin Peaks V2 — Constitution, Governance & Mission

*The README of the Twin Peaks V2 repository — the governing spine of Phoenix Gateway OS. This is the constitution the V2 rebuild is built against.*

> Authored by the OS Oversight seat (OS-02) · 2026-06-21 · distilled from the authoritative governance layer (`OS_AGENT_DIRECTIVES/SYSTEM_CONTEXT.md`, `MASTER_MISSION.md`, `CONTRACT_AND_RELATIONSHIP.md`). The vision is Shane's — refine the specifics here; this is the faithful synthesis of what is already decided.

---

## What Twin Peaks Is
Twin Peaks is the **governing spine / oversight OS** for Phoenix Gateway OS — the vision assembled as a roadmap with the detail to build it. **It holds the truth ABOUT the system, not the system itself.** Twin Peaks owns the truth about the code — *not* the code. The code lives in its owning app repos → STAGING → PROD; the governance, runbooks, and the proof of how each function works live here.

## North Star — the mission
Build **Phoenix Gateway OS** — a Python/FastAPI system with the **Gateway at its center** — governed by Twin Peaks, **one function at a time**, with nothing entering the system except through the Gauntlet. Endgame: each function proven, runbooked, and handed to Deep Research as a clean, self-contained packet.

## Authority Order (top wins)
1. Shane's current build / design decision
2. Python/FastAPI Gateway OS — canonical runtime + build target
3. V2 Twin Peaks — runbook spine / oversight
4. `PHOENIX_UNIFIED_STAGING` — build + proving ground
5. `PHOENIX_UNIFIED_PROD` — production reality
6. Individual app repos — app-code homes
7. AA PROJECTS — source / reference shelf
8. Git state — provenance + safety, NOT final authority
9. Archive — reference only unless promoted

## The Method (non-negotiable)
**One function at a time** → run the **Gauntlet** (Design → Planning → Organization → Alignment → Research) → **Deep Research** → it enters Twin Peaks as its own folder carrying **RUNBOOK + PLAYBOOK + README + SYSTEM BIBLE**. Through the process a function is its own repo; only the final reconciled result folds into Twin Peaks.

## The Gauntlet — the only door into Twin Peaks
Nothing enters Twin Peaks except through the Gauntlet. A function passes Design → Planning → Organization → Alignment → Research → Deep Research, and enters as **ONE function, its own folder**, with all four governing docs:
- **RUNBOOK** — how it is operated / run, step by step.
- **PLAYBOOK** — how it is built and the decisions behind it.
- **README** — what it is, at a glance.
- **SYSTEM BIBLE** — the deep, authoritative truth of the function.

## Current Truths (stated positively)
- **Runtime = Python/FastAPI.** Node = archive / port-source only.
- **Field-service backend = Service Fusion.** ServiceTitan = retired / archive.
- **Model fleet = Nemotron.** DeepSeek banned; GPT-OSS retired.
- **M365 / Graph = live**; 13 production runbooks in `PHOENIX_UNIFIED_PROD`.
- **The Gateway is the center.**

## Where Things Live
Code → owning app repos → STAGING → PROD. Governance / runbooks → **Twin Peaks**. Reference → AA PROJECTS. Archive → `PHOENIX_ARCHIVE` (never delete).

## Standing Guardrails
- **No secrets / credentials in any repo, ever.**
- **Archive, never delete. Capture first** (`PHOENIX_ARCHIVE`) — deletes are Shane's hand, only after verified capture.
- **Explicit-path commits only**; worktrees to avoid collision.
- **Nothing enters Twin Peaks except through the Gauntlet + Deep Research** with the four docs above.

## Provenance & Rebuild Status
The previous Twin Peaks corpus was **preserved before removal** (capture-first, the golden rule):
- `phoenix-archive/archive/twin-peaks-corpus-capture-20260609`
- `phoenix-archive/archive/gateway-unified-staging-capture-20260609`

This repo is **cleared for the V2 runbook corpus**. **Do not restore old content into this branch** — every function re-enters only through the Gauntlet, clean. The live plan and per-function status are tracked in `OS_AGENT_DIRECTIVES/MASTER_MISSION.md`:
- **Phase 0** — Seat & Directory (oversight seat + governance established)
- **Phase 1** — Twin Peaks 2.0 (capture old TP → verify → archive → recreate clean against *this* README)
- **Phase 2** — Function-by-function (each runs the Gauntlet → Deep Research → into TP 2.0)
- **Phase 3** — Proof in staging/prod (each proven function lands in STAGING, proves its gate, promotes to PROD; TP records the proof)

---

*Constitution v1 — faithful to the decided governance as of 2026-06-21. Amendments are Shane's call; the oversight seat maintains this document in place.*
