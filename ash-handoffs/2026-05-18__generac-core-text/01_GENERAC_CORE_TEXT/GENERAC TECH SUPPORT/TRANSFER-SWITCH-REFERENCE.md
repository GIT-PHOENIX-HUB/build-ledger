# Transfer Switch Reference — Service Field Guide

**Applies to:** Generac 100A and 200A single-phase automatic transfer switches used with air-cooled home standby generators
**Owner:** Phoenix Electric LLC

---

## Transfer Switch Models

| Rating | Model Number | Type |
|---|---|---|
| 100A SE | RXSW100A3SPD | Service Entrance |
| 100A Non-SE | RXSW100A3SPD | Non-Service Entrance |
| 200A SE | RXSW200A3SPD | Service Entrance |
| 200A Non-SE | RXSW200A3SPD | Non-Service Entrance |

**Standard:** Listed under UL1008

---

## What's in the Box

- Transfer switch enclosure
- Owner's manual
- Warranty statement
- Manual operating handle
- Storage bracket for manual operating handle
- Fault current label
- Clear decal for fault current label
- Surge protection device (if equipped)

---

## How the ATS Works

### Normal Operation (Utility Present)
- ATS is in UTILITY position
- Generator is in AUTO/standby
- ATS passes utility power to the house

### Utility Failure — Automatic Sequence
1. Utility voltage drops below **65% of nominal** → 5-second line interrupt delay starts
2. If utility still out when timer expires → engine cranks and starts
3. Engine warm-up timer runs (duration depends on Cold Smart Start setting)
4. When warm-up expires → ATS transfers load to generator
5. If utility returns during warm-up → ATS stays on utility, gen runs through cool-down cycle

### Utility Restored — Automatic Return
1. Utility voltage rises above **80% of nominal**
2. Controller initiates return transfer
3. ATS moves back to UTILITY position
4. Generator runs through cool-down cycle, then shuts off

### What the ATS Needs to Transfer
- Voltage available from the generator
- Voltage on the transfer circuit (194/23 wires)
- **If either is missing, the ATS will NOT transfer**

---

## Control Wires

| Wire | Purpose | Notes |
|---|---|---|
| **194** | 12 VDC to ATS | Always powered |
| **23** | Signal ground | Controlled by controller — grounded when gen starts after power loss |
| **T1** | 120V to battery charger | **ALWAYS HOT — even when gen is off** |
| **N1** | Neutral | — |

**If 194 or 23 wires are disconnected, damaged, or have a blown fuse → ATS will not transfer.**

---

## Transfer Handle Positions

The transfer handle inside the ATS indicates current position:

- **UP = UTILITY** — power from utility
- **DOWN = GENERATOR (STANDBY)** — power from generator

---

## Manual Transfer Procedure

Use when automatic transfer fails and you need to get power to the house during an outage.

1. Open ATS enclosure door
2. Locate manual operating handle (stored on bracket inside)
3. Insert handle into transfer mechanism
4. Move handle to desired position:
   - **Down** = Transfer to GENERATOR
   - **Up** = Transfer to UTILITY
5. **Only perform this if you're comfortable and have read the owner's manual**

**DANGER: ATS contains live wires. Use appropriate PPE. Stand on insulative surface.**

---

## ATS Fuses

There are **3 fuses** inside the ATS. Each protects a corresponding control wire connection between the generator and transfer switch.

| What happens if a fuse blows |
|---|
| Communication between gen and ATS is disrupted |
| ATS will not transfer automatically |
| Generator may run but house stays dark |

**WARNING:** Do not open the ATS enclosure without appropriate electrical training. Live wires inside.

---

## Surge Protection Device (if equipped)

| Spec | Value |
|---|---|
| Included | On some models — check data decal |
| Standard | UL 1449 |
| Indicators | LED status lights on device |

---

## Load Management Options

### Smart A/C Module (SACM)
- Controls A/C compressor load during generator operation
- Prevents overload from A/C startup surge
- Connected to ATS — see wiring diagram in ATS manual
- Has its own fuse — check if SACM appears non-functional

### Smart Management Module (SMM)
- Sold separately
- Additional load shedding capability
- Connects to ATS

---

## ATS Troubleshooting Quick Reference

| Problem | Check This |
|---|---|
| Gen runs but no power to house | MLCB on? Transfer handle position? 194/23 wires connected? |
| ATS won't transfer to generator | MLCB must be ON — ATS needs gen voltage to move. Check 194/23. |
| ATS won't return to utility | Confirm utility is actually back. Check 194/23 wires. Manually transfer. |
| Gen starts with utility present | Is it exercising? Check for brown-out. Check error codes. |
| Blown fuse in ATS | Check all 3 fuses. Replace. Find root cause of short. |
| SACM not working | Check SACM fuse. Verify wiring per ATS manual. |

**See TROUBLESHOOTING-WORKFLOWS.md Workflow 2 for full step-by-step ATS diagnostics.**

---

## Service Entrance vs Non-Service Entrance

| Type | Description |
|---|---|
| **Service Entrance (SE)** | ATS includes a utility service circuit breaker. ATS is the main disconnect for the home. Installed between utility meter and main panel. |
| **Non-Service Entrance (Non-SE)** | ATS does NOT include a main breaker. Installed downstream of existing main disconnect. |

**Key for service techs:** If the ATS is SE-rated, turning off the breaker inside the ATS cuts ALL power to the house. Know which type you're working on before opening anything.

---

## Installation Wiring Reference

### Air-Cooled Generator to SE-Rated ATS (typical residential)
- Generator output → ATS generator input terminals
- ATS utility input ← utility meter
- ATS load output → home main panel
- Control wires: 194, 23, T1, N1 between gen and ATS

### Key Torque Requirement
- **All conductors must be tightened to factory specified torque values**
- Failure to torque properly can damage the switch base

---

## Safety Warnings — Non-Negotiable

- **ALWAYS treat ATS as energized.** Even with gen off, utility side is live.
- **Turn utility supply OFF before working on utility connections**
- **Do not disable or modify the connection box door safety switch**
- **Do not wear jewelry when working on ATS**
- **Stand on insulative mats over dry wood platform**
- **Use a meter meeting UL3111, overvoltage class CAT III minimum**
- **Only trained, licensed electricians should perform wiring and connections**

---

## Startup Delay Adjustment

- Startup delay is configured at the **generator control panel**, NOT the ATS
- Default: 5 seconds
- Can be adjusted by IASD — common in areas with frequent brown-outs
- Adjusting at the ATS is not possible — it's always a controller setting

---

## Escalation

If ATS issue is not resolved by the quick reference above:
1. Call Shane
2. Call Generac IASD: **1-888-GENERAC (1-888-436-3722)**
3. Have ready: ATS model number, generator serial number, description of transfer behavior

---

*Source: Generac ATS Owner's Manual (100-200A), Generac Support Articles, Phoenix Electric field procedures*
*Last updated: 2026-04-16*
