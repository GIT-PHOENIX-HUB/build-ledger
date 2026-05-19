# Troubleshooting Workflows — Field Diagnostic Guide

**Applies to:** Guardian 10–26 kW and Next Generation 10–28 kW air-cooled standby generators
**Owner:** Phoenix Electric LLC

---

## How to Use This Guide

This doc covers the 4 most common field diagnostic scenarios. For each one, work through the steps in order. If you solve it, stop. If you don't, escalate.

**Every troubleshooting session starts the same way:**
1. Check Mobile Link or the control panel for error codes
2. Note the exact code number
3. Look it up in ERROR-CODES-FIELD-REFERENCE.md
4. Then come back here for the workflow that matches your situation

---

## Workflow 1: Engine Cranks But Will Not Start (or Starts Hard / Runs Rough)

**Common codes:** 1100 (Overcrank), 1101 (Overcrank — 8/9kW only)

### New Install?

1. Verify fuel is turned on — shutoff valve should be within 6 feet of unit
2. Verify fuel lines have been bled — air pockets in line will prevent starting. **Especially common after LP refill.**
3. Check LP tank level (if applicable)
4. Verify proper fuel conversion:
   - **Guardian:** Orange fuel selector knob on mixer set to correct fuel type (LP or NG)
   - **Next Gen:** Fuel type set via Field Pro app
5. If all above is good, check spark plugs and ignition

### Existing Install?

1. **Check fuel supply first:**
   - LP tank level (most common miss)
   - Fuel shutoff valve open
   - Fuel selector on correct type
2. **Check maintenance status:**
   - When was last oil change? (overdue = sludge = hard start)
   - Air filter condition — dirty filter chokes engine
   - Spark plugs — fouled or worn plugs = no ignition
   - Valve adjustment — if past 400 hours and never adjusted, valves are likely the problem
3. **Check battery:**
   - Voltage should be 12.6V+ — weak battery = weak crank = overcrank alarm
   - Load test if voltage is marginal
4. **Clear the alarm and try again:**
   - **Guardian:** Press OFF → ENTER → ENTER → AUTO
   - **Next Gen:** Hold OFF for 3 seconds → AUTO
5. If it cranks hard, starts, then runs rough: likely fuel or valve issue
6. If it cranks and never fires: likely ignition (spark plugs, coils) or fuel delivery

### Still won't start?
- **Escalate to Shane**
- **Call Generac IASD: 1-888-GENERAC**

---

## Workflow 2: ATS (Automatic Transfer Switch) Issues

### Scenario A: Power does NOT transfer to generator during outage

Generator is running but house has no power.

1. **Check MLCB (Main Line Circuit Breaker)** — is it ON?
   - If MLCB is OFF, the generator runs but the ATS won't transfer because it needs generator voltage to move to standby position
   - Turn MLCB to ON
2. **Check transfer switch position** — look at the handle inside the ATS
   - If in UTILITY position → it didn't transfer
   - Can perform manual transfer if comfortable (use manual operating handle)
3. **Check control wires:**
   - Wire 194 — provides 12 VDC to ATS, always powered
   - Wire 23 — signal ground, controlled by controller, grounded when gen starts
   - If either wire is disconnected or damaged, ATS won't transfer
4. **Check ATS fuses** — there are 3 fuses inside the ATS
   - Blown fuse = broken communication between gen and ATS
   - **WARNING: ATS contains live wires — use caution**

### Scenario B: Power does NOT transfer back to utility when power returns

Generator shuts down but house stays dark.

1. Confirm utility power is actually present (check meter, check neighbor)
2. Check transfer switch position — if stuck in GENERATOR position
3. Can perform manual transfer back to UTILITY position
4. Check 194 and 23 wire connections
5. Schedule service — this is usually a mechanical issue in the ATS

### Scenario C: Generator starts with utility power present

1. **Is it exercising?** Guardian series does NOT power the house during exercise — this is normal
2. **Check for brown-out** — utility voltage may have dropped below 65% of nominal, triggering the start
3. **Check for error codes** on control panel or Mobile Link
4. If codes present: turn MLCB OFF → wait 5 min → clear code → press MANUAL
5. Verify utility service disconnect is ON/CLOSED
6. If gen is running and utility is confirmed present, and transfer switch is in UTILITY position → safe to press OFF at control panel

### Manual Transfer Procedure (Emergency)
- Open ATS enclosure
- Insert manual operating handle into transfer mechanism
- Move handle to desired position (UTILITY or GENERATOR)
- **Only do this if comfortable and after reading the owner's manual**

---

## Workflow 3: Outage Troubleshooting (Generator Not Running During Outage)

### Scenario 1: Generator NOT running, RED or YELLOW light

1. Note the error code from control panel or Mobile Link
2. **Lean fuel codes (1100, 1200, 1900):**
   - Verify fuel shutoff valve is ON
   - Check LP tank level
   - Clear alarm and put in AUTO
   - If doesn't start or runs rough → press OFF → call dealer
3. **Low oil (1300):**
   - Check oil level with dipstick
   - Add oil if low — DO NOT OVERFILL
   - If oil is correct, contact dealer
4. **RPM sensor / low battery (1500, 2750):**
   - Check battery condition in controller menu or Mobile Link
   - If "Good" → contact dealer
   - If "Check Battery" → test or replace
   - Allow 24-hour charge cycle — gen needs 12V minimum to crank
5. **Aux shutdown (2800):**
   - Locate aux shutdown switch(es)
   - Reset to ON position
   - Clear alarm → AUTO

### Scenario 2: Generator running but NOT powering house

1. Check MLCB — must be ON
2. Check transfer switch position
3. If ATS is in UTILITY position → manual transfer may be needed
4. See Workflow 2 above

### Scenario 3: Running with YELLOW light

- Either a maintenance reminder is active OR a battery/charger warning
- Generator will still run — this is not an emergency
- Check and clear maintenance reminders after service

### Scenario 4: Running 24+ hours continuously

- **Every 24 hours of continuous operation:**
  1. Shut down for minimum 30 minutes
  2. Check oil level — add if needed (DO NOT OVERFILL)
  3. Visual inspection for leaks, damage, overheating
  4. Restart in AUTO

### Scenario 5: Generator still running after utility returns

1. Check control panel for error codes
2. If codes present: MLCB OFF → wait 5 min → clear code
3. Verify utility service disconnect is ON/CLOSED
4. If utility confirmed and ATS is in UTILITY position → safe to press OFF
5. If utility confirmed but ATS is stuck in GENERATOR position → shut down safely per manual

---

## Workflow 4: Intermittent or Hard-to-Reproduce Alarms

These are the most frustrating calls. The alarm shows up once, clears, then comes back days or weeks later.

### Initial Steps

1. Identify the alarm code
2. Clear alarm and manually restart
3. If same alarm returns immediately → it's not intermittent, it's persistent. Troubleshoot normally.

### If Alarm Is Truly Intermittent

Look for patterns:

1. **Timing:** Does it happen during exercise? Only in certain seasons? Morning vs afternoon?
2. **Weather:** Extreme cold or heat affects fuel pressure, battery performance, and sensor readings
3. **External factors:**
   - LP tank low? (Fuel pressure drops as tank empties, especially in cold weather)
   - Other gas appliances running simultaneously? (Reduces gas supply pressure to gen)
   - Neighbors on same gas line drawing down pressure?
4. **Common intermittent codes and likely causes:**
   - **1100 (Overcrank)** during exercise → stale fuel, low LP, battery getting weak
   - **1200 (Overspeed)** in cold weather → fuel pressure fluctuation
   - **1300 (Low Oil)** after extended run → oil consumption is normal under load, check level
   - **2800 (Aux Shutdown)** → switch getting bumped, loose wiring, vibration

### Document Everything

- Check alarm log on controller: MAIN → ALARM LOG
- Check Mobile Link alarm history
- Note date, time, weather, what else was running
- Give this log to the dealer or Shane for diagnosis

---

## Hard Reset Procedure

If the controller is frozen or unresponsive:

1. Turn generator OFF at control panel
2. Disconnect battery terminal
3. Unplug T1 2-wire white connector under controller
4. Wait 30 seconds
5. Reconnect T1 connector
6. Reconnect battery
7. Controller will power up — may launch Install Wizard (this is normal)
8. Complete wizard if prompted → set language, time, Quiet Test, exercise schedule
9. Press AUTO

---

## Escalation

If any workflow doesn't resolve the issue:
1. **Call Shane**
2. **Call Generac IASD: 1-888-GENERAC (1-888-436-3722)**
3. Have ready: unit serial number, exact error code, what you've already tried

---

*Source: Generac Support Articles, Generac diagnostics documentation, Phoenix Electric field experience*
*Last updated: 2026-04-16*
