# TIER 1 Decisions — D-001 through D-010
**Source:** Apple Notes, created 2026-03-28
**These block everything. Shane's answers are in ALL CAPS.**

---

| # | Question | Shane's Decision |
|---|----------|-----------------|
| D-001 | What does PHOENIX_UNIFIED_PROD mean? Monorepo? | THAT IS LIVE IN PRODUCTION (ONLY). ONLY WAY IN IS THROUGH GOING LIVE AND HAVE SOME FORM OF CONNECTION TO THE STACK. THIS WILL REPLACE "AI CORE" COMPLETELY. THIS HAS TO HAVE PROTECTION FROM RANDOM AI — ONLY GITHUB COPILOT (CODEX) HAS GATED ACCESS FOR MAINTENANCE. THIS NEEDS TO BE CLONED IN A STAGING REPO FOR UPDATES AND UPGRADES AND THE ABILITY TO ACCESS AND WORK WITH CODE. ALL NEW PRODS WILL WORK THROUGH THE STAGING BEFORE GOING LIVE FOR TESTING AND COMPATIBILITY HARDENING. |
| D-002 | Does gateway get absorbed into unified? | YES GATEWAY WILL BE THE PREMIER OF THE PROD REPO. IT WILL BE THE FIRST TO GO LIVE AND THE ONE TO GATE EVERYTHING ADDED. GATEWAY IS JUST THAT — A GATEWAY. |
| D-003 | Keep gateway separate or merge into ai-core-staging? | NA (answered by D-002) |
| D-004 | Rename ai-core-staging, merge with gateway, or keep both? | NA (answered by D-002) |
| D-005 | Twin Peaks Phase 2 — GO now or verification sprint on gates first? | HOLD. GATEWAY MUST BE FIRST THEN EVERYTHING FALLS IN PLACE. TWIN-PEAKS/05-RUNBOOKS/01-08 |
| D-006 | phoenix-filesystem Phase 2 — GO or HOLD? | AFTER GATEWAY THEN PHASE 2 OF FILESYSTEM |
| D-007 | Is the OpenClaw token in phoenix-ai-core still active? | PROBABLY BUT DON'T KNOW. IF IT IS THEN SHUT IT DOWN — ARCHIVE FOR DELETE |
| D-008 | Authorize git history rewrite to remove committed token? | ORG HAS STRICT GUIDELINES SO FIX IT WHILE ITS IN LOCAL. IF YOU CAN THEN YES FORCE |
| D-009 | phoenix-ai-core after remediation — public archive, private, or archived? | ARCHIVE FOR REVIEW. RESOLVE AFTER GATEWAY IS RUNNING |
| D-010 | phoenix-production-test — still active or superseded? | TEST AND ARCHIVE FOR REVIEW IF NOT LIVE |

---

**Key takeaway:** Gateway is the keystone. Everything else follows after Gateway is running.
