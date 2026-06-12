# DRAFT / NEEDS_REVIEW - Session 044 Lessons: GitHub Write Reliability

STATUS: DRAFT / NEEDS_REVIEW. Not doctrine. Not READY. Idle-time skill capture (PREP ONLY).
DATE: 2026-06-12
AUTHOR: Browser 044 (surface owner). For Echo's skill-inventory review.
SCOPE: reusable lessons extracted from the ALIGNMENT v2 staging/repair job. Browser operates GitHub via web UI with no local filesystem.

## WHY THIS EXISTS
During the ALIGNMENT v2 staging, several remote-write attempts SILENTLY failed - the tooling reported "typed/success" but nothing landed. This nearly put a real structural gap into the record (a supersede file referencing a map that did not exist). FD2 caught it. These are the lessons so the next agent does not re-trip them.

## LESSON 1 - GitHub comment textarea can silently drop input
- Symptom: type/form_input report success; DOM read-back returns LEN=0; screenshot renders blank/dark.
- - The render can break per-tab and stay broken across reloads.
  - - RULE: never blind-submit a comment. Verify by EYE (screenshot) that text is present before pressing Comment. If the box reads empty after a successful-looking type, the browser state is untrustworthy - switch method.
   
    - ## LESSON 2 - File-create editor is more reliable than the comment box
    - - The GitHub "new file" editor held input cleanly when the comment textarea did not.
      - - A tracked file is also more durable than a comment: it cannot scroll away, is raw-fetchable, and shows in the tree.
        - - RULE: when the comment UI is unstable, route the content as a tracked file (corrections/, research/, etc.) instead of fighting the box. Post a short pointer comment later only if the box recovers.
         
          - ## LESSON 3 - raw.githubusercontent.com has CDN propagation lag; verify via the GitHub blob view
          - - Immediately after commit, the raw URL returned 404 even though the file existed.
            - - The GitHub blob view (github.com/<owner>/<repo>/blob/<branch>/<path>) is immediate and authoritative.
              - - RULE: a raw 404 right after commit does NOT mean the commit failed. Confirm existence/content with the blob view first; treat raw as eventually-consistent.
               
                - ## LESSON 4 - A whole tab can go bad, not just a method
                - - One tab dropped input in BOTH the comment box and the file editor; the other tab worked fine for the identical action.
                  - - RULE: if a method fails on one tab, retry the SAME method on a known-healthy tab before concluding the method is broken.
                   
                    - ## LESSON 5 - Proof-before-claim: use before/after state as evidence
                    - - Strongest proof of a successful write: pre-action fetch = 404, post-action blob = full content. The transition itself proves it.
                      - - RULE: when claiming a write landed, show the state change, the path, the commit SHA, and a fetch link - not just "I committed it."
                       
                        - ## LESSON 6 - Supersede, do not delete, to void a stale record
                        - - The stale FIRST STEP comment was voided by a tracked correction file that references it and declares zero authority - the comment was left in place (no deletes).
                          - - RULE: correct drift by adding a superseding record, not by deleting the old one. Deletion is the human operator's hand only.
                           
                            - ## LESSON 7 - Verify that a NAMED artifact actually exists
                            - - A correction file referenced a map by exact filename; the map had not actually landed. The reference was live but the target was missing.
                              - - RULE: when a record names another artifact as "committed," fetch that artifact to confirm it exists before relying on the reference. Do not let one document vouch for another unseen.
                               
                                - ## LESSON 8 - Lane discipline (operator vs surface execution)
                                - - Operator presses only authority buttons: GO / STOP, merge, deploy, secrets, billing, irreversible business calls.
                                  - - Agent owns surface execution after approval: staging, tracked files, routine comments, verification, record repair.
                                    - - RULE: if a UI is unstable, the agent switches method - it does NOT hand the operator copy/paste labor. State which lane an action is in before moving.
                                     
                                      - ## PROPOSED SKILL DELTAS (for Echo, NEEDS_REVIEW)
                                      - - github-write: "verify-by-eye-then-submit" checklist.
                                        - - github-write: "tracked-file fallback when comment UI unstable."
                                          - - github-verify: "blob-view-not-raw for immediate confirmation; raw is eventually-consistent."
                                            - - github-verify: "named-artifact existence check before trusting cross-references."
                                             
                                              - - Browser 044 (DRAFT / NEEDS_REVIEW, PREP ONLY)
