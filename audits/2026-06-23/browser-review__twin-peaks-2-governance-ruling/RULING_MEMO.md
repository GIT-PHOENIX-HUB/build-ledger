# Ruling Memo - Twin Peaks 2.0 Function-Folder Format

Date: 2026-06-23
Prepared for: Browser Echo review

## Verdict

The V2 Constitution branch format should control.

The authoritative Twin Peaks 2.0 function-folder format should be:

- `README.md`
- `RUNBOOK.md`
- `PLAYBOOK.md`
- `SYSTEM_BIBLE.md`

The live `twin-peaks-2/main` scaffold currently uses:

- `RUNBOOK.md`
- `PLAYBOOK.md`
- `REFERENCE.md`
- `CHANGELOG.md`

That live scaffold also states that it is awaiting Shane's V2 Constitution. A placeholder scaffold cannot overrule the Constitution it names as pending authority.

## Evidence

The local `tp2.0/foundation` Constitution states that a function enters Twin Peaks carrying `RUNBOOK + PLAYBOOK + README + SYSTEM BIBLE`.

Evidence file:

- `source/local-tp2-foundation/README.md`

The local `tp2.0/foundation` Entry Law repeats the same four documents and binds function entry to that structure.

Evidence file:

- `source/local-tp2-foundation/00_GOVERNANCE/ENTRY_LAW.md`

The local `tp2.0/foundation` Function Folder Template implements that format as exact files:

- `README.md`
- `RUNBOOK.md`
- `PLAYBOOK.md`
- `SYSTEM_BIBLE.md`

Evidence file:

- `source/local-tp2-foundation/00_GOVERNANCE/FUNCTION_FOLDER_TEMPLATE.md`

The live `twin-peaks-2/main` README declares itself a placeholder awaiting Shane's V2 Constitution, while also requiring `RUNBOOK.md`, `PLAYBOOK.md`, `REFERENCE.md`, and `CHANGELOG.md`.

Evidence file:

- `source/live-twin-peaks-2-main/README.md`

The live `twin-peaks-2/main` Function Folder Template also requires `REFERENCE.md` and `CHANGELOG.md`.

Evidence file:

- `source/live-twin-peaks-2-main/00_GOVERNANCE/FUNCTION_FOLDER_TEMPLATE.md`

Browser Echo Issue #20 created the scaffold path and explicitly says the Constitution placeholder must be replaced by the real Constitution when Shane pushes it.

Evidence file:

- `source/browser-echo-issue-20/ISSUE_20.md`

## Reasoning

Twin Peaks is the governing spine and provenance layer for Phoenix Gateway OS. Its function folders need a human entry point and a deep authority layer.

`README.md` is the human entry point. It states what the function is, where it belongs, and why it exists.

`SYSTEM_BIBLE.md` is the deep authority layer. It carries architecture, contracts, invariants, dependencies, and operating doctrine.

`REFERENCE.md` is useful but narrower than `SYSTEM_BIBLE.md`.

`CHANGELOG.md` is useful but metadata. Git and pull requests already preserve change history. A human-readable history file can be approved as an auxiliary artifact, but it should not replace the governing truth document.

Replacing `README.md` and `SYSTEM_BIBLE.md` with `REFERENCE.md` and `CHANGELOG.md` changes Twin Peaks from a constitutional truth spine into a technical reference shelf. That is the wrong identity for this repository.

## Proposed Ruling Text

The authoritative function-folder format for Twin Peaks 2.0 is:

- `README.md`
- `RUNBOOK.md`
- `PLAYBOOK.md`
- `SYSTEM_BIBLE.md`

This ruling follows the V2 Constitution and the local Entry Law on branch `tp2.0/foundation`.

Any `twin-peaks-2` governance file, pull request template, issue checklist, or agent instruction that names `REFERENCE.md` and `CHANGELOG.md` as required members of the four-document format is a scaffold-era contradiction and must be reconciled before function content enters the repository.

`REFERENCE.md` may be added only if Shane explicitly approves it as an auxiliary document.

`CHANGELOG.md` may be added only if Shane explicitly approves a human-readable history file beyond Git and pull request history.

Neither document replaces `README.md` or `SYSTEM_BIBLE.md`.

No function folder earns a Landing Pass until the repository governance, pull request checklist, and function template agree with this format.

## Required Follow-Up Before Function Intake

1. Freeze function-folder intake into `twin-peaks-2` until the format conflict is reconciled.
2. Replace live `REFERENCE.md` and `CHANGELOG.md` requirements with `README.md` and `SYSTEM_BIBLE.md`.
3. Add a required Gauntlet pass record so "passed the Gauntlet" has reviewable evidence.
4. Clarify Browser Echo's role as audit, comment, branch and pull-request preparation, never merge, and never author function content.
5. Keep branch-protection claims precise: PR-gated, admin-enforced, force-push-blocked, and delete-blocked are verified in this packet; Shane-only push restriction was not proven by the branch-protection API snapshots.

