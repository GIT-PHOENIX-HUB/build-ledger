# Clean-Artifact Law — Specification and Lint Checklist

**Authority:** Twin Peaks 2.0 Entry Law §III
**Applies to:** Every file committed to this repository

---

## Definition

A clean artifact is a document that contains only what it is.
It is complete, authoritative, and free of process residue.

---

## Violations — what a clean artifact never contains

### Category 1 — Notes to Self
Phrases such as: "remember to check this," "verify with Shane," "come back to this,"
"I think this is right but not sure," "placeholder for now"

### Category 2 — TODOs and Deferred Work
Any form of: TODO, FIXME, HACK, NOTE, REVISIT, TBD, TK, [fill in later],
[coming soon], [to be determined], action items addressed to the author

### Category 3 — Process Chatter
Session narration, thinking-out-loud text, explanations of the authoring process,
meta-commentary about the document itself, references to other sessions or agents

### Category 4 — Hedges and Uncertainty
"This may need updating," "subject to change," "approximately," "I believe,"
"probably," unresolved conditional statements where the condition is undecided

### Category 5 — Stale Reminders
Timestamps or conditions that have already passed, references to decisions
made in prior sessions left in as reminders, outdated version references

---

## Pre-Commit Lint Checklist

Run this against every file before checking the Landing Pass box.

- [ ] Search the file for: TODO, FIXME, HACK, NOTE, REVISIT, TBD, TK
      Required result: zero matches
- [ ] Read every sentence — does it state a fact, rule, or instruction?
      Any sentence that does something else is a violation
- [ ] Is every section complete? No section ends with implied continuation
- [ ] Are all references accurate at time of commit? No stale pointers
- [ ] Would this file make sense to a reader with zero session context?
      If the reader needs to know what the author was thinking, it is not clean

---

## Enforcement

Violations found during PR review result in rejection.
The contributor corrects violations and re-submits.
Violations are not negotiated — they are removed.
