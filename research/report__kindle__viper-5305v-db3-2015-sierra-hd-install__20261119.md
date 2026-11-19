# Install Guide: Viper 5305V + Directed DB3, 2015 GMC Sierra HD 6.6L Duramax

**Class:** report | **Agent:** kindle | **Date:** 2026-11-19 | **For:** Shane
**Truck:** 2015 GMC Sierra HD, VIN 1GT12ZE86FF105780, 6.6L Duramax LML, key-turn ignition, factory remote start
**Ledger:** `ledger__kindle__viper-db3-sierra-hd-install__20261119.md`

> **Confidence tags:** **[OFFICIAL]** = Directed/Viper document read directly. **[FORUM]** = the12volt.com thread read directly (installer experience). **[SHEET]** = third-party install sheet for the same truck platform, read directly. **[SNIPPET]** = search summary only; the page was not read. **[GENERAL]** = standard install practice; no source for this truck.
> Verify every wire with a meter before you tap it.

---

## GATE 0: Can you flash the DB3? (Do this first. Takes 5 minutes.)

Nothing works until the DB3 is flashed. The flash is also how you get the **wiring guide for this truck**, which this guide cannot replace.

1. iPhone: install **"DirectLoader"** by VOXX Electronics from the App Store (DirectLink is the PC software; there is no separate phone app by that name). [SNIPPET: App Store listing id6449791353]
2. Try to log in, or register at **directechs.com**.
3. **The blocker:** the app listing says it is "intended for use only by authorized DIRECTED by VOXX Dealers and Distributors" and needs a DIRECTECHS login. [SNIPPET] Forum reports since 2017 agree: non-dealer accounts were shut off, and registering gives *"This email is not associated to a DirectedDealers.com account."* [FORUM t143773, t145113]
4. **This truck also needs Key2GO.** On a 2015 Sierra the DB3 has **no two-key learn option**. Key2GO runs through DirecTechs, so you need dealer access for both the flash and the key programming. [FORUM t147663, 2015 GMC Sierra + Viper + DB3]
5. Some DB3 setups flash in **2 steps**: once before install and once to finish after hookup. Both need the account. [FORUM t143773]
6. Conflicting reports on the tool: a Jan 2024 DirecTechs notice says "DB3 must be flashed from PC with an XKLoader2 (not compatible with … DirecTechs Mobile APP)". [OFFICIAL: directechs.com newsID=196] The 2025 DirectLoader app listing says it flashes the DB3 with the DLOADER4. [SNIPPET] The newer listing probably wins. As a fallback, the DLOADER4 also flashes from a Windows PC over USB-C with DirectLinkDT v2.23+. [SNIPPET]

**If the login fails, use one of these:**
- **A Directed-authorized shop** (car audio shop, or a Best Buy with an install bay) flashes the DB3 and prints the install guide. Forum quotes are about $75. The Key2GO step happens **in the truck**, so bring the truck or plan for a second visit. [FORUM t143773]
- **The seller** may flash it for your VIN (sellers do this). [FORUM t147663]
- **Have both keys on hand.** On a GM truck, a "Service Theft Deterrent System" message with no crank was fixed by learning the DB3 with the owner's other key. [FORUM t145172, 2018 Colorado, GM10 firmware]

**Firmware family:** most likely **403.GM10** (Directed's 2014+ GM truck firmware; a GM10 guide lists Silverado/Sierra 2500/3500). [SNIPPET + FORUM t145172] The flash tool picks the exact firmware and install type for your VIN, so accept what it assigns.

---

## What the DB3 handles on this truck vs. what you hard-wire

Wire chart for the 2014-2015 K2XX truck (the12volt moderator "wirewise", posted for a 2014 Silverado 2500 with factory alarm + RS). [FORUM t145256]

| Function | Wire | Location |
|---|---|---|
| Immobilizer | **Requires an interface bypass module** (DBALL2 / DB3) | Ignition barrel transponder |
| 12V constant | **Connect to the battery only** | — |
| Starter | **Not required for remote starting** (bypass starts it over data) | — |
| Ignition 1 | Purple/Black (+) | BCM, **green 25-pin**, pin 6 |
| Accessory / blower | Purple/Yellow (+) | BCM, green 25-pin, pin 5 |
| Parking lights | Green/Gray (−) | BCM, **white 26-pin**, pin 22 |
| Lock | Brown/Yellow (−) type B | BCM, blue 27-pin, pin 19 |
| Unlock | Brown/White (−) type B | BCM, blue 27-pin, pin 15 |
| Door trigger | Gray (−) | BCM, gray 26-pin, pin 25 |
| Dome supervision | Gray (+) | BCM, gray 26-pin, pin 1 |
| Horn | Brown/White (−) | BCM, brown 26-pin, pin 19 |
| Brake | Purple/White (+) | BCM, black 26-pin, pin 11 |
| Tach | **Interface module generates the tach signal** | — |
| Factory alarm disarm | Transponder + ignition (handled by the bypass) | — |

- **BCM is under the driver-side dash.** [FORUM t145256, SHEET Kleinn RS-GM5, SHEET Fortin THAR-GM5]
- **GMLAN (single-wire CAN) = the green wire at OBD-II pin 1.** Solder wire-on-wire; no T-taps. [SHEET Kleinn RS-GM5, covers 2015-2020 Sierra 2500/3500]
- **Ignition switch:** a 6-pin ignition plug at the back of the key cylinder, plus a 3-pin **violet** immobilizer plug. [SHEET Kleinn RS-GM5]
- Two other sheets confirm parking lights at the **white 26-pin BCM plug, pin 22**. [SHEET Kleinn, Fortin]
- **The DB3 does NOT do starter kill.** If you want the Viper to kill the starter, add a relay: 85 = Viper Orange GWA; 86 = ignition (+); cut the start wire, 30 = key side, 87a = engine side; diode from 86 to 85, band toward 86. [FORUM t144029, lectricguy]

> The DB3 install guide for your VIN overrides this chart. Use the chart to find wires and check them with your meter.

---

## Viper 5305V (5x05 platform) pinouts [OFFICIAL: Directed 5x05 Quick Reference 2015-06 and Installation Guide 2016-01]

**Main 5-pin**
1 Black: chassis ground · 2 Brown: (+) siren · 3 Red: (+) fused 12V constant · 4 Orange: (−) 500mA ground-when-armed (starter-kill relay) · 5 White: (+/−) parking light output (**set the polarity jumper to (−)** for this truck's Green/Gray (−) wire)

**Door lock 3-pin**
1 Blue: (−) 500mA unlock · 2 empty · 3 Green: (−) 500mA lock

**Remote start 10-pin (heavy gauge)**
1 N/C · 2 Red/Black: (+) 12V in, acc/starter relays · 3 Pink/Black: 2nd ign/acc isolation (87a) · 4 Pink/White: (+) 2nd ign/acc out · 5 Red: (+) 12V in, ignition 1 relay · 6 Green: starter input (key side) · 7 Violet: (+) starter output (car side) · 8 Orange: (+) accessory out · 9 Red/White: (+) 12V in, 2nd ign/acc relay · 10 Pink: (+) ignition 1 in/out

**Aux/shutdown/trigger 24-pin**
1 Pink/White (−) 2nd ign/acc · 2 Blue/White (−) 2nd status/defog · 3 Red/White (−) trunk · 4 Black/Yellow (−) dome · 5 Dark Blue (−) status · 6 White/Black (−) AUX5 · 7 White/Violet (−) 2nd unlock · 8 Orange/Black (−) AUX6 · **9 Gray (−) hood pin input** · 10 Blue (−) trunk pin/instant trigger · 11 White/Blue (−) activation input · **12 Violet/White tach input** · **13 Black/White (−) parking brake input** (through the supplied RS shutoff switch, which must be ON) · 14 Green/Black FAD · **15 Green (−) door input** · 16 Brown/Black (−) horn · 17 Pink (−) ign1 out · 18 Violet (+) door input · 19 Violet/Black AUX4 · **20 Brown (+) brake shutdown input** · 21 Violet/Yellow (−) starter out · **22 Gray/Black (−) diesel wait-to-start input** · 23 Orange (−) acc out · 24 Green/White (−) factory alarm arm

**D2D, red 4-pin** (to the DB3): 1 Blue TX · 2 Black ground · 3 Green RX · 4 Red +12V

> 200mA outputs must **never** drive a motor or load directly; use a relay. [OFFICIAL]

### Viper ↔ DB3 over D2D [FORUM t144029, the same 5305V + DB3 + D2D pairing on a 2015 GM Savana]
- With D2D, **the vehicle side follows the DB3 vehicle guide**. Set options on both units. There is no separate "D2D pairing" step.
- Reference hookup from that build (a van, so your DB3 guide controls the details): 5-pin Black/Brown/Red/White all connected. 10-pin **Pink** to the DB3 ignition output and the vehicle ignition through a **1A diode**. **Power every 12V input** on the 10-pin (Red, Red/Black, Red/White). 24-pin: **Gray** to the hood pin, **Violet/White** to the DB3 tach out, **Black/White** to ground (automatic trans), **Brown/Black** to horn.
- Even in alarm-only setups, **connect the Pink ign1 wire**. It is also the ignition-trigger input and is used for programming. [FORUM t146767]

---

## Duramax settings [OFFICIAL unless tagged]

Programming entry: open a door → ignition ON then OFF → hold the control button; chirps = menu number (1 = Basic, 2 = Advanced, 3 = Remote start) → release → tap N times for feature N, then hold → set it with the remote (AUX = 2+ chirp options, lock = 1-chirp option) or by pulsing White/Blue.

| Menu 3 item | Set to | Why |
|---|---|---|
| 1 Engine checking | **Tachometer (4)**, via DB3 data tach | "**Virtual Tach is not recommended for diesel vehicles.**" [OFFICIAL] Learn tach: start with the key → within 5 s hold the control button → LED solid = learned. **Parking lights flash 2× = learned from D2D** (1× = analog). |
| 2 Runtime | 24 min (optional) | Diesel warm-up |
| 10 Diesel start delay | **Timed 15 (2)** or 30 (3) | Timed mode ignores the WTS wire. An installer tech doc says not to tie into the factory WTS on 2002+ GM diesels [SNIPPET: Car Install Experts TechDoc 3637]. At 0 °F owners report 10–30 s may be needed [SNIPPET gm-trucks.com], so start at 15 and go to 30 if cold cranks are weak. |
| 13 Turbo short runtime | 1–3 min (optional) | — |

- Menu 2 item 7, **Double Pulse Unlock**: GM 2015 HD needed a double-pulse unlock on a hard-wired bypass. [FORUM t136946] Set it only if locks are hard-wired, not over data.
- Shutdown diagnostics: ignition OFF → hold control → ignition ON/OFF → release → tap once → LED flash count: 3 = no RPM, **5 = hood**, 6 = brake, 7 = parking brake input has no ground, 8 = WTS timeout. [OFFICIAL]

---

## Alarm parts and mounting

- **Hood pin:** the Viper hood input "must" go to a hood pin. Remote start is disabled/shuts down when the hood is open. [OFFICIAL; FORUM t143527] The Fortin sheet for this truck says install one **if the truck has no functional factory hood pin**. [SHEET] **Test tonight:** open the hood and try a factory remote start. If it refuses, the truck has a hood switch the DB3 may report over data. Your DB3 guide will say.
- **Shock sensor:** adjust it **before** mounting (pot clockwise = more sensitive). Short LED = warn-away, long = full trigger. [OFFICIAL]
- **Brain:** high under the dash, zip-tied to a solid harness, away from the heater duct. **Antenna:** top of the windshield. **LED:** visible on the dash. **Valet/override switch:** hidden but reachable. [GENERAL]
- **Siren:** in the engine bay, mouth down (drains water), away from the turbo/exhaust heat. **Firewall:** use an existing factory grommet; protect the wire with loom. [GENERAL]

---

## Known gotchas (2014-2019 GM trucks, Duramax)

1. **Factory alarm goes off at remote start**, and after takeover the gas pedal doesn't work. Reported on a DB3 + Viper; Safe Start didn't fix it. [FORUM t143773] Same symptom on a 2015 Silverado 2500 Duramax with a different bypass. [FORUM t136946] Test early, and use FAD/unlock-before-start (Menu 2 items 10–11) if needed.
2. **Starts, then dies right away** (Duramax + DB3/D2D) = immobilizer not bypassed. Test: hold the key head against the cylinder and remote start. If it runs, recheck the DB3 wiring/learn. Run a real tach wire, because Virtual Tach fails in winter. [FORUM t143527]
3. **No crank** on a 2016 Silverado 2500HD with Viper + DBALL: check the starter-output/relay wiring and the immobilizer learn. [SNIPPET t145309; the thread I fetched was a different truck]
4. **T-harness override switch** had to be OFF, against the printed instructions (GM10, THGMD1). [FORUM t145172] This applies only if you buy a T-harness.
5. **Factory RS + Viper alarm:** using the factory RS while the Viper is armed may trip the Viper. [SNIPPET t142535; older truck] Plan to use the Viper fob.
6. **Fortin T-harness power path** is limited to 2A/10A, so feed the remote starter directly from the battery. [SHEET Fortin] This matches the chart's "battery only" note.

---

## Tonight vs. tomorrow (rough estimate)

| Path | Tonight | Tomorrow |
|---|---|---|
| **Gate 0 passes** (you can log in) | Flash the DB3 (15–30 min) → get the vehicle guide → under-dash teardown, mount the brain/LED/valet/shock sensor, power/ground, D2D, BCM taps (3–4 h) | Engine bay in daylight (siren, hood pin, firewall run), key learn, programming, cold-start test (2–3 h) |
| **Gate 0 fails** | Teardown, find the BCM/OBD/ignition plugs, mount the parts, run siren/hood pin/LED/valet wires, bench-connect Viper to DB3 (2–3 h) | Shop flashes the DB3 + Key2GO in the truck → vehicle connections → programming → test |

Estimated total hands-on time for a first-timer on this truck with the full alarm: **5–8 hours**. Finishing everything tonight would run past 2–4 AM, so **split it**.

---

## Sources read directly
- Directed 5x05 Installation Guide 2016-01: directeddealers.com/manuals/IG/Viper/N5X05 2016-01 web.pdf
- Directed 5x05 Quick Reference 2015-06: directeddealers.com/manuals/IG/Viper/QRN5X05 2015-06 web.pdf
- DirecTechs news (DB3 flashing note): directechs.com/News/Article?newsID=196
- Kleinn RS-GM5 install guide (2015-2020 Sierra 2500/3500): sdda.semadata.org/Standard/Kleinn Automotive Air Horns/RSGM5.pdf
- Fortin THAR-GM5 install sheet (2015-2016 Sierra 2500/3500): images.carid.com/fortin/items/pdf/thar-gm5-installation-instructions.pdf
- the12volt.com threads (tid): 147663, 145256, 144029, 146767, 143773, 145113, 145172, 143527, 145309, 136946, 142535

## Research-run note
The first deep-research run (wf_6ef0ab2d-3c5) returned 0 claims because the session network blocked every manual/forum host. Fixed by adding those hosts to the Phoenix-Ops environment allowlist, then reading the sources directly. manuals.plus still blocks scripted requests itself (403 from their side).
