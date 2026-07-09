---
description: "Session-by-session forensic audit of Ash's work for Phoenix Electric, 2026-06-08 to 2026-07-08 — jobs touched, decisions made, money in motion, what's still open."
type: report
status: active
topic: ash-activity-audit
author: Ash
date: 2026-07-08
---

# Ash — Forensic Activity Audit (2026-06-08 to 2026-07-08)

Prepared for Shane Warehime, 2026-07-08, at the transition point where Shane is stepping into
the office-manager role following Stephanie Mowbray's departure (effective 2026-07-08).

**Scope:** 15 working sessions across the last 30 days (6/11, 6/12, 6/15, 6/19, 6/23/26, 6/25,
6/26 ×2, 6/29, 6/29–30, 7/1 ×2, 7/2, 7/6 ×3). Recurring themes: Cherry Valley (FHG) closeout and
change orders; Midtown Montessori Academy 600A commercial service (estimates, invoicing, Xcel
CT-order coordination); Raptor Construction jobs (1265 Golden Eagle, 757 Downing, 3907 Xavier,
1152 Indian Creek, 352 Lakeview/McCarl, 4309 W 35th); NorthPoint Construction (NPC) Clay Street
collections; Chase Custom Homes (1354 S Fillmore); Wild & Mild Homes (2445 S Jackson, 363 N
Fillmore); payroll/HR paperwork; a running AR/collections push; a multi-day ServiceFusion outage
investigation; and the Phoenix_Tasks.xlsx task board itself, which was audited and triaged
repeatedly (most heavily 6/15 and 6/29). Two sessions are titled identically ("6/26 Morning
boot up" appears once with that date and once mislabeled but logged 7/6; "7/6 Boot up Ash"
appears twice under different session IDs) — these are reported as found, not de-duplicated,
since distinct work product ties to each.

**Sourcing note:** the session-transcript full-text search tool (`search_session_transcripts`)
returned zero hits for every query tried in this audit (including generic terms), so it appears
non-functional in this environment. Detail for the earliest sessions (6/11, 6/12, 6/15, 6/19) was
reconstructed from dated entries in `Phoenix_Tasks.xlsx` (both tabs), file timestamps in the
OneDrive customer folders, and cross-references in `000_HANDOFF.md` and the memory folder —
not from the raw transcripts themselves. Session titles/dates/IDs are confirmed via
`list_sessions`.

---

## Chronological Log

### 2026-06-11 — "6/11 - CV & Design" (archived)
- Built and finalized the **Cherry Valley (FHG Builders, 8635 S SH 83, Franktown) closeout
  package** — nine PDF revision passes (`v2` through `v9` plus a final/email version) before
  landing on `Cherry_Valley_Closeout_Package_FHG_2026-06-11_FINAL.pdf`, plus a companion
  **warranty letter** (Shane approved as-drafted on a call same day) and a **master closeout
  spreadsheet** (`Cherry_Valley_MASTER_Closeout_2026-06-11_v2.xlsx`).
- Captured a same-day call with Shane (`CALL_NOTES_Shane_2026-06-11.md`): resolved 3 missing
  fixture locations (Vive PowPak dimming modules, Phase-Adaptive power modules, Pico remotes —
  placed in the hallway outside the bathrooms), confirmed SURE-LITEs should be relabeled as
  egress lighting, and confirmed line-item 1.1 could be removed in total (not installed at CV).
- Started scope notes for **CO-004** (2nd-stage propane regulator + gas pipe tear-out/reinstall,
  shutoff→generator) — pricing not yet confirmed by Shane at this point (resolved later, 6/26,
  at $750 flat).
- Delivery to Cristi (FHG) planned as ZIP vs. OneDrive link — decision captured in call notes.

### 2026-06-12 — "Midtown Montessori" (archived)
- **Midtown Montessori (4345 W 46th Ave, 600A commercial service replacement)** — revised
  **Invoice #6131** in Service Fusion, combining the materials deposit ($19,336.00) and 50%
  labor-at-mobilization ($2,417.00) into a single credit-card invoice with a 3% CC surcharge
  ($652.59), total **$22,405.59**. This revised/superseded the original deposit-only #6131
  ($19,916.08) sent 6/3. Payer/cardholder: Ryan Yoffe (Mile High Building & Development, GC).
- **6/12: responded to a merchant-account "High Ticket Review"** from the card processor
  (Merchant ID 520004827585) triggered by the $22,405.59 transaction. Built and filed a formal
  response letter (`CoverLetter_WorldpayResponse_SOURCE_2026-06-12.html`, signed by Stephanie on
  Shane's behalf) plus a documentation packet: three months of settlement-account bank statements
  (Mar/Apr/May, acct ...9797), the signed estimate and service agreement (both signed by Ryan
  Yoffe 6/3), and the stamped E1.0 engineering drawing. Letter explained the transaction as a
  legitimate commercial-project deposit/mobilization payment, noted normal residential CC volume
  is $3,000–$10,000/mo, and flagged one more milestone payment (~$2,417) expected at final
  inspection.
- Noted the Denver electrical permit for the project was on file as Record **2026-LOG-0005562**,
  submitted 6/11, and ran a Denver linkage-fee estimator for the project.
- One outstanding item flagged from this thread that never resurfaced explicitly later: whether
  the merchant-account review was formally cleared by the processor (see Still Open).

### 2026-06-15 — "Boot up Ash" (archived)
- Large task-board triage/audit day — the single biggest cleanup pass of the period. Reviewed
  and closed or updated roughly 30 rows on `Phoenix_Tasks.xlsx`, including:
  - **Hartford insurance audit** escalated to 🔥 HOT (open since 3/5, confirmed still
    unactioned — this later became the period's oldest standing zombie).
  - HR paperwork closed out: Casey MVR pulled (flagged "came back a problem child"), Anthony MVR
    clean, NPC subcontractor agreement resolved (no signed copy on file, treated as moot),
    Baylee Hurtado lien-release waivers done, Sean Moore affidavit + $290 tool buyout closed.
  - **2445 S Jackson (Wild & Mild / Bryon Horvath)** fully reconciled: SF balance owed
    **$15,889.81** (progress balance; rough passed Denver 3/2, trim/final CO still to come).
    Traced two "phantom" deposits — $20,000 (chk #124330, 2/10) and $14,431.24 (chk #130325,
    3/24) — confirming $34,431.24 paid to date against Estimate #6065 ($29,431.24 total booked +
    growing).
  - **NPC Clay Street rough payment mystery solved**: NPC had paid $10,000 via ACH 5/22 against
    the rough invoice (was mis-logged as unpaid); remaining rough balance recalculated to
    **$27,242.07**, plus the **$9,310.53** final (20%) invoice (#6115) still open. Stephanie sent
    a revised chase email to all of NorthPoint after a heads-up call with Mike Green.
  - **Rexel payments**: $15,273.44 paid to the 4200 Perry St account (conf #358789685) and
    $5,020.83 to the shop account (conf #358790051), on top of a prior $5,087.94 (6/12) —
    addressing Shane's cash-crunch directive to pay down the shop account first.
  - **Wayne Graves PowerZone generator** — part (mixer, Generac #A0007649028) confirmed ordered,
    expected to arrive that week.
  - **Tony Mitchell garage estimate (#6047)** — audited and found materially incomplete: two
    $0.00 line items (compressor/dust-collector circuits), the 30-space 100A Leviton panel
    missing entirely from the estimate, and permit/bonding/grounding lines absent.
  - **757 S Downing (Raptor/Tim)** — confirmed sent 6/5, $86,505.22, alongside the new **3907 N
    Xavier** Raptor whole-home template baseline ($58,243.69, 11 pages) that became the reusable
    format for future Raptor estimates.
  - Retired several stale/duplicate rows (Jill estimates, Brandon Valdez, Scott/Sam decisions)
    at Stephanie's direction.
  - Rexel-payment and "pay Rexel from builder checks" work reclassified from a one-time URGENT
    task to a standing, event-driven ongoing workflow.
- Multiple Shane-originated action items captured verbatim from a 6/15 text/call batch
  (~4:30 PM): bill Tim/Raptor invoice #4309 for a car-charger repair/relocate with a 20% discount;
  confirm/require Anthony to fix Tim's smoke detectors; chase down OELO "jelly lights" color
  (white, confirmed; Shane self-installing over the 6/20–21 weekend); Golden Eagle (1615)
  Summit County hot-tub permit filled and readied for Shane's signature; new Indeed journeyman
  ad requested (potential replacements flagged for Kasey and Anthony); AR-aging pull from
  ServiceFusion (not QBO — "QBO AR has never worked" per Stephanie) requested by Shane directly,
  tied to his cash-crunch email that day (Rexel had released only half an order pending payment).
- **Mike Schulz generator (err 1100, over-crank)** timeline reconstructed: customer had been
  waiting since November 2025 across three failed diagnostic passes; Anthony's 5/28 verbal
  "bent piston" call still needed to be written up and warranty-checked.

### 2026-06-19 — "Npc clay final payment nudge"
- Continued the **NPC Clay Street** collections thread opened 6/15: rough payment chase ongoing,
  final invoice #6115 ($9,310.53) tracked separately (later split into task #140).
- **Pikes Peak Regional Building Department (PPRBD) registration rebuttal, App #22271** — became
  a "hot zombie" this day (flagged, not yet shipped; shipped 6/25 to Virjinia Koultchitzka with
  CC to licensing@pprbd.org and Shane — see 6/25 entry).

### 2026-06-22 to 2026-06-26 — "6/23 General + 352 Lakeview" and "6/26 Morning boot up"
*(Handoff-doc-narrated period; original detailed daily logs archived to
`Archive/HANDOFF_full_snapshot_pre-trim_2026-07-02.md`.)*
- **1354 S Fillmore (Chase Custom Homes)** rough (70%) invoice prep work (6/23–6/24 design
  handoffs), shipped 6/25 at **$38,448.57** (Stage 1 of 2; Stage 2 trim holdback $16,477.96
  pending). Permit cost $250.10 recorded in SF against job #26104.
- **Midtown Montessori Landmark COA #2026-COA-0000818** submitted 6/23; awaited a verdict through
  the rest of the period (still pending as of 7/6).
- **352 Lakeview, Silverthorne (Raptor / McCarl Residence)** — full estimate build reached its
  31st design-handoff iteration (`v31 FINAL`, 6/26) before shipping as **two separate,
  independently-signable estimates**: Estimate A (House Electrical) **$30,737.39** and Estimate
  B (Generator Package) **$20,219.00** — combined **$50,956.39**, emailed to Tim/Raptor 6/26.
  A pricing discrepancy (a $316 slip vs. comparable jobs) was caught and corrected 6/25 before
  shipping.
- **Pikes Peak PPRBD rebuttal (App #22271)** shipped 6/25 ~12:35 PM to Virjinia Koultchitzka
  (jina@pprbd.org), cc licensing@pprbd.org and Shane; forwarded to DeLisa same day — 18
  confirmed-active jurisdictions cited, CBI report dropped from the outbound package, no appeal
  posture per Shane's chosen strategy.
- **Adrian Orozco** hand-check corrected to **$719.44** (a Friday clock-in error was fixed:
  2h22m break corrected to a 20-minute lunch); payroll for 6/15–6/21 processed in ADP RUN 6/25 PM.
- **Shannon Shepherd** estimate sent via SF: service call $595 (10% labor discount, −$59.50) +
  materials $663.01 = **$1,198.51** (6 undercabinet LEDs + 2 switches, ~41% margin).
- **Pozzi mini-split estimate** ($833, 2329 S Lafayette St, Denver) accepted same-day 6/25;
  entered into SF 6/26; install scheduled and later completed 6/30, invoiced.
- **Rigo Hernandez (Rigoberto Orozco Marquez)** Thursday clock-out corrected to 2:58 PM in SF
  ahead of payroll, per Shane 6/26.
- **Job #26164, 1152 Indian Creek Rd, Blue River** invoiced at **$1,890** (Shane 6 hrs @ $115 =
  $690; crew Casey/Adrian/Rigo 3×8 hrs @ $50 = $1,200, including 2 hrs drive/person per Shane).

### 2026-06-29 — "Create canonical Change Order template" / "6/29 Ash boot-up"
- Built and filed the **canonical Change Order HTML template**
  (`Customer Info/_Phoenix_Customer_Facing_Templates/CHANGE_ORDER_TEMPLATE.html`), standardizing
  the format previously improvised per job.
- **CV CO-004** (Cherry Valley gas pipe/regulator, scoped 6/11) completed to a finished, sent CO
  per Stephanie 6/30, at the Shane-confirmed **$750** flat price.
- **Silver Rock Builders (8661 Forrest Dr, covered patio electrical)** — split a lump-sum bid
  into an original bid + change order per the customer's (Blase DeRoco) request. Caught and
  corrected a ~$200 materials undercharge in the process (published $331.23 → corrected
  $531.07 after removing a stray Rexel order line and a wrongly-included Lincoln-job Pico
  remote). Sent **Invoice #6151 (Original Bid) $904.16 + Invoice #6160 (Change Order)
  $1,201.91 = $2,106.07**, both natively from Service Fusion with pay links.
- **NPC Clay Street** — task-board timeline correction: confirmed NPC had NOT missed its
  commitment; Mike Smith's 6/19 reply set a 2–3 week window (~7/3–7/10) for the final
  **$9,310.53** (Inv #6115). A light "still on track?" nudge sent while batching other
  collections.
- **Nebo Group (NABO)** — surfaced a six-month-aged invoice, **#5326, $10,900** (invoiced
  12/11/2025), missed by prior collection sweeps because it predated the May-forward audit
  waterline. Nebo confirmed intent to pay by credit card.
- **Bryon Horvath (Wild & Mild) check hunt** — chasing an unlogged **$1,550** check (Inv #6112,
  2443 S Jackson temp-pole) that Horvath said he had given directly to Shane.
- Five dated backup snapshots of `Phoenix_Tasks.xlsx` were taken this day as checkpoints ahead of
  specific edits: `_pre-silverrock` (before the Silver Rock invoice split above), `_pre-clay140`
  (before splitting the NPC Clay final-payment task into #140), `_pre-nebo` (before adding the
  Nebo $10,900 collection task), `_pre-bryoncheck` (before logging the Horvath check-hunt task),
  and `_pre-smallpotato` (before launching the small-balance collections batch, see 6/30 below).

### 2026-06-29/30 — continued ("6/29 Ash boot-up")
- **Nebo Group** — completed the vendor ACH enrollment form (thenabogroup.com/vendor-ach) with
  business fields (Phoenix Electric LLC, address, phone, notify email); Stephanie completed
  EIN/bank/W-9/signature. Nebo confirmed payment was PAID via ACH, expected to land within 1–3
  business days (hoped for 7/2, to help fund payroll).
- **Collections round 2** — Stephanie sent a large batch of friendly-reminder invoices on
  ~10–15 small unpaid balances (roughly $265–$392 each), using a warm "easy to overlook in a
  busy inbox" one-liner template drafted 6/29.
- **363 N Fillmore (Wild & Mild)** — sent **Invoice #6163**, 90% semifinal billing =
  **$11,119.97** (base #6066 $7,393.50 + CO #6163 $3,726.47), with a "final-trim billing to
  follow" note; 10% holdback ($1,235.55) plus final-trim CO items left open.
- **Raptor (Tim Scanlan)** — sent an outstanding-balance statement covering 6 invoices totaling
  **$8,762.40** (1615 garage $593.65, 4500 W 36th temp pole $1,325, 1265 COs A/B/C $4,953.75
  combined, 1152 Indian Creek $1,890), explicitly excluding the separately-billed 1265 base
  contract (#6035).
- **Rigoberto Orozco Marquez VOE** (Verification of Employment, home-loan) completed and sent to
  Van Dyk Mortgage: 2024 W-2 $42,462.43, 2025 W-2 $41,359.30, 2026 YTD $31,223.08 @ $29/hr.
- **Hello Management (AppFolio) AR** — cracked the 1.75% CC processing-fee math and matched 4 of
  12 outstanding payments into SF (Inv #6123/6097/6087/6114); flagged a $500 "mystery" duplicate
  payment for follow-up (later resolved 7/6, see below).
- **Midtown Montessori fixture estimate (#158)** — semi-prepped draft built for Andrew
  Barrilleaux (the school, billed separately from Ryan Yoffe's service work and Bryon Bielawski's
  B&B management), pending Shane's fixture selections and pricing input.

### 2026-07-01 — "Rando Question Ash" / "6/30 Morning boot up"
- **Nebo Group** — payment confirmed PAID via ACH by the customer (deposit landing 1–3 business
  days out).
- **Thomas B. (new lead)** — pool-cover hydraulic motor tripping breakers (Parker, CO 80138);
  offered a $245 diagnostic service call for Thursday 7/2.
- **Golden electrical license (TL-EC-00500)** flagged as due for renewal **7/2/2026**.
- **Payroll for Thursday 7/2** flagged HOT with an explicit cash-watch: verify bank balance
  against payroll before running, contingent on the Nebo $10,900 ACH landing in time.

### 2026-07-02 — "7/2 Morning check-in"
- **Payroll RAN** (ADP), funded by the **Nebo $10,989 ACH** and a **Shannon $1,140** payment
  landing that morning — resolved a same-day cash scare.
- **Adrian** hand-check **$626.75** cut (verified against 27.25 hours, with the Wednesday 6/24
  day off correctly excluded).
- **Van registration renewed** online (tags were 7 months expired, within CO's 13-month online
  renewal window).
- **Major infrastructure day:** `000_HANDOFF.md` was audited, fresh-eyes-vetted, and trimmed
  from **1,727 lines down to ~85** (rollback snapshots retained in `Archive/`); a new canonical
  **`Phoenix_Billing_Status.md`** AR/change-order tracker was created (handoff now points to it
  rather than double-tracking); a major Desktop and Downloads cleanup pass was run.
- **Open AR at this point: ≈$105,000 across 8 invoices** — time-sensitive items flagged: Peak
  #6138 $867.51 (demanded EOB 7/2) and NPC Clay #6115 $9,310.53 (collection window opening 7/3).
  Other named balances: 1924 Lincoln $14,858.79 (biggest single open item after CV); Cherry
  Valley (FHG/Jesse) ~$58K; plus 363 Fillmore, Raptor statement, Chase/Spencer, Silver Rock, and
  an aged tail.

### 2026-07-06 — "6/26 Morning boot up" (mislabeled/duplicate title), "7/6 Boot up Ash" ×2, "Midtown Montessori project setup"
*(These four session entries correspond to one very dense work day per `000_HANDOFF.md`'s
"CURRENT" section; content below is organized by thread, not strictly by session ID, since the
transcripts themselves could not be searched.)*
- **ServiceFusion outage — root-caused and fixed.** After a machine reboot, SF began returning
  `invalid_client`. Root cause: **Azure MFA session expiry** (`AADSTS50078`), which broke the
  connector's read access to Azure Key Vault (`phoenixaaivault`, where the real SF credentials
  live) — SF itself and its stored credentials were never at fault, and nothing was regenerated.
  Fix: `az login` to refresh MFA (as smowbray@phoenixelectric.life) + a full process bounce of the
  connector (a window-close is insufficient; requires a true app quit to clear the cached child
  process). Documented as a standing runbook
  (`memory/reference_sf_recovery_runbook.md`).
- **MCP tool-crash investigation** (recurring `400 tools.3X illegal property key` crash,
  roughly biweekly, 3× this day alone). Investigation ruled out all locally-present connectors
  (8 classic servers + 7 desktop extensions + plugins, all probed clean via a purpose-built
  `scratchpad/mcp_probe.py` script) and an earlier attempted fix to the ServiceFusion MCP fork's
  bracket-notation schema keys (`filters[status]` etc., renamed to `filter_*` in
  `~/phoenix-tools/sf-mcp-phoenix/`) did NOT stop the crash. By elimination, the suspected
  offender is a **hosted/claude.ai connector**, with QuickBooks Online the prime suspect
  (crashes clustered on "invoice" searches). **The QuickBooks Online connector was disabled by
  Stephanie on 7/6** (it had never been used) as the real fix, pending confirmation by the
  absence of further crashes. Interim behavioral rule adopted: load MCP tools by single exact
  name only, never by keyword/batch search.
- **Generator annual-maintenance push** — analyzed the full Generac maintenance list (199 active
  generator customers; 157 due for 2026 service: 35 "hot"/did 2025, 54 "warm"/did 2024, 68
  lapsed ≤2023). Confirmed kit availability (~39 units of the workhorse 0J93230ESV kit available
  between shop stock and the Rexel Denver hub — no factory order needed). Built a prioritized
  call list for the Elizabeth/Parker cluster and began booking: **Randy Andrews booked for 7/7**
  (also corrected a stale address on file — he'd moved from Crystal Peak Dr, Parker to 5090
  Private Rd 192, Elizabeth, and his unit is 24kW not 14kW); Cynthia Huff and David Simon
  texted/pending; several customers screened out (DIY self-service, no-longer-interested,
  cold leads). Master maintenance spreadsheet reconciled with backfilled 2026 service dates for
  three customers that had been missing from it entirely (Krysil, Gillman, Snyder) — flagged as
  a sign the master list needs a fuller reconciliation pass.
- **Midtown Montessori — Xcel CT Order Form.** Filled a 53-field fillable Xcel "CT Order Form"
  for the 4345 W 46th service (120/208V, 3-phase, 4-wire, underground, commercial, new; 600A
  main; parallel 4×350 KCMIL AL feeders). Corrected the declared load from an initial 130 kW
  (which Shane clarified was really "a 900A service" figure) down to **44 kW**, per NEC 220.87,
  sourced from the stamped E1.0 one-line by Colorado Electrical Engineering (Charlie Ritenour/
  Cercerone, dated 6/10). Shane answered all three open questions same day (site ready now;
  corrected load; approved sending the E1.0 to Xcel). **Sent 7/6** to Xcel designer Kevin Newman
  with the stamped E1.0 attached, cc'ing Bryon Bielawski, Shane, and Andrew Barrilleaux — task
  closed; next move is Xcel's (design → quote → payment → scheduling → construction).
- **Hello Management $500 mystery payment** — narrowed via a working hypothesis (unverified as
  of the 7/6 write-up): the 5345 W 3rd (Lakewood) $500 payment likely applies to Inv 6114 (given
  a related $1,342.51 payment on the same work order in May), which would make the **Dallas Apts
  (1531 Washington, Denver) $500 payment the genuinely unbilled one**, requiring a new invoice.
  Flagged as a 30-second check once SF access was restored (`get_invoice` on #6114).
- **Outlook mail-reading method changed.** The New Outlook for Mac update killed the AppleScript
  bridge used to read Exchange mail (`exchange accounts` now returns 0); the Azure `az` CLI Graph
  token authenticates but lacks the `Mail.Read` scope. **New working method:** Outlook on the
  web via Chrome SSO (`outlook.office.com`, account already signed in, no password entry) reading
  full threads via page-text extraction. Documented as a standing reference
  (`memory/reference_outlook_mail_read_method.md`).
- **IRS EIN name/entity mismatch + CO DOR payroll tax** (Travis Garrett / Garrett & Associates
  CPA). The IRS has never matched any of three name variants (Phoenix Electric / ...CO /
  ...LLC) to the EIN; the S-election was filed effective 10/1/2022 but the prior accountant
  filed 2022 and 2023 as Form 1120 (C-corp) instead of 1120-S, causing three rejected e-file
  extension attempts (paper-filed instead) and blocking the 2025 return and a possible 2024
  amendment. A dial-ready script was prepared for a call to the IRS Business/EIN line
  (800-829-4933) to confirm the legal name on file, the entity type used, and what was filed in
  2022–2024. Separately, CO Department of Revenue payroll-tax standing needs checking — the
  prior accountant was Zelle'd payroll-tax money that may never have been remitted. (Garrett CPA
  bills $225/hr; the plan was for Stephanie, not the CPA, to make the initial IRS call.)
- **Checkpoint-before-risky-action protocol adopted.** Origin: this same day's SF crash saga
  (the fix was declared "done" twice before being verified live). New standing rule: before any
  crash-prone or irreversible action, write the full reasoning and the exact next step to disk,
  announce it plainly, and only then execute — so a crash costs a cheap rewind instead of
  re-deriving everything (`memory/feedback_checkpoint_before_risky_action.md`).

---

## Still Open / Not Done

### Money / Accounts Receivable
- **NPC Clay Street final invoice #6115 — $9,310.53** (collection window opened 7/3; last
  status was "watch, escalate if silent").
- **Peak invoice #6138 — $867.51** (was demanded by end-of-business 7/2; payment status was
  never confirmed as of the last handoff entry read).
- **1924 S Lincoln (Zelenka) final invoice #6144 — $14,858.79**, sent 6/12; receipt confirmation
  with Ryan Zelenka was still an open task as of 6/15 and not confirmed closed.
- **Cherry Valley (FHG/Jesse) balance — ~$58,000**, largest single open receivable in the period.
- **363 N Fillmore (Wild & Mild)** — 10% holdback **$1,235.55** plus a final-trim change order
  (materials + Caleb's T&M hours) still to be quantified and billed once trim is complete.
- **1354 S Fillmore (Chase Custom Homes)** — Stage 2 trim holdback **$16,477.96**, billable at
  trim-out; separate 10% final CO for the job also pending (100 ft COB tape, channel, gym,
  kitchen-box relocate, master-can recess — Casey/Caleb hours being gathered).
- **1265 Golden Eagle (Raptor) homeowner final statement** — blocked on a per-diem reconciliation
  Shane needs to confirm (baseline could be $12,563.32 or $13,896.37 depending on the take-off
  figure, $11,333 vs. $10,000).
- **352 Lakeview (Raptor/McCarl)** — both estimates ($30,737.39 house + $20,219.00 generator)
  shipped 6/26; shelved awaiting Tim's acceptance of one or both.
- **Hello Management/AppFolio** — the $500 "mystery" payment (Dallas Apts vs. 5345 W 3rd) needs
  the 30-second `get_invoice` #6114 check to confirm which property is unbilled.
- **Bryon Horvath check, Inv #6112 ($1,550)** — reportedly handed to Shane directly; needs
  confirmation it was deposited and logged in SF.
- **Rexel aged balance — roughly $130K–$164K** past due; ongoing builder-check-to-Rexel payment
  workflow, event-driven.
- **4200 Perry Street (FHG) Rexel lien exposure** — after a $15,273.44 payment 6/15 against a
  $22,847.18 (4/20) balance, roughly $7.5K may remain; the block-vs-allow lien decision for this
  account was never finalized with Shane.
- **Collections round 2** small-balance invoices ($265–$392 range) — batch sent 6/30, but
  Stephanie noted "more calling still to do" as of 7/1.
- **1615 Golden Eagle (Raptor)** — Summit County hot-tub permit fee ($865) needs to be billed to
  the customer once confirmed.
- **Midtown Montessori merchant-account "High Ticket Review"** (responded 6/12 with a full
  documentation packet) — no confirmation on file that the processor formally cleared the
  account; worth a follow-up given a second ~$2,417 milestone payment is expected at final
  inspection.

### Licenses / Compliance
- **Adams County electrical license — EXPIRED 11/05/2024.**
- **Westminster license — cancelled** (reason never verified).
- **Golden electrical license (TL-EC-00500)** — was due 07/02/2026; renewal status not confirmed
  closed in the material reviewed.
- **Hartford insurance audit** — open since 3/5/2026 (~4 months), the period's oldest standing
  "zombie" item; escalated to HOT 6/9/6/15 but no resolution found in the record.
- **IRS EIN/entity-type mismatch** (blocking the 2025 return and a possible 2024 amendment) —
  the scripted IRS call had not been made as of 7/6.
- **CO Department of Revenue payroll-tax standing** — unconfirmed whether historical payroll tax
  remittances (handled by the prior accountant) actually landed; needs a DOR portal login check.
- **COI project** — 8 jurisdictions requiring portal logins (Castle Rock, Centennial, Littleton,
  Superior, Parker, Pikes Peak, Wheat Ridge, Arvada) were parked mid-project; Parker, Littleton,
  and Arvada were completed, leaving Castle Rock (login wall) and 4 non-eTRAKiT outliers
  (Centennial, Superior, Pikes Peak, Wheat Ridge) still open as of the most recent note.
- **Pikes Peak PPRBD App #22271** — rebuttal shipped 6/25; verdict was still pending as of 7/6.
- **Midtown Montessori Landmark COA #2026-COA-0000818** — submitted 6/23; verdict still pending
  as of 7/6.

### Jobs / Bids
- **10 Wild Rose Trail, Cherry Valley Hills** (TK Morrison / Martin Miller) — new bid requested
  6/17, not yet built as of the last record.
- **Charlotte Kerksiek (Strasburg)** — lead awaiting a scheduled SF appointment; status
  unconfirmed since 6/22.
- **Bill Simonds** — new-customer estimate for a metal pole barn shop, needs a scoping call/site
  visit; not yet built.
- **Tony Mitchell garage estimate (#6047)** — identified gaps (missing panel line item, two $0
  circuit lines, missing permit/bonding) not yet corrected as of the last record.
- **Adam Zarian sauna estimate** — awaiting pricing/scope info from Shane.
- **Wendy Mutschlknaus generator control-board estimate** (Generac part #0J8371C) — part
  price/availability not yet sourced.
- **Jonathan Perez / Thor's Hammer gate-run estimate (#6053, 650 ft)** — placeholder estimate
  only, awaiting Shane's pricing/design.
- **Kent Construction bid** — scope/spec docs were still TBD from Stephanie as of 6/1.
- **Wayne Graves PowerZone generator repair** — part ordered/received per the record, but a
  licensed PowerZone installer outside Phoenix still needed to be found and scheduled (Phoenix
  currently lacks a licensed PowerZone technician).
- **Mike Schulz generator (bent-piston diagnosis)** — Anthony's verbal 5/28 finding was never
  entered into SF in writing; Generac warranty status for a bent piston was never checked; the
  customer has been waiting since November 2025.
- **Vehicle Maintenance Policy** — Shane and Stephanie review, target-signed 6/25; status
  unconfirmed as of the last handoff entry.

### Infrastructure
- **MCP tool-crash root cause** — QBO connector disabled 7/6 as the probable fix (~85%
  confidence); NOT yet confirmed by an extended crash-free run as of this audit's cutoff.
- **Generator maintenance master spreadsheet** — confirmed missing multiple 2026 service entries
  (3 caught by accident 7/6); a full reconciliation pass against completed SF generator jobs was
  flagged as still needed.
- **Generac infrastructure requests from Shane** — scrape line items, a GitHub repo, and a
  troubleshooting/service skill — queued, not started.
- **Anthropic deep-research catalog** (Shane's ask, 6/26) — parked, needs a dedicated run.
- **Daily automated invoice-review agent** (Shane's ask, 6/12 email) — explicitly flagged as
  needing a cost/design conversation before standing up (recurring-cron cost rule); not built.
- **SMP (Small Projects) pricing-tier methodology** — definition still awaited input as of 7/2
  (`memory/Phoenix_Pricing_Methodology.md` §3); a Shane-safe clean copy was queued behind it.
- **Downloads/Desktop triage remainder** — a financial/payroll/tax pile and an unidentified
  "Hanlon Schedule" file were still unfiled as of 7/2; staged deletes
  (`~/Downloads/_DELETE_installers/`, `~/Desktop/_ARCHIVE - DELETE ME/`) were awaiting manual
  confirmation and Trash-emptying.
- **GitHub access streamlining** ("GitHub fluid access") — open, low priority.
- **Global Payments merchant account** (~$32/mo, believed stale/unused) — cancellation call not
  yet made as of last record.
- **Azure "Ash" website access** — Shane created a credential/file for Ash and Stephanie to begin
  working on the Phoenix Electric website; log-in and familiarization had not yet happened.

### HR / Personnel
- **New Indeed journeyman ad** — requested 6/15 as a potential replacement path for Kasey and/or
  Anthony; not yet posted as of last record. (Also: whether to reactivate paused Indeed postings
  given this hiring push was unresolved.)
- **Montana candidate ("Sam," Feb 2026 interview)** — Shane asked for outreach 6/15; name needed
  confirmation and no contact was recorded as complete.
- **MFA/Entra self-sufficiency for Stephanie** — resolved 6/17 (own Authenticator + phone
  registered); flagged here only because Stephanie's departure (7/8) means this access likely
  needs to be re-provisioned for whoever picks up admin duties next.
- **Casey** — flagged 6/15 as "came back a problem child" after MVR; no follow-up documented.

---

## Notable Decisions & Process Changes
- **QuickBooks Online connector disabled** (7/6) as the leading fix for a recurring MCP
  tool-load crash; it had never been used for real work, so removal was judged a clean fix
  rather than a workaround.
- **Checkpoint-before-risky-action protocol adopted** (7/6): before any crash-prone or
  irreversible move, persist the full reasoning + exact next action to disk and get an explicit
  go-ahead before executing, so a crash costs a cheap rewind, not a re-derivation.
- **MCP tool-loading rule**: load tools by single exact name only; never by keyword/batch
  ToolSearch, which is what pulls a malformed tool into a request and crashes the session.
- **ServiceFusion MCP recovery runbook codified**: `az login` + a full connector process bounce
  (app quit, not just a window close) — documented so future `invalid_client` errors after a
  reboot don't get mis-diagnosed as a credential problem.
- **Outlook mail-reading method switched** from AppleScript (killed by the New Outlook for Mac
  update) to Outlook-on-the-web via Chrome SSO.
- **000_HANDOFF.md restructured and trimmed** (7/2) from 1,727 lines to ~85 (later ~150 by this
  audit), with full history preserved in `Archive/`; a new canonical `Phoenix_Billing_Status.md`
  was created as the single AR/change-order tracker so receivables stop "sliding off the plate."
- **Standing AR/pending-tracker convention adopted** (Stephanie's ask, 7/2): every handoff must
  carry a running "money owed" block and a "pending/awaiting-others" block.
- **Canonical Change Order template created** (6/29), replacing ad hoc per-job formatting.
- **Rexel-payment workflow reclassified** from a recurring one-off URGENT task to a standing,
  event-driven ongoing operations item (6/15).
- **Lakeview ESTINVCO extract flagged as a possible pricing-lineage source** for other bids (not
  just a design template) — preserved and cross-referenced rather than discarded.
- **Stephanie Mowbray's departure** (effective 2026-07-08) — Shane is stepping directly into the
  office-manager role rather than hiring a near-term replacement; the business inbox
  (contact@phoenixelectric.life) remains unchanged per his explicit instruction.

---

*Compiled by Ash, 2026-07-08. Sources: `Phoenix_Tasks.xlsx` (Active Tasks + Completed tabs) and
its five 2026-06-29 checkpoint backups; `_GATEWAY/000_HANDOFF.md`; session list via
`list_sessions`; dated files in OneDrive customer job folders; and the memory folder's
`feedback_*`/`reference_*`/`project_*` files. No credentials, tokens, or account passwords are
referenced by value anywhere in this document.*
