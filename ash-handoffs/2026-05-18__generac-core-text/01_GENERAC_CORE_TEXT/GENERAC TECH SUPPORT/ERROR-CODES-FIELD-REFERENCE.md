# Generac Air-Cooled Error Codes — Field Reference

**Applies to:** Guardian 10–26 kW and Next Generation 10–28 kW air-cooled standby generators
**Controllers:** Evolution 1.0/2.0 and Nexus
**Owner:** Phoenix Electric LLC

---

## Status Light Quick Reference

- **GREEN** = Normal operation, ready to run
- **GREEN/YELLOW** = Normal operation + maintenance reminder active
- **RED** = Active alarm/fault — unit WILL NOT run
- **RED/YELLOW** = Active alarm + maintenance reminder
- **YELLOW flashing (Next Gen)** = Warning or maintenance required — check Mobile Link

---

## ALARMS (Red Light — Unit Will Not Run)

### Controller Fault (no code number)
**Type:** ALARM
**What it means:** Internal controller failure.
**Action:** Replace controller board. Escalate to Shane or Generac IASD.

---

### Overcrank — 1100
**Type:** ALARM
**What it means:** Controller told the engine to start, engine is cranking but not starting.
**Common causes:** Fuel supply off, LP tank empty, stale fuel, clogged fuel filter, bad spark plugs, valves need adjustment.
**Field steps:**
1. Verify fuel supply is ON
2. Check LP tank level (if applicable)
3. Inspect spark plugs
4. Check air filter
5. Verify fuel selector knob is on correct fuel type
6. Check battery voltage — weak battery = weak crank

### Overcrank — 1101 (8 & 9kW units ONLY)
**Type:** ALARM
**What it means:** Controller limited starts to 10 to prevent starter damage.
**Action:** Same as 1100. Check valves — common culprit on small units.

---

### Overspeed — 1200
**Type:** ALARM
**What it means:** Engine speed exceeded 72Hz for 3+ seconds on a 60Hz unit.
**Common causes:** Stepper motor failure, mixer assembly issue, stepper unplugged or jammed.
**Field steps:**
1. Inspect stepper motor and linkage
2. Check mixer assembly for binding
3. Verify stepper motor connector is seated

### Overspeed — 1205
**Type:** ALARM
**What it means:** Instantaneous overspeed — frequency hit 75Hz+ on a 60Hz unit.
**Action:** Same as 1200. Stepper/mixer problem.

### Overspeed — 1207
**Type:** ALARM
**What it means:** Backup overspeed monitor triggered via AVR zero-cross timing. 4500+ RPM for 150ms.
**Action:** Uncommon. Check ignition signal on wire 18. If recurring, escalate.

---

### Low Oil Pressure — 1300
**Type:** ALARM
**What it means:** Low oil pressure switch triggered shutdown.
**Common causes:** Low oil level (most common during extended outages), faulty LOP switch, internal engine issue.
**Field steps:**
1. Check oil level — add if low
2. If oil is full, test LOP switch
3. If switch tests OK, perform oil pressure test
4. **Do not restart without verifying oil level**

---

### High Temperature — 1400
**Type:** ALARM
**What it means:** Engine temperature exceeded high limit.
**Common causes:** Blocked vents/louvers, debris around unit, faulty high-temp switch.
**Field steps:**
1. Clear debris from all vents and louvers
2. Check for rodent nests or obstructions
3. Inspect high-temp switch and wiring
4. Verify adequate clearance around unit (per install specs)

---

### RPM Sensor Loss — 1505
**Type:** ALARM
**What it means:** 2-cylinder unit was cranking but controller got no RPM signal.
**Common causes:** Dead/bad battery, bad starter, starter wiring, ignition coil problem.
**Field steps:**
1. Load test battery
2. Check starter and starter wiring
3. Inspect ignition coils

### RPM Sensor Loss — 1511
**Type:** ALARM
**What it means:** Single-cylinder unit was running and stalled or lost RPM signal.
**Common causes:** Fuel issue, empty LP tank, damaged ignition coil, overload caused stall.

### RPM Sensor Loss — 1515
**Type:** ALARM
**What it means:** Single-cylinder unit cranking — no RPM signal returned.
**Action:** Same as 1505.

---

### Underspeed — 1600
**Type:** ALARM
**What it means:** Engine speed dropped to 55Hz for 30 seconds on a 60Hz unit.
**Common causes:** Overloaded unit, fuel problem, stepper motor throttle issue.
**Field steps:**
1. Check connected load — is it too much for the unit?
2. Check fuel supply and pressure
3. Inspect stepper motor

### Underspeed — 1603
**Type:** ALARM
**What it means:** Engine never reached rated 3600 RPM during startup.
**Action:** Check stepper motor, fuel system, fuel selector knob position.

---

### Overvoltage — 1800
**Type:** ALARM
**What it means:** Output voltage exceeded rated voltage for extended period.
**Action:** Perform voltage test. Likely bad AVR (internal to Evolution board). Escalate.

---

### Undervoltage — 1900
**Type:** ALARM
**What it means:** Output voltage below 80% of rated for 10+ seconds.
**Important:** If firmware is below v1.12, UPDATE FIRMWARE FIRST. Versions 1.12+ attempt slip ring cleaning before shutdown.
**Common causes:** Frost/debris on slip rings, bad AVR, brush wear.

### Undervoltage — 1901
**Type:** ALARM
**What it means:** Sudden voltage drop. Can also occur during a stall (fuel-related).
**Action:** Check all engine functions AND voltage. Could be stator, rotor, brush, overload, or wiring.

### Undervoltage — 1902
**Type:** ALARM
**What it means:** Both zero crosses missing from controller input for 1.5+ seconds.
**Action:** Check excitation winding, zero-cross circuit, loose wiring, field boost hardware. Install firmware v1.12+.

### Undervoltage — 1906
**Type:** ALARM
**What it means:** Only 1 zero cross missing for 1.5 seconds (vs both on 1902).
**Action:** Same as 1902.

---

### Wiring Error — 2099
**Type:** ALARM
**What it means:** Customer-side wiring is miswired. Usually caused during installation when high/low voltage connections (194, 23, N1, N1, T1) are confused.
**Action:** Verify wiring connections per install manual. This normally only appears post-install.

---

### Overload — 2100
**Type:** ALARM
**What it means:** Internal CTs detected overload condition.
**Field steps:**
1. Check load — what's connected?
2. Verify load-shedding modules (if installed)
3. Remove excess load
4. Consider installing load-shed module if recurring

### Overload — 2102 (8 & 9kW units ONLY)
**Type:** ALARM
**What it means:** Unit re-cranked 5 times, stalls when load applied, low voltage (<180VAC).
**Action:** Reduce load. Check stepper motor linkage. Check fuel lines.

### Overload — 2103 (8 & 9kW units ONLY)
**Type:** ALARM
**What it means:** Unit tried to run and accept load 10 times — failed due to overload.
**Action:** Reduce connected load.

---

### Undervoltage Overload — 2299
**Type:** ALARM
**What it means:** Unit overloaded and tried to start with large load still connected.
**Field steps:**
1. Turn OFF main breaker (inside generator or gray door)
2. Let unit start and reach steady state
3. Turn breaker back ON slowly
4. If engine struggles, reduce load

---

### Stepper Overcurrent — 2399
**Type:** ALARM
**What it means:** Current in stepper motor circuit exceeded spec.
**Action:** Check stepper motor operation and coil resistances.

---

### Fuse Problem — 2400
**Type:** ALARM
**What it means:** Missing, blown, or damaged 7.5A ATO fuse in controller (under rubber USB port flap on Evolution controller).
**Important:** This alarm was removed in firmware v1.12+. If you see it, update firmware.

---

### Auxiliary Shutdown — 2800
**Type:** ALARM
**What it means:** One of the auxiliary shutoff switches was triggered.
**Common causes:** Switch toggled during maintenance, switch wiring issue, faulty switch.
**Field steps:**
1. Check all auxiliary shutoff switches
2. Verify none were bumped during service
3. Reset switches to proper position
4. Clear alarm and return to AUTO

---

## WARNINGS (Yellow Light — Unit Will Still Run)

### Low Battery
**Type:** WARNING
**Trigger:** Battery voltage below 12.1V for 60+ seconds.
**Action:** Check charger output. Load test battery. Replace battery if bad.

### Very Low Battery
**Type:** ALARM (Red)
**Trigger:** Battery voltage below 9V for 60+ seconds.
**Action:** Battery is likely dead. Replace and check charging circuit.

### Battery Problem
**Type:** WARNING
**Trigger:** Battery voltage >16V or >600mA charge current at end of 18-hour charge cycle.
**Action:** Remove and test battery. If bad, replace.
**To clear:** Disconnect battery terminal AND unplug T1 2-wire white connector under controller to power-cycle.

### Charger Warning
**Type:** WARNING
**Trigger:** Battery voltage below 12.5V at end of 18-hour charge cycle.
**Action:** Test battery charge retention. If battery is healthy, issue is the charging system.
**To clear:** Same power-cycle procedure as Battery Problem.

### Charger Missing AC
**Type:** WARNING
**Trigger:** T1 wire (120V to battery charger) is not live.
**Common during:** Power outages (normal), new installations (check wiring), cold weather breather heater fault (model 7103).
**Field steps:**
1. If during outage — normal, will resolve when utility returns
2. If new install — check all control wiring, especially T1
3. Check T1 fuse (**CAUTION: Always under 120V even when generator is off**)

### Inspect Battery
**Type:** WARNING (Maintenance Reminder)
**Trigger:** Yearly reminder for battery inspection.
**Action:** Inspect battery per maintenance schedule. Will not prevent operation.

---

## MAINTENANCE REMINDERS

### Service Schedule A
**Trigger:** Every 2 years or 200 hours, whichever first.
**Tasks:** Battery inspection + oil and oil filter change.

### Service Schedule B
**Trigger:** Every 4 years or 400 hours, whichever first.
**Tasks:** Full maintenance — oil, filters, spark plugs, valve adjustment (if applicable).

---

## How to Clear Alarms

### Guardian Series (Evolution Controller)
1. Confirm the problem is repaired
2. Press **RED OFF** button
3. Press **ENTER** to confirm alarm is repaired
4. Press **GREEN AUTO** button to resume standby

### Next Generation Series
1. Confirm the problem is repaired
2. Press and hold **OFF** button for 3 seconds
3. Press **AUTO** button to resume standby
4. Can also clear via Mobile Link app

### Clearing Maintenance Reminders (Guardian/Evolution)
1. Press **ENTER** once to confirm maintenance performed
2. Press **ENTER** a second time to confirm
3. Press **ESCAPE** to cancel if maintenance was NOT performed

### Dealer Menu Reset (Evolution Controller)
**Sequence:** OFF → {up, up, ESC, down, up, ESC, up, ENTER}
Navigate to "Dealer" → "Dealer Edit" → "Reset Maintenance" → YES → ENTER
**WARNING:** Extreme caution in dealer menu. Incorrect settings can damage connected loads.

---

## Escalation

If the error code is not listed here, or troubleshooting doesn't resolve it:
1. Call Shane
2. Call Generac IASD: **1-888-GENERAC (1-888-436-3722)**
3. Reference the unit serial number and exact error code displayed

---

*Source: Generac Evolution 1.0/2.0 Error Code Fault List, Generac Support Articles, Phoenix Electric field experience*
*Last updated: 2026-04-16*
