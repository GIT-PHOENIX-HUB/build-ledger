# UNIQUE-SOURCE-CARRY AUDIT — duplicate/archive surfaces vs the living corpus

**Date:** 2026-06-11 (overnight pass) · **Auditor:** Claude, the Builder (CLI seat)
**Mission authority:** Shane GO (this thread) — local read-only audit; output location and
read-only `gh api` against GIT-PHOENIX-HUB explicitly approved.
**Rules honored:** no web research · no external fetches beyond GitHub org read-only ·
no source edits · no moves · no deletes · no pushes (this file committed locally only,
push pending Shane's review) · archives inspected via listings only (`tar -tzf`,
`unzip -l`) — nothing extracted.

> **Content warning for grep-zero surfaces:** this report names archive files whose
> FILENAMES contain scrubbed legacy terms (they are filesystem facts the audit must
> record). Do NOT copy those strings into `twin-peaks` living-v2 or new
> PHOENIX_UNIFIED_STAGING files. build-ledger audit records are the correct home
> (the March contamination report here already names them).

---

## 1. Method

Hash-set difference between archive surfaces and living targets, two unique classes:
**(a) path-unique** (no counterpart in any target), **(b) content-divergent** (same
path, different hash). Git surfaces compared via `git ls-tree -r` blob SHAs and
`git log --raw` blob lineage; loose folders via `git hash-object` / sampled SHA-256;
org repos not cloned locally verified via read-only `gh api` (existence, archived
flag, branch list, file SHA/size). Dependencies (`node_modules/`, `.git/`) excluded
from source counts.

**Comparison targets:** twin-peaks `living-v2/foundation-20260610` @ `47ce4d0` ·
PHOENIX_UNIFIED_STAGING `origin/main` @ `092fdfa` (reference only) · build-ledger
March audit records (`audits/2026-03-11/` — 6 duplication groups, 8 manifest repos) ·
canonical repos as named by the March duplicate map · `phoenix-archive` as the
preservation-destination check.

## 2. Surfaces inspected

| Surface | Where | Shape |
|---|---|---|
| `ARCHIVE_TO_REVIEW/` | `~/Developer/AA PROJECTS/` | 12 items incl. Phoenix-Echo-Gateway (Node canonical), Phoenix Ai Core, Phoenix-ECHO, V1 python-gateway zip, rewrite packet, gpt_oss_reference, persistence snapshot, T7 cleaning runs |
| `ARCHIVE_TO_DELETE{,_CANDIDATE}/` | same | 1 item (Cowork global Setup) / empty |
| `92_CROSS_REPO_REFERENCE/` | same | origin-main snapshots of 4 living repos |
| ST archive (10 dated piles, 2026-06-10 scrub) | `~/Developer/AA PROJECTS/ST:GPT-OSS ACHIVE /` | whole repos (`_REPOS_ARCHIVED`: Phoenix-ai-core-staging, phoenix-ai-core, phoenix-gauntlet, phoenix-production-test, phoenix-builder-space-knowledge), archived AA lanes (01/04/05/06/07/GOVERNANCE/Gateway), captures, pre-scrub originals (`_WHOLE_MOVED`, 56 files), scrub/sweep runs |
| V2 project archive surfaces | `…/V2 Python Twin Peaks Gateway OS/` | `13_ARCHIVE/`, `13_PHOENIX_ARCHIVE…/source_tree` (full V3 corpus tree), `99_INERT_WORKFLOWS/` (empty), `runtime/` (3 tarballs + bridge + code-map), `Gateway/` (V3 program + 1 tarball), dead `LIVING_TWIN_PEAKS_V2/` |
| Local org clones | `~/Developer/GITHUB (GIT)/` | `phoenix-archive` (destination check), `PHOENIX_UNIFIED_PROD` (Duplication-6 check), `phoenix-pricebook`, living repos |

## 3. FINDINGS REGISTER

Legend — Type: code / config / workflow / test / docs-op (docs with operational value) / evidence.
Carry mechanics: COPY-CODE / COPY-DOCS / POINTER (preserve archive pointer only).

| # | Item | Archive source path | Compare target | Unique evidence | Type | Rec | Risk if ignored | Conf | Mechanics |
|---|---|---|---|---|---|---|---|---|---|
| U-1 | **PhoenixOps AI Brain spec (47 files)** | org `phoenix-echo-bot:docs/deep-research/PhoenixOps_AI_Brain/` (repo NOT archived, pushed 2026-04-07) | `phoenix-archive` — planned dest per March manifest | **gh api: dir exists at source; find: 0 matching dirs at destination — the March-ordered safety copy was NEVER EXECUTED** | docs-op | **CARRY** | only copy of the complete ops spec rides on a repo already on the March archive list | **HIGH** (verified both ends) | COPY-DOCS → `phoenix-archive/echo-bot/ops-brain/` |
| U-2 | **echo-bot divergent set**: `src/brain-blueprint.js` (30,674 B, sha `0063169e`), `config-studio.json`, `config-vps.json`, branch `claude/phoenix-parallel-build-8tcBF` | org `phoenix-echo-bot` | canonical gateway variant + `phoenix-archive` | March map: blueprint DIVERGED from gateway twin; configs instance-specific; gh api confirms all present; **destination empty** | code+config | **CARRY** | divergent blueprint + instance configs lost when the archive plan finally executes | MED-HIGH | COPY-CODE (small set) → `phoenix-archive/echo-bot/` |
| U-3 | **Canonical Node gateway src** (`auth.js` OAuth-hardened, `bot-commands.js`, `brain-blueprint.js`, `channels/`) | local `ARCHIVE_TO_REVIEW/Phoenix-Echo-Gateway/` | org `phoenix-echo-gateway` → **gh api 404 — repo GONE from the org** | the March-named CANONICAL repo no longer exists on GitHub; this local folder is the only verified surviving canonical copy (STAGING's archived Node is a different lineage — equivalence NOT verified) | code | **NEEDS_SHANE** (urgent) | sole canonical copy of the OAuth-hardened gateway lives in a local "to review" pile on one Mac | **HIGH** (404 verified) | COPY-CODE → `phoenix-archive/phoenix-echo-gateway/` (proposal) |
| U-4 | Original wire contracts (`handoff/contracts/ws_frames.yaml` + 15 files) | `ARCHIVE_TO_REVIEW/UPDADEDPython Gatway V1.zip` | STAGING `python-runtime/phoenix/runtime/contracts/` | V1-era contract set predates current vendored contracts; divergence un-diffed | config/evidence | ARCHIVE_ONLY (+ optional diff task) | loss of contract-drift evidence | MED | POINTER |
| U-5 | **Gateway rewrite packet 2026-04-22** (BASELINE / COMBINED__DEEP_RESEARCH / PROMPT / SOURCE_BLOCK) | `ARCHIVE_TO_REVIEW/TWIN_PEAKS_GATEWAY_REWRITE_PACKET_2026-04-22/` | twin-peaks corpus | sat OUTSIDE the V2 carry boundary; corpus has no counterpart | docs-op | **CARRY** | V3 rewrite's source reasoning and baseline lost | MED-HIGH | COPY-DOCS |
| U-6 | Fine-tuning lane archive (PROMPT.md + reference_material.zip — 8 files: REVIEW_AGENT7_FINETUNING.md, MASTER_REVIEW_SUMMARY.md, deep-research-report.md + 5 legacy-base guides incl. a 550 KB finetune guide) | ST `_AA_LANES_ARCHIVED_20260610/07_FINETUNING_PIPELINE/` | twin-peaks lane-11 | zip listed: majority is scrub-class legacy-base documentation (the reason it was archived); 3-4 review docs possibly technique-valuable | docs (scrub-class) | **ARCHIVE_ONLY** + NEEDS_SHANE for a *clean re-derive* of the review docs | none if pointer kept; carrying verbatim would violate grep-zero | MED-HIGH (contents listed) | POINTER (re-derive, never copy verbatim) |
| U-7 | Modelfiles/personas lane archive (PROMPT.md + zip — 9 files incl. REVIEW_AGENT5_MODELFILES.md, harmony-format.md, ollama-modelfile-docs.md + legacy-base guides) | ST `_AA_LANES_ARCHIVED_20260610/05_MODELFILES_PERSONAS/` | lane-02/09 + open decision D-34 | zip listed: same scrub-class majority; **the actual persona Modelfiles are NOT in this archive** — D-34 (Modelfile canonical home) remains unresolved by this surface | docs (scrub-class) | ARCHIVE_ONLY + **NEEDS_SHANE: locate the real Modelfiles** (likely Mac Studio / Ollama-side) | persona Modelfiles may have no audited home at all | MED | POINTER |
| U-8 | `runtimebridge.js` + test | `V2/runtime/` | STAGING git history | **byte-identical**: archive hashes `6170101`/`be9d6e3` match blobs added `3b18228` ("preserve v4 transplant") and deleted `30ef7ae` ("cutover") — fully recoverable from git | code/test | **IGNORE** (recoverable) | none — history-preserved | **HIGH** (hash-verified) | none |
| U-9 | **runtime-code-map__20260606** (operational doc set: BLUEBEAM_DOCUMENTS, BROWSER_ECHO_SIDECARS, FAITH_STEWARDSHIP_AND_TWIN_PEAKS_DECLARATION, GATEWAY_OS_RESEARCH_FIRECRAWL, GAUNTLET_REVIEW_SYSTEM, +) | `V2/runtime/runtime-code-map__20260606/` | twin-peaks corpus | filename probe: **0 hits in corpus** — incl. a faith-stewardship declaration doc | docs-op | **CARRY** | operational doc set (incl. a Shane-doctrine declaration) outside any repo | MED-HIGH | COPY-DOCS |
| U-10 | public-vps UI tarball lineage (4 tarballs, v1→v4, 46-49 entries, 0 .py) | `V2/runtime/` + `V2/Gateway/` | STAGING `public-vps/` — present in main | current UI lives in STAGING; tarballs are point-in-time lineage | evidence | ARCHIVE_ONLY | low — lineage only | HIGH | POINTER |
| U-11 | phoenix-gauntlet real source (27 files excl. deps: server agents.js/supervisor.js/swarm-state.js/ledgers.js + React client + LaunchAgent plist) | ST `_REPOS_ARCHIVED_20260610/phoenix-gauntlet/` | `phoenix-plugins` (extraction destination per its ARCHIVED.md; gh api: **alive**, pushed 2026-05-24) | ARCHIVED.md claims extraction 2026-03-28 (Wave D-9, assessor Phoenix Echo); **claim not yet verified against phoenix-plugins contents** | code | ARCHIVE_ONLY pending **verify pass**; NEEDS_SHANE only if verify fails | Gauntlet doctrine ("do not drop") vs an unverified extraction claim | MED | POINTER (+verify) |
| U-12 | Phoenix-ai-core-staging monorepo (8 packages incl. servicefusion-mcp, **pricebook-mcp-server**, phoenix-command, sharepoint-director, shared) | ST `_REPOS_ARCHIVED_20260610/Phoenix-ai-core-staging/` | org repo (gh api: **GitHub-archived 2026-06-05** — frozen+preserved) + twin-peaks `07_service-fusion` (1 code file) + living `phoenix-pricebook` (docs/data shape, no server code) | monorepo CODE not in living corpus, but double-preserved (org archive + local pile); **pricebook-mcp-server has no counterpart in the living pricebook repo** | code | ARCHIVE_ONLY for the monorepo; **NEEDS_SHANE for pricebook-mcp-server** (carry-review vs Python rebuild plan) | pricebook server logic only in archives while pricebook is an active product | MED | POINTER (+ COPY-CODE decision for pricebook pkg) |
| U-13 | V3 corpus source_tree (00_RESEARCH … 02_RUNBOOKS …) | `V2/13_PHOENIX_ARCHIVE_TWIN_PEAKS_ARCHIVE_BRANCH/source_tree/` | twin-peaks V2 corpus (carried FROM V3; completeness verdict on record) | superseded source generation; kept as provenance | evidence | ARCHIVE_ONLY | none if pointer kept | MED-HIGH | POINTER |
| U-14 | Pre-scrub originals (56 files) | ST `_WHOLE_MOVED_20260610/10_CAPABILITIES/` | twin-peaks (scrubbed successors) | reversibility layer for the 2026-06-10 scrub | evidence | ARCHIVE_ONLY | scrub loses reversibility if pile is deleted | HIGH | POINTER |
| U-15 | Persistence-embedded-local-copies (a `Developer/` snapshot, 2026-05-09) | `ARCHIVE_TO_REVIEW/Persistence-embedded-local-copies__2026-05-09_1712_MDT/` | living repos | dated whole-tree snapshot | evidence | ARCHIVE_ONLY | low | MED | POINTER |
| U-16 | 92_CROSS_REPO_REFERENCE snapshots (Firedancer, Phoenix-ECHO, browser-echo, build-ledger @ origin-main) | `~/Developer/AA PROJECTS/92_CROSS_REPO_REFERENCE/` | the 4 living repos (all active) | snapshots of repos that live; dated | evidence | IGNORE | none | MED-HIGH | none |
| U-17 | gpt_oss_reference folder | `ARCHIVE_TO_REVIEW/gpt_oss_reference/` | scrub policy | scrub-class reference material sitting in a REVIEW pile rather than the ST archive | docs (scrub-class) | **NEEDS_SHANE** (disposal: relocate to ST pile or delete-candidate; never carry) | scrub-class material lingering outside the quarantine pile | MED | move decision (Shane's hands) |
| U-18 | Duplication-6 (PROD 545 MB embedded staging clone) | March map claim | local `PHOENIX_UNIFIED_PROD` | **absent in current local clone** — resolved since March | — | record-as-resolved | — | MED | none |

**Queued, surface-listed only (pass-2 if wanted):** `ARCHIVE_TO_DELETE/Cowork global Setup`, `13_ARCHIVE/20260609_BLOAT_FIRST`, `_staged-20260604__dev-clutter`, `STUDIO_T7_CLEANING_RUNS`, `Phoenix Ai Core` + `Phoenix-ECHO` folders in ARCHIVE_TO_REVIEW (living-repo duplicates — probable IGNORE), the dead `LIVING_TWIN_PEAKS_V2/` full hash-diff vs twin-peaks (sampled clean so far), `_REPOS_PARTIAL_ARCHIVED`, `_SWEEP_RUN`, `_DELETE_STAGING_CONSOLIDATED`.

## 4. Alarm bells (top 3)

1. **U-1/U-2 — the March preservation order was never executed.** The manifest said
   "COPY FIRST, ARCHIVE SECOND"; the copies are absent from phoenix-archive while the
   source repo sits un-archived but archive-listed. One `gh repo archive` away from
   relying on luck. Also: the March manifest told us to preserve echo-bot's "channel
   branches" — **today only `main` + one `claude/` branch exist.** Either they were
   merged or they are already silently gone. That is the precedent this audit exists
   to stop.
2. **U-3 — the canonical is gone from GitHub.** `phoenix-echo-gateway` 404s. The
   OAuth-hardened canonical Node gateway survives (verified) only as a local folder
   in a review pile on one machine.
3. **U-6/U-7 — scrub-class archives must stay pointers.** Both lane zips are
   majority legacy-base documentation. Anything valuable inside gets *re-derived
   clean*, never copied, or grep-zero breaks.

## 5. NEEDS_SHANE decision queue

| Decision | Item | Options |
|---|---|---|
| D-A | U-3 canonical Node gateway permanent home | copy to phoenix-archive now / recreate org repo / accept STAGING-archived-Node as canonical after an equivalence diff |
| D-B | U-12 pricebook-mcp-server | carry code next to living phoenix-pricebook / pointer-only (Python rebuild planned) |
| D-C | U-6 clean re-derive of FT review docs | yes (small task, grep-zero-safe rewrite) / pointer-only |
| D-D | U-7 locate actual persona Modelfiles | dispatch a Studio-side check (ties to open D-34) |
| D-E | U-17 gpt_oss_reference disposal | relocate to ST pile / delete-candidate |
| D-F | U-11 gauntlet extraction verify | run the phoenix-plugins verify pass (read-only) |
| D-G | Execute U-1/U-2/U-5/U-9 carries | approve copy batch (each is COPY-DOCS or small COPY-CODE, no source mutation) |

## 6. Verified-safe (no action needed)

U-8 (runtimebridge — git-history-preserved, hash-proven) · U-10 (UI lineage — current
in STAGING) · U-16 (snapshots of living repos) · U-18 (March Duplication-6 resolved).

## 7. Boundaries of this pass

Org-side enumeration was targeted (echo-bot, echo-gateway, staging, plugins), not
exhaustive across all 35 repos; phoenix-plugins extraction claim unverified (D-F);
the dead LIVING_TWIN_PEAKS_V2 tree was sampled, not fully hash-diffed; no archive
was extracted. Nothing in any repo or pile was edited, moved, deleted, or pushed.
