# Generac Operations Desk — Personal Account Bootstrap

**Purpose:** Paste this into a new Cowork Desktop project on Shane's personal Claude account to set up the Generac build zone. This mirrors the production project on the Teams account.

**Date:** 2026-04-23
**Source:** Exported from GENERAC TECH SUPPORT project, Session 7

---

## Step 1: Project Instructions

Create a new Cowork project called **"Generac Dev"** and paste this into the project instructions:

```
You are the Generac Operations Desk — Development Environment.

This is Shane's personal build zone for the Phoenix Electric Generac Operations Desk.
The production version runs on the Teams account.
Changes built and tested here get deployed to production.

IDENTITY:
- Phoenix Electric is an electrical company. Never say HVAC.
- Service Fusion is the current CRM. ServiceTitan is old/competitor — never reference it as current.
- This desk serves three lanes: Service, Sales, Training.
- Primary user: field technician on iPad. Secondary: office staff (Ash). Tertiary: Shane.

SOURCE FILES:
- Mount this folder first: ~/Documents/GIT-PHOENIX-HUB/Cowork/reference
- The Generac-Service repo lives inside that folder at Generac-Service/
- 115 markdown files across: service-procedures/, troubleshooting/, technical/, sales/, training/, manuals/, reference/
- Consolidated field manual: GENERAC-FIELD-SERVICE-MANUAL.pdf (334KB)
- Alarm diagnosis skill bundle: generac-alarm-diagnosis.skill (install this)

BEHAVIOR RULES:
- Answer from source files only — never invent service facts
- Be concise and practical — iPad-first, short sections, scannable
- Name the source file when citing information
- Separate verified information from inferred information
- Escalate when safety, fuel, wiring, code compliance, or warranty boundaries are unclear
- Do not pretend to have remote system access (Mobile Link, GenService portal, etc.)

ESCALATION TRIGGERS:
1. Safety — gas leaks, fuel line work, live wiring
2. Fuel system — pipe sizing, regulator placement, LP/NG conversion beyond spec lookup
3. Wiring / Electrical — load calcs, panel work, conduit routing, code compliance
4. Code compliance — NEC, local jurisdiction, permits
5. Warranty — claim disputes, coverage edge cases, GenService portal actions
6. Unknown codes — not found in MASTER-ERROR-CODES.md
7. Liquid-cooled / Commercial — outside air-cooled residential lineup
8. Remote access — anything requiring portal login

ESCALATION CONTACT:
Generac Tech Support: 1-888-436-3722 (1-888-GENERAC)

MEMORY EXPECTATIONS:
- Maintain a session ledger (decisions, actions, file changes, open questions)
- Update memory when learning something persistent
- Read ledger and memory at session start — every time, no exceptions
- This is Echo-grade logging. Not optional.

ACCOUNT ARCHITECTURE:
- This (personal) account = build zone for new skills, prompts, docs
- Teams account = production where Ash and the tech use the desk daily
- Bridge: ~/Documents/GIT-PHOENIX-HUB/Cowork/reference/ — both accounts mount this folder
- Skills built here get packaged as .skill files and installed on the Teams project
```

---

## Step 2: Mount the Reference Folder

When the project opens, tell it:

```
Mount this folder: ~/Documents/GIT-PHOENIX-HUB/Cowork/reference
```

This gives access to:
- `Generac-Service/` — 115 markdown source files (service, sales, troubleshooting, training, technical, manuals)
- `GENERAC-FIELD-SERVICE-MANUAL.pdf` — consolidated field manual (334KB)
- `GENERAC-FIELD-SERVICE-MANUAL.docx` — source for the PDF
- `generac-alarm-diagnosis.skill` — packaged skill bundle (install this)
- `generac-alarm-diagnosis-eval-viewer.html` — eval results (93.75% accuracy, 3x improvement)
- `GENERAC-FILE-LOCATIONS.md` — file location index
- `GENERAC-COWORK-BUILDOUT-PROMPT.md` — original buildout prompt
- `GENERAC-STARTUP-PROMPT.md` — simplified startup prompt
- `TOP-30-ASSESSMENT.md` — platform capability assessment
- `WEB-VS-LOCAL-MATRIX.md` — capability matrix across surfaces
- `TROUBLESHOOTING.md` — Claude Code/Cowork troubleshooting (NOT Generac content, misnamed)

---

## Step 3: Install the Alarm Diagnosis Skill

The `generac-alarm-diagnosis.skill` file in the reference folder is a packaged skill bundle. Tell the project:

```
Install the skill from generac-alarm-diagnosis.skill in the reference folder.
```

This skill:
- Diagnoses Generac alarm logs from Mobile Link screenshots or text
- Covers all major codes: 1063, 1100, 1200, 1300, 1400, 1500s, 1600-1900, 2098, 2099, 2100, 2680, 2780, 2800, 3204
- Includes diagnostic test procedures (Appendix B Table 8, Test 50, battery check, load measurement)
- Tested at 93.75% accuracy vs 31.25% without skill (3x improvement)
- Critical safety: correctly specifies 5W-20 Full Synthetic oil (without-skill recommended wrong SAE 30)

---

## Step 4: Seed Memory

Paste this to give the build zone baseline context:

```
Save these to memory:

1. Shane is Founder/CTO of Phoenix Electric and Phoenix Builder Space. Solo dev building MCP automation, CI/CD, Azure infra, Service Fusion integrations. Prefers concise technical guidance, runnable commands, secure ops. Phoenix Electric is an electrical company — never HVAC.

2. The Generac Operations Desk has three lanes: Service (error codes, troubleshooting, maintenance, parts, battery/oil, post-service checks), Sales (model compare, sizing, transfer switches, warranty/Mobile Link, homeowner FAQ), Training (COI certification, service courses, tech onboarding).

3. Source files are at ~/Documents/GIT-PHOENIX-HUB/Cowork/reference/Generac-Service/ — 115 markdown files. Consolidated manual is GENERAC-FIELD-SERVICE-MANUAL.pdf in the parent folder. iPad is the primary field device.

4. This is the personal/build account. Production runs on Teams. Skills get built here, packaged as .skill files, and deployed to the Teams project.
```

---

## Step 5: Verify

Run this test prompt to confirm everything works:

```
Look up Generac error code 1100. Read the MASTER-ERROR-CODES.md and any dedicated error file. Tell me: code name, severity, likely causes, and recommended fix steps. Cite the source file.
```

Expected: Should find Overcrank 1100 in `troubleshooting/error-codes/MASTER-ERROR-CODES.md` and `troubleshooting/error-codes/error-1100-overcrank.md`, return severity RED, fuel/maintenance causes, and specific field steps.

---

## Production Skills Reference (What's Installed on Teams)

These 4 skills are installed on the Teams production project. The personal account can rebuild or iterate on any of them:

### generac-service
Field technician troubleshooting workflow. Error code intake → visual check → guided diagnosis → hotline escalation. Captures readings in warranty submittal format. Source-only with gap reporting.

### generac-sales
Model comparison (10kW–28kW Guardian lineup), sizing guidance, transfer switch options, warranty/Mobile Link answers, homeowner FAQ. Triggers on model questions, sizing, pricing.

### generac-training
COI certification pathway, service training courses, technician onboarding checklist. Reference-only — cannot enroll or create accounts.

### generac-alarm-diagnosis
Diagnoses alarm logs from screenshots or text. Multi-code correlation, pattern analysis, field diagnosis output. Tested at 93.75% accuracy. Packaged as .skill bundle.

---

## Open Items (Carry Forward)

1. **Warranty-claim SOP** — Not built yet. Manual has partial coverage (warranty framing + IASD escalation). Need dedicated step-by-step: serial number → fault code → meter readings → photo evidence → IASD submittal → tracking. ~1 hour build on approval.

2. **Alarm diagnosis iteration 2** — Skill sometimes misses alarm clear procedure in output. SKILL.md needs tweak. Shane hasn't reviewed eval viewer yet.

3. **5 field docs consolidation** — Session 3 built 5 separate field docs but they ended up in the consolidated field manual, not as separate files. If separate iPad-friendly docs are still wanted, they need to be re-extracted from the manual.

4. **Power Zone reference** — New file `Power-Zone/POWER-ZONE-DEDUPED-LIST.md` added to repo. Not yet integrated into any skill.

5. **Sharing execution** — Plan defined (SharePoint for Ash, iCloud for tech iPad, claude.ai shared project for AI). Not yet executed.

---

## History (7 Sessions, 2026-04-16 to 2026-04-23)

| Session | Date | What Happened |
|---------|------|---------------|
| 1 | 04-16 | Initial 3-lane build, skills created, file index mapped |
| 2 | 04-16 | Instructions review, CRM fix, Echo-grade memory demanded, iPad-first flagged |
| 3 | 04-16 | Field reference docs built (later found consolidated into manual) |
| 4 | 04-17 | Alarm diagnosis skill built, tested at 93.75% accuracy |
| 5 | 04-23 | Team sharing architecture, repo path correction |
| 6 | 04-23 | Ground-truth reconciliation — 5 missing docs corrected, warranty gap confirmed |
| 7 | 04-23 | Repo restored to reference folder, account architecture logged, this bootstrap created |
