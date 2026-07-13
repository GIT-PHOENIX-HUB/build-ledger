# Vote Rules

## Voting Seats

Valid votes come only from:

- Browser
- Echo
- Firedancer
- Claude Persistence

Ash is not a voting seat.

## Vote Question

Each voting seat must answer:

Should the OS Agent foundational transition move forward under the proposed team-governed model, with Browser as Shane's authorized hand and repo guardian, Echo as research and memory lead, Firedancer as verifier and contract drafter, Claude Persistence as builder and orchestrator, and all contracts governed by one OS Agent constitution?

## Required Vote Form

Each seat must file one response in `responses/`.

The response must include:

1. Vote: `APPROVE`, `APPROVE_WITH_REQUIRED_EDITS`, `REJECT`, or `SHANE_TIE_BREAKER_REQUIRED`.
2. Evidence checked.
3. Required edits, if any.
4. Role-contract concerns.
5. Constitution concerns.
6. Obsidian team-folder concerns.
7. Research or verification required before implementation.
8. Exact next action.

## Consensus Rule

- `4/4 APPROVE` or `APPROVE_WITH_REQUIRED_EDITS`: move to edit pass.
- `3/4 APPROVE` or `APPROVE_WITH_REQUIRED_EDITS`: move to edit pass unless the dissent names a hard safety or authority defect.
- `2/2 split`: Shane tie-breaker required.
- Any hard authority defect must name exact source evidence and exact replacement language.

## No-Stall Rule

A seat may not block the whole transition with a vague objection.

A valid blocker must include:

- the failed claim,
- the evidence,
- the required replacement,
- the smallest action that unblocks the lane.

## One Review, One Edit

After the vote closes:

1. Claude Persistence or the assigned builder creates the implementation draft.
2. Firedancer verifies the agreed edits landed.
3. Browser acts under Shane-approved authority to move the approved change through the repo path.

Firedancer's final pass confirms agreement compliance. It is not a second open-ended review.

