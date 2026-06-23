# Function Folder Template

The required shape of every function that enters Twin Peaks V2. Copy this folder, fill each document, keep each one a clean artifact (Entry Law §I).

A function folder is named for the function and contains exactly four documents.

## README.md — what it is, at a glance
- One paragraph: what the function does and why it exists.
- Its place in Phoenix Gateway OS — which surface, which lane.
- Status: proven · in-build · planned.

## RUNBOOK.md — how it is operated, step by step
- Preconditions and inputs.
- The operating procedure, in order.
- Failure modes and their handling.
- Verification: how to confirm a correct run.

## PLAYBOOK.md — how it was built, and why
- The build sequence that produced it.
- The decisions made, and the reasoning behind each.
- Alternatives considered, and why they were not taken.

## SYSTEM_BIBLE.md — the deep, authoritative truth
- The complete architecture and internals.
- Every interface, dependency, and contract.
- The invariants that must hold, and why.

Each document states what is true now. No notes to self, no TODO, no process chatter, no hedges (Entry Law §I). Provenance on every claim.
