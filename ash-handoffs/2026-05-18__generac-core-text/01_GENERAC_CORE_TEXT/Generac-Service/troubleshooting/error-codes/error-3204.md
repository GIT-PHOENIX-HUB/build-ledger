# Error Code 3204 — Next Gen / Power Zone 200 Only

## Environment

This error applies **only** to Next Generation Air-Cooled Standby generators with the **Power Zone 200 controller**.

It does **not** apply to Evolution or Nexus controller units. If you are seeing 3204 on what appears to be an Evolution unit, see the [Controller Identification Fork](#controller-identification-fork) below — this is likely a controller misidentification, not a standard 3204 fault.

---

## Controller Identification Fork

**This is the first thing to determine on-site.**

| Controller | Has display panel? | Where errors appear |
|---|---|---|
| **Power Zone 200** (Next Gen) | No — no screen | Mobile Link app or Field Pro app only |
| **Evolution** | Yes — LCD screen | On the display and in Mobile Link |
| **Nexus** | Yes — basic display | On the display |

**Quick field check:** Look at the front of the controller panel.
- If there is no digital display or screen → **Power Zone 200**. Proceed with 3204 steps below.
- If there is an LCD/digital display → **Evolution or Nexus**. Error 3204 should not appear on these. Stop and call Shane.

---

## Overview

- **Error code:** 3204
- **Controller:** Power Zone 200 (Next Gen Air-Cooled only)
- **LED indicator:** Red (alarm)
- **Fault type:** RTS / transfer switch wiring fault (see Manual Gap Note)
- **Visible in:** Mobile Link app, Field Pro app

> **Manual Gap Note:** The Next Gen Diagnostic Manual (which contains the full 3204 flowchart) and the RTS Diagnostic Manual A0001176044 are not yet available in this knowledge base. The steps below cover the controller identification fork and initial triage. For the complete diagnostic flowchart, you need the Next Gen Diagnostic Manual — escalate if initial steps don't resolve.

---

## Immediate Diagnostic Steps

1. **Confirm controller type** — use the identification fork above before doing anything else.

2. **Open Mobile Link or Field Pro** — confirm the 3204 code is displayed there. Note any additional fault description shown in the app.

3. **Check the RTS (Remote Transfer Switch) wiring:**
   - Inspect the control wiring between the generator and the transfer switch
   - Look for loose connections, damaged conductors, or terminal corrosion
   - Reference wiring diagrams in the generator installation manual for your model

4. **Check transfer switch position** — verify the ATS is in AUTO mode, not OFF or MANUAL.

5. **Verify utility sensing:**
   - Confirm utility voltage is present at the ATS input terminals (use a meter — don't rely on appearance)
   - A 3204 can trigger if the controller misreads utility status due to wiring issues

6. **Clear the code and attempt restart:**
   - In Mobile Link or Field Pro, clear the alarm
   - Monitor whether 3204 returns immediately or after a delay

---

## Escalation

| Situation | Action |
|---|---|
| Evolution/Nexus controller showing 3204 | Stop. Controller misidentification or fault. Call Shane. |
| Power Zone 200, wiring checks clean, code returns | Needs Next Gen Diagnostic Manual flowchart. Escalate. |
| Wiring issue found and corrected, code clears | Resolved. Document what was found. |

---

## Related

- [`technical/controllers/power-zone-200.md`](../../technical/controllers/power-zone-200.md)
- [`technical/controllers/EVOLUTION-CONTROLLER.md`](../../technical/controllers/EVOLUTION-CONTROLLER.md)
- [`troubleshooting/error-codes/error-codes-master.md`](error-codes-master.md)
- [`troubleshooting/diagnostics/ats-troubleshooting.md`](../diagnostics/ats-troubleshooting.md)
