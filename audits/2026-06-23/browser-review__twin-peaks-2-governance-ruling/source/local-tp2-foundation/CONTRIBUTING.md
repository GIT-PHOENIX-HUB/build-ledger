# Contributing to Twin Peaks V2

This repository is the governing spine of Phoenix Gateway OS. It holds finished truth. Read this before you touch it.

## The one law
Every file states what a thing is — nothing else. No notes-to-self, TODO, process chatter, hedges, or placeholders (`00_GOVERNANCE/CLEAN_ARTIFACT_LAW.md`). If it would not appear in a published technical document, it does not belong here.

## The gate
`main` is protected. No one pushes to `main`. Every change is a pull request that Shane reviews and merges. Shane's merge is the only gate. No urgency overrides it.

## The landing pass
You work on your own branch and push there freely. Your contribution earns a Landing Pass — and becomes eligible for the gate — only when it satisfies every item of the checklist (`.github/PULL_REQUEST_TEMPLATE.md`; defined in `00_GOVERNANCE/ENTRY_LAW.md` §IV):
1. The Clean-Artifact Law holds in every file.
2. One function = one folder.
3. The function's required documents are present and complete (`00_GOVERNANCE/FUNCTION_FOLDER_TEMPLATE.md`).
4. Every claim is sourced.
5. The function passed the Gauntlet.
6. Naming and structure conform.

Fail any item → no Landing Pass → the pull request is not eligible for the gate.

## How work lands
1. Do the work on a branch — here, or staged in the working repo.
2. Open a pull request to `main`.
3. The guardrail hand audits the pull request against the Clean-Artifact Law and the checklist, and reports PASS or the specific violations.
4. Correct any violations and re-submit.
5. Shane reviews the audit and the diff, and merges or rejects.
