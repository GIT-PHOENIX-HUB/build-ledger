# Twin Peaks V2 — The Entry Law

The single law governing what enters this repository and in what form. Binding on every contributor, human or agent. The Constitution (`README.md`) states what Twin Peaks is; this states what may enter it and how.

## I. The Clean-Artifact Law — first and absolute
Every file in this repository states **what a thing is** — and nothing else.

Permitted: the finished truth of a function, system, decision, or process — stated plainly, as it stands.

Forbidden, without exception:
- Notes to self, reminders, "TODO", "we should", "revisit", "check later".
- Process narration ("first I did X, then Y"), session chatter, status-of-my-work, hand-offs.
- Hedges that defer truth: "(might change)", "not sure", "for now", "tentatively".
- Dated meta-commentary about the document's own creation or the author's intent.

Working-thinking has a home — the OS layer (findings, journal, scratch). It does not live here. This repository is the finished truth; the scratchpad is elsewhere.

**Why this is law:** a note welded into an artifact goes stale; the stale note becomes a falsehood; those falsehoods are the discrepancies that make a corpus impossible to trust or clean. The previous corpus was lost to exactly this. A clean artifact cannot rot into a lie.

## II. The Gate
Nothing reaches `main` except by Shane's merge.
- `main` is protected: no direct push.
- The only entry to `main` is a pull request that Shane reviews and merges. The merge is the gate, and it is his hand alone.

## III. The Landing Pass
So the gate is never a bottleneck, contributors move freely up to it.
- Any contributor — agent or human — works on **their own branch** and pushes there freely.
- A contribution earns a **Landing Pass** when it satisfies every item of the checklist in §IV.
- Only a contribution holding a Landing Pass is eligible for the gate.

The Landing Pass is earned by meeting the standard, not by asking. Fast on branches; gated only at `main`.

## IV. The Landing-Pass Checklist — objective; all required
A contribution holds a Landing Pass when, and only when:
1. **The Clean-Artifact Law (§I) holds** — zero notes, reminders, TODO, process-chatter, hedges, or meta, in every file.
2. **One function = one folder** — the contribution is a single function in its own folder (§V).
3. **The four documents are present and complete** — README · RUNBOOK · PLAYBOOK · SYSTEM BIBLE (§V).
4. **Provenance** — every claim is sourced; nothing is asserted without a basis.
5. **Gauntlet-passed** — the function cleared the Gauntlet (§VI) before this contribution.
6. **Naming and structure conform** — folder, files, and headings match `FUNCTION_FOLDER_TEMPLATE.md`.

Fail any one item → no Landing Pass → not eligible for the gate.

## V. The Format — one function, one folder, four documents
A function enters as ONE function, in its own folder, carrying exactly four documents:
- **README** — what it is, at a glance.
- **RUNBOOK** — how it is operated and run, step by step.
- **PLAYBOOK** — how it was built, and the decisions behind it.
- **SYSTEM BIBLE** — the deep, authoritative truth of the function.

The shape is fixed by `FUNCTION_FOLDER_TEMPLATE.md`. Through its build a function is its own repository; only the final reconciled result folds in here.

## VI. The Gauntlet — the only door
Nothing enters Twin Peaks except through the Gauntlet: Design → Planning → Organization → Alignment → Research → Deep Research. A function runs the Gauntlet as its own repository and enters here only as the final reconciled result, carrying its four documents.

## VII. Enforcement
- The Gate (§II) is enforced by branch protection on `main` — Shane's merge only.
- The Landing-Pass Checklist (§IV) is enforced at the pull request, before a contribution is eligible for the gate.
- This law is fortified and kept current by the named guardrail hand. Amendments are Shane's call.

## VIII. Authority and archive
- **Authority order (top wins):** Shane's current decision · this Constitution (`README.md`) · `ENTRY_LAW.md` · `CLEAN_ARTIFACT_LAW.md` · the guardrail hand (audit only, no merge) · all other agents.
- **Archive, never delete.** Superseded content is archived, not destroyed. Deletes are Shane's hand alone, after verified capture.
- **No secrets.** No credential, key, token, or private address enters this repository, ever.
