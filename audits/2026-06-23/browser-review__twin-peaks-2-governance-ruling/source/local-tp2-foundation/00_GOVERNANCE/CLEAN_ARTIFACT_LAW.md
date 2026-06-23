# The Clean-Artifact Law

A file in this repository states what a thing is — and nothing else. This document defines the violations and the check every contribution passes before it lands.

## Violations — none of these may appear in any committed file
- Notes to self or reminders: "note:", "remember", "for later".
- Deferred-action markers: TODO, FIXME, TBD, TK, XXX, "we should", "revisit", "follow up".
- Process narration or session chatter: "first I did X", "as discussed", "per our chat", the status of the author's own work.
- Hedges and unresolved questions: "(might change)", "not sure", "tentatively", "verify with Shane later", a trailing "?".
- Placeholder text left from drafting: "lorem", "[fill in]", "WIP", an unfinished "...".
- Stale meta: timestamps, conditions, or "as of" notes that decay into falsehood.

## The test
If it would not appear in a published technical document, it does not appear here.

## Pre-commit lint — run against every file before committing
1. Search the diff for: `TODO | FIXME | TBD | TK | XXX | WIP | note to self | remember to | revisit | follow up | verify with | might change | not sure | tentativ | for now | lorem | [fill`.
2. Read each changed file as a stranger: does any line describe the author or the process rather than the subject? Remove it.
3. Confirm every claim has a basis. Source it or remove it.
4. Confirm nothing defers a decision or hedges. State what is true, or do not state it.

A contribution passes only when the search is clean and every file reads as finished truth.
