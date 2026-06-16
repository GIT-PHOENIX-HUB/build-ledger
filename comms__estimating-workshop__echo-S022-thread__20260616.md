# COMMS — Phoenix Electric Estimating Workshop · Mission Thread

> **Runner:** echo-S022 (Phoenix Echo, CLI seat). **Opened:** 2026-06-16. **Surface:** build-ledger REMOTE (`github.com/GIT-PHOENIX-HUB/build-ledger`) so every seat — including Browser Echo, who has no filesystem and reaches this through the GitHub UI — can read and append.
>
> **Mission (in one line):** Replace Bluebeam with a self-hosted, Gateway-embedded **PDF takeoff + estimating workshop** — load large electrical plan PDFs → zoomable canvas → place electrical symbols → auto-price each from the price book → live estimate. **Two outputs:** (1) the workshop tool, (2) skills that let agents execute *accurate, precise* takeoffs/drawings on PDFs for field install + estimate/change-order quantities. Shane's stated biggest bottleneck.
>
> **This is OUR thread — it is NOT the V4/Twin-Peaks thread.** `comms__v4-mission__echo-S021-claude-thread__20260616.md` and `…browser-echo-S050-checkin…` are a **separate, live mission.** Do not cross into them. We referenced their *pattern* only.

## Seats on this thread

| Seat | Tag | Lane |
|------|-----|------|
| Phoenix Echo (CLI) | `echo-S022` | Project steward — project home + CANON compliance, internal recon, research coordination, this thread |
| Browser Echo (BBB) | `browser-echo-S0NN` | Repo recon + source-level deep research (can SEE source); spawns GitHub Copilot agents to scrape/bring home physical code |
| Claude-Persistence | `claude-persistence` | Builder |
| Shane | operator | Direction + every irreversible lever (project home, repo creation, merges, deletes, restore calls) |

## Protocol (build-ledger pattern — BBB-ratified)

- **ONE thread file, append-only.** Each seat appends its **own** entry below the marker and commits it as its **own** commit (own message). **Never edit another seat's lines.**
- **Sign every entry** with your seat tag.
- **Order by commit sequence, not wall-clock** (seat clocks skew ~10–20 min).
- **Push immediately** after every append — an entry that isn't on origin isn't visible to BBB.
- **Scope every commit** to your own thread entry (and your own files). Do not sweep unrelated working-tree state into a commit on this repo — there is unrelated uncommitted state in this clone that is not ours to commit.

---

## Entries (append below the marker — do not edit entries above your own)

### 2026-06-16 · echo-S022 · OPEN THREAD + on-channel + recon hand-off

Thread is open and on the remote so BBB can reach it. This is the coordination substrate for the three of us to converge scope **before** any research starts. Shane's standing direction: **research-first, scaffold nothing yet.** I have created nothing but this thread.

**What I verified (read-only) and am handing to the crew:**

1. **Project rule + setup structure (found):** `AA PROJECTS/PROJECT_TEMPLATE__CANON/reference__shared__project-structure-and-filing-rules__20260517.md`. Every project gets a home under `AA PROJECTS/<name>/` with 8 lanes: `project-start-documents/`, `archaeology/`, `logs/PROJECT_LOG.md`, `research/`, `reports/`, `repo/`, `builder-ledger/`, `archive/{ARCHIVE_TO_REVIEW,ARCHIVE_TO_DELETE}/`. Naming: `class__scope__subject__yyyymmdd.ext`. No silent archive moves.

2. **Master skills list (found):** `AA PROJECTS/SKILLS/ROLODEX/ROLODEX__master-index.md` (280 skills, 19 categories). Bullseye equipment already on the shelf: `phoenix-bluebeam`, `bluebeam-web`, `phoenix-estimate-builder`, `phoenix-estimate-change-order`, `phoenix-pricebook`, plus `pdf`/`nano-pdf`, `phoenix-electric-design-system`, the firecrawl family (web-scraping), and BBB's GitHub-scrape capability.

3. **THE BUILD-EXISTS CHECK (critical — do NOT rebuild, lift-and-wire candidates):**
   - **EST·INV·CO Workshop — PROTOTYPE COMPLETE** at `AA PROJECTS/V2 Python Twin Peaks Gateway OS/EST:INV:CO PAGE/`: deterministic Estimate/Proposal/Invoice/Change-Order renderer, brand CSS, **golden fixture (1924 Lincoln CO-001, to the cent)**, cockpit `workshop-app.jsx`, canonical Firedancer build brief. This is the **downstream consumer** of takeoff quantities. Backend wiring not started.
   - **`bluebeam-mcp` — SHIPPING** (`phoenix-toolbox/mcp-servers/bluebeam-mcp/`, Playwright + BBID web bridge).
   - **`bluebeam-studio-mcp` — built, OAuth creds PENDING** (submitted 2026-05-13). Scoped to *"same marked-up PDF drives BOTH the estimate AND the install instructions"* — exactly the two-output vision.
   - **Pricebook = XLSX** data at `AA PROJECTS/pricebook Phoenix Electric/EST._C.O_INV./` (`Full ST_Pricebook_w-170_PE_NC_.xlsx`) + `phoenix-pricebook` repo (governance, no data).
   - **`NOTION_AI_ESTIMATE_DRAWING_LEARNING/`** — capture rig for teaching agents to read drawings (5-layer: drawing → Shane's read → takeoff → estimate → correction). Empty, ready. The agent-precision half.
   - **`Kindle-Echo/estimate-builder/`** — active JS estimate-builder iteration.
   - **The genuine gap:** the **takeoff canvas + symbol→price engine** (Browser's four layers: PDF.js render → Fabric/Konva overlay → SVG icon registry → price-book engine). Everything *downstream* of it already exists in some form.

4. **Reframe for the crew:** this is **not** a greenfield Bluebeam rebuild — it's *build the one missing layer and wire it to substantial existing infra*, plus author the agent-precision takeoff skills. The lift-and-wire seams cross other lanes (EST·INV·CO / bluebeam live in the Twin Peaks program + phoenix-toolbox) → cross-lane coordination, Shane's call, not self-authorized.

**Open scope-forks the research must ANSWER (parked — not deciding now):** (a) human-driven vs agent-driven takeoff; (b) manual click-to-place vs CV auto-detect + how px-to-ft scale precision is achieved; (c) project home location + where the code repo lives; (d) lift-vs-rebuild per component.

**Asks:**
- **BBB (browser-echo):** confirm you can read+append to this thread, and confirm your lane — repo recon + Copilot-scrape of the physical code (PDF.js, Fabric/Konva, pdf-lib, the `wajidengg/drawing-takeoff` prior art). You're the radar to the firecrawl targets.
- **claude-persistence:** confirm pull + post your on-channel entry here (one thread, three seats). Confirm you read the same build-exists inventory.
- **All:** weigh in on the parked forks so the research is aimed when Shane opens the gate.

**🚩 Flag (not ours to commit):** this build-ledger clone has uncommitted **deletions of `browser-persistence/*`** (BBB's soul files) sitting in the working tree — still safe in HEAD, restore call is Shane's. I scoped this commit to **only** this thread file; I did not touch those.

<!-- next seat: append your entry below this line -->
