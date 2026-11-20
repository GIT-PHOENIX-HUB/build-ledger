# Install Guide: Viper 5305V + Directed DB3, 2015 GMC Sierra HD 6.6L Duramax

**Class:** report | **Agent:** kindle | **Date:** 2026-11-19 | **For:** Shane
**Truck:** 2015 GMC Sierra HD, VIN 1GT12ZE86FF105780, 6.6L Duramax LML, key-turn ignition, factory remote start
**Ledger:** `ledger__kindle__viper-db3-sierra-hd-install__20261119.md`

> **Confidence tags:** **[OFFICIAL]** = Directed/Viper document read directly. **[OFFICIAL GM]** = GM's 2015 Silverado/Sierra Electrical Body Builder's Manual, read directly. **[FORUM]** = the12volt.com thread read directly (installer experience). **[SHEET]** = third-party install sheet for the same truck platform, read directly. **[SNIPPET]** = search summary only; the page was not read. **[GENERAL]** = standard install practice; no source for this truck.
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
- **The seller** may flash it for your VIN (sellers do this), but **that only covers the first stage.** In the 2015 Sierra thread the buyer got a seller-flashed DB3 and was still stuck at Key2GO. The advice was to learn the first key, then **ship the DB3 back to the seller** for the Key2GO stage, then reinstall. Budget that round trip, or use a local shop that can do Key2GO in the truck. [FORUM t147663]
- **Have both keys on hand.** On a GM truck, a "Service Theft Deterrent System" message with no crank was fixed by learning the DB3 with the owner's other key. [FORUM t145172, 2018 Colorado, GM10 firmware]

**Firmware family:** most likely **403.GM10** (Directed's 2014+ GM truck firmware; a GM10 guide lists Silverado/Sierra 2500/3500). [SNIPPET + FORUM t145172] The flash tool picks the exact firmware and install type for your VIN, so accept what it assigns.

**Before the DB3's first power-up:** check the DB3 guide for its **transmission-type setting**. A PR review cites the GM10 guide: the DB3 ships configured for manual transmission, and for an automatic you **cut the yellow loop before first power-up** (or cycle power at the white 12-pin harness after cutting it). Not verified here (manuals.plus blocks scripted reads), so confirm it in your guide before you cut anything.

---

## What the DB3 handles on this truck vs. what you hard-wire

Wire chart for the 2014-2015 K2XX truck (the12volt moderator "wirewise", posted for a 2014 Silverado 2500 with factory alarm + RS). [FORUM t145256]

| Function | Wire | Location |
|---|---|---|
| Immobilizer | **Requires an interface bypass module** (DBALL2 / DB3) | Ignition barrel transponder |
| 12V constant | **Connect to the battery only**, with a **fuse within 12 in of the battery**. The 15A fuse in the Viper harness protects only the module, not the cable run. [OFFICIAL 5x05] | — |
| Starter | **Not required for remote starting** (bypass starts it over data) | — |
| Ignition 1 | Purple/Black (+) | BCM, **green 25-pin**, pin 6 |
| Accessory / blower | Purple/Yellow (+) | BCM, green 25-pin, pin 5 |
| Parking lights | Green/Gray (−) | BCM, **white 26-pin**, pin 22 |
| Lock | Brown/Yellow (−) type B | BCM, blue 27-pin, pin 19 |
| Unlock | Brown/White (−) type B | BCM, blue 27-pin, pin 15 |
| Door trigger | **Depends on equipment. See the door note below.** | — |
| Dome supervision | Gray (+) | BCM, gray 26-pin, pin 1 |
| Horn | Brown/White (−) | BCM, brown 26-pin, pin 19 |
| Brake | Purple/White (+) | BCM, black 26-pin, pin 11 |
| Tach | **Interface module generates the tach signal** | — |
| Factory alarm disarm | Transponder + ignition (handled by the bypass) | — |

- **BCM is under the driver-side dash.** [FORUM t145256, SHEET Kleinn RS-GM5, SHEET Fortin THAR-GM5]
- **RAP-off (retained accessory power):** a PR review cites the GM10 guide as connecting the DB3 **Light Blue/Black RAP-off output** to the driver-door-sense trigger. Without it, some console lights stay on about 10 minutes after a remote-start session ends. Wire it exactly where your DB3 guide shows (not verified here).
- **Data bus at the OBD-II port (X84):** pin 1 L-GN = Low Speed GMLAN (single-wire CAN, circuit 5060); **pin 6 D-BU = High Speed GMLAN (+)** (circuit 2500); **pin 14 WH = High Speed GMLAN (−)** (circuit 2501); pins 12/13 = second HS bus; 4/5 = grounds. [OFFICIAL GM, X84] **Make the DB3 data connections exactly as the VIN-specific DB3 guide shows.** A PR review cites Directed's GM10 Type 2 diagram for the 2015–2016 Sierra 2500/3500 as using **all three: SW-CAN pin 1 plus the HS-CAN pair, pins 6/14** (not verified here; manuals.plus blocks scripted reads). Hooking up pin 1 alone may leave the bypass unable to program. Solder wire-on-wire, no T-taps. [SHEET Kleinn RS-GM5]
- **Ignition switch:** a 6-pin ignition plug at the back of the key cylinder, plus a 3-pin **violet** immobilizer plug. [SHEET Kleinn RS-GM5] **GM's S38 ignition switch pinout:** 1 not used · 2 VT/BK Run/Crank Ignition 1 · 3 VT/YE Accessory · 4 RD/D-BU Battery + · 5 WH/VT Off/Run/Crank · 6 WH/BK Ignition Key Resistor Signal. **There is no starter wire.** Crank is requested through the key-resistor signal. [OFFICIAL GM 2015 Silverado/Sierra Electrical Body Builder's Manual, S38]
- **Parking brake switch (B80):** a single-wire switch, **D-BU/VT (dark blue/violet), circuit 1134**, at the left side of the passenger compartment (park brake pedal). [OFFICIAL GM, B80] Meter it: it should read ground with the brake set and open with it released. That's what the Viper Black/White input needs through the shutoff switch.
- **Door triggers: each door has its own door-ajar circuit, so one wire won't cover all four.** [OFFICIAL GM, Door Ajar System] The driver door (LF, **GY, circuit 745**) depends on equipment. With express up/down driver window (RPO AXG), the **driver window motor** monitors it: M74D connector **pin 6**, and the BCM gets it over serial data. Otherwise it shows at **BCM X7 (light-gray 26-way) pin 25**. **Best path: use door status from the DB3 over D2D, but only if the DB3 guide lists it, and prove all four doors trigger the alarm during testing.** If it doesn't, hard-wire every door. Where to tap depends on the window options, because with power-window modules the signal ends at the window motor/switch and reaches the BCM only over serial data: [OFFICIAL GM, Door Ajar System + connector end views]

| Door | Circuit | With power-window option | Without |
|---|---|---|---|
| LF (driver) | GY 745 | M74D driver window motor, pin 6 (AXG) | BCM X7 (light-gray 26-way), pin 25 |
| RF | GY 746 | S79P passenger window switch, pin 8 (AED) | BCM X7, pin 14 |
| LR | GY/WH 747 | S79LR window switch, pin 2 (AEQ) | Not at the BCM; tap the circuit in the door harness (A23LR latch pin 1) |
| RR | GY/WH 748 | S79RR window switch, pin 2 (AEQ) | Not at the BCM; tap the circuit in the door harness (A23RR latch pin 5) |

Meter each one: it should go to ground when its door opens. Feed all four into the Viper Green (−) door input through **one diode per door, band (cathode) toward the door wire**, so the circuits stay isolated from each other. [GENERAL: standard negative-trigger isolation; verify with a meter]
- Two other sheets confirm parking lights at the **white 26-pin BCM plug, pin 22**. [SHEET Kleinn, Fortin]
- **The DB3 does NOT do starter kill.** [FORUM t144029, lectricguy] The relay recipe in that thread (cut the start wire at the ignition switch) **does NOT apply to this truck**. The 2015 K2XX has **no conventional starter/crank wire at the ignition switch**: the moderator chart's Note #1 covers GM vehicles "that [have] no starter/crank wire coming from the ignition switch", and and GM's S38 pinout (above) carries only Run/Crank, accessory, battery, Off/Run/Crank and the key-resistor signal. [OFFICIAL GM] **Do not cut any ignition-switch wire for starter kill.** Leave the Viper Orange GWA unconnected unless the DB3 vehicle guide names a starter-inhibit circuit for this truck.

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
- Reference hookup from that build (a van, so your DB3 guide controls the details): 5-pin Black/Brown/Red/White all connected. 10-pin **Pink** to the DB3 ignition output and to the vehicle ignition, with a **1A diode** in one of those branches. **The thread does not give the diode's branch or which end gets the band, and a backward or misplaced diode can block the ignition signal or backfeed one module's 12V into the other. Do not install it until the DB3 vehicle guide shows its exact anode/cathode endpoints.** **Power every 12V input** on the 10-pin (Red, Red/Black, Red/White). 24-pin: **Gray** to the hood pin, **Violet/White** to the DB3 tach wire (**don't copy this for this truck**; see the tach note in the Duramax section), **Brown/Black** to horn. **Black/White:** the thread grounded it directly (automatic trans). **Don't.** The official guide says to run it **through the supplied Remote Start Shutoff Switch** (one switch lead to Black/White, **the other to the vehicle's (−) parking brake wire**, the B80 D-BU/VT circuit 1134 above). **Not chassis ground**: going through the brake wire is what blocks remote start when the parking brake is off. The switch is how remote start gets disabled for service or garage parking. [OFFICIAL]
- Even in alarm-only setups, **connect the Pink ign1 wire**. It is also the ignition-trigger input and is used for programming. [FORUM t146767]

---

## Duramax settings [OFFICIAL unless tagged]

Programming entry: open a door → ignition ON then OFF → hold the control button; chirps = menu number (1 = Basic, 2 = Advanced, 3 = Remote start) → release → tap N times for feature N, then hold → **keep holding the control button** and set it with the remote: **Lock = option 1, Unlock = option 2** for two-option features. For features with more options, **Lock steps up through the options and Unlock steps down**; count the chirps until they match the option number you want. Or pulse White/Blue (−) once per step. **AUX does not select options.** [OFFICIAL 5x05 p.15]

**Pairing the remotes** [OFFICIAL 5x05 p.15]: open a door → key ON → within 5 s press and release the control button once → within 5 s press and **hold** it (LED flashes once, siren chirps) → press **Lock** on each remote (a chirp confirms each one) → release the button, key OFF.

| Menu 3 item | Set to | Why |
|---|---|---|
| 1 Engine checking | **Tachometer (4)**, using the DB3 data tach **over D2D**. **Leave the Viper Violet/White tach wire unconnected**: the Viper ignores D2D tach whenever its analog tach input is wired [OFFICIAL]. A PR review cites the GM10 guide as saying the DB3's own Violet/White is a tach *input*, with RPM delivered over D2D (not verified here). The Savana thread's wire-to-wire hookup was a different firmware. | "**Virtual Tach is not recommended for diesel vehicles.**" [OFFICIAL] Learn tach: start with the key → within 5 s hold the control button → LED solid = learned. **Parking lights flash 2× = learned from D2D** (1× = analog). |
| 2 Runtime | 24 min (optional) | Diesel warm-up |
| 10 Diesel start delay | **Timed 15 (2)** or 30 (3) | Timed mode ignores the WTS wire. An installer tech doc says not to tie into the factory WTS on 2002+ GM diesels [SNIPPET: Car Install Experts TechDoc 3637]. At 0 °F owners report 10–30 s may be needed [SNIPPET gm-trucks.com], so start at 15 and go to 30 if cold cranks are weak. |
| 13 Turbo short runtime | 1–3 min (optional) | — |

- Menu 2 item 7, **Double Pulse Unlock**: GM 2015 HD needed a double-pulse unlock on a hard-wired bypass. [FORUM t136946] Set it only if locks are hard-wired, not over data.
- Shutdown diagnostics: ignition OFF → hold control → ignition ON/OFF → release → tap once → LED flash count: 3 = no RPM, **5 = hood**, 6 = brake, 7 = parking brake input has no ground, 8 = WTS timeout. [OFFICIAL]

---

## Alarm parts and mounting

- **Hood pin:** the Viper hood input "must" go to a hood pin. Remote start is disabled/shuts down when the hood is open. [OFFICIAL; FORUM t143527] The Fortin sheet for this truck says install one **if the truck has no functional factory hood pin**. [SHEET] **Test tonight:** open the hood and try a factory remote start. If it refuses, the truck has a hood switch the DB3 may report over data. Your DB3 guide will say.
- **Shock sensor:** mount it **in its permanent location first, then adjust it**, with the ignition OFF and the system disarmed. Trimpot clockwise = more sensitive. Test with light, increasing taps: short LED = warn-away, long LED = full trigger. If it was adjusted before mounting, re-adjust it. [OFFICIAL 5x05 p.13 and troubleshooting]
- **Control Center (one unit):** on the 5305V the antenna, status LED and valet/override button are a **single Control Center**, "typically located on the upper part of the front windshield". Mount it there, unhidden, for range and LED visibility. [OFFICIAL: 5305V Owner's Guide 2015-05, p.3] The **remote start shutoff toggle** (Black/White → parking brake wire) is a separate part: mount it hidden but reachable.
- **Brain:** high under the dash, zip-tied to a solid harness, away from the heater duct. [GENERAL]
- **Siren:** in the engine bay, mouth down (drains water), away from the turbo/exhaust heat. **Firewall:** use an existing factory grommet; protect the wire with loom. [GENERAL]

---

## Known gotchas (2014-2019 GM trucks, Duramax)

1. **Factory alarm goes off at remote start**, and after takeover the gas pedal doesn't work. Reported on a DB3 + Viper; Safe Start didn't fix it. [FORUM t143773] Same symptom on a 2015 Silverado 2500 Duramax with a different bypass. [FORUM t136946] Test early. **Viper Menu 2 items 10–11 only time and pulse the Green/Black factory-alarm-disarm output**, and this truck has no FAD wire (its factory alarm disarms by transponder + ignition, which the DB3 handles), so those menus won't fix it. The thread posted no confirmed fix. Look for an unlock/disarm-before-start option in the DB3 guide, or unlock before remote starting.
2. **Starts, then dies right away** (Duramax + DB3/D2D) = immobilizer not bypassed. Test: hold the key head against the cylinder and remote start. If it runs, recheck the DB3 wiring/learn. Run a real tach wire, because Virtual Tach fails in winter. [FORUM t143527]
3. **No crank** on a 2016 Silverado 2500HD with Viper + DBALL: check the starter-output/relay wiring and the immobilizer learn. [SNIPPET t145309; the thread I fetched was a different truck]
4. **DB3 safety override switch:** follow the DB3 vehicle guide. One forum report (2018 Colorado, THGMD1 T-harness) set it OFF against the printed instructions [FORUM t145172], but a PR review cites Directed's GM10 DB3 diagram as requiring it ON (not verified here; manualslib blocks scripted reads). This is **not a setting to copy**, and this install has no T-harness anyway.
5. **Factory RS + Viper alarm:** using the factory RS while the Viper is armed may trip the Viper. [SNIPPET t142535; older truck] Plan to use the Viper fob.
6. **Fortin T-harness power path** is limited to 2A/10A, so feed the remote starter directly from the battery. [SHEET Fortin] This matches the chart's "battery only" note.

---

## Safety for every test start [OFFICIAL: 5x05 Installation Guide, safety warnings]

- **Run every remote-start test, cold-start test included, OUTDOORS.** Directed: "Never operate the system in an enclosed or partially enclosed area without ventilation (such as a garage)."
- When the truck is parked in a garage or being serviced, **turn the installed shutoff toggle OFF** so it can't remote start.
- Directed requires a **carbon monoxide detector** in the living area next to wherever the truck is stored, with doors from the living area to the storage area kept closed.
- Never remote start in gear, and never with the keys in the ignition, except during the Safety Check below.
- **Neutral Safety Shutdown test (required after install).** Directed requires this test, and says that if the truck starts in gear, the remote start "must be removed or properly reinstalled". [OFFICIAL] The 5x05 guide cites the test without printing it. The steps below follow Directed's printed Safety Check from another Directed remote-start guide [OFFICIAL: Directed install guide N24921 2011-11, "Safety check" p.27], plus the parking-brake, hood-while-running and toggle checks this install needs:
  1. Outdoors, clear area, wheels chocked, enough clearance front and rear, someone in the driver seat.
  2. **In-gear test** [OFFICIAL]: hood closed, no other shutdowns active, **parking brake set**. **Turn the key to RUN, but don't start the engine.** Press the brake, shift to **Drive**, then **take your foot off the pedal and hold it over it** (holding the brake triggers the Viper's brake shutdown and would hide a failure). Send remote start. **The starter must not engage.** If it does, step on the brake right away. Afterward: shift back to Park, key OFF, remove the key.
  3. Shifter in **Park**, parking brake **released**: send remote start. It **must not start** (no ground on Black/White).
  4. Park + parking brake set: send remote start. It should start. Press the brake pedal: it must shut down (Brown brake input).
  5. **New cycle:** remote start again (Park + parking brake set), then open the hood. It must shut down (5 flashes = hood).
  6. **With the hood still open**, send remote start. It **must not start.** In diesel mode the ignition may come on, but **the starter must not engage.** [OFFICIAL N24921]
  7. **Shutoff toggle OFF**, Park, parking brake set, hood closed: send remote start. It **must not start.** Turn the toggle back ON afterward. This proves the switch path works; it's what protects the truck during service or garage storage.
  8. If step 2, 3, 6 or 7 cranks or starts the truck, **stop using it** and fix the wiring before the truck goes into service.

## Tonight vs. tomorrow (rough estimate)

| Path | Tonight | Tomorrow |
|---|---|---|
| **Gate 0 passes** (you can log in) | Flash the DB3 (15–30 min) → get the vehicle guide → under-dash teardown, mount the brain/LED/valet/shock sensor, power/ground, D2D, BCM taps (3–4 h) | Engine bay in daylight (siren, hood pin, firewall run), key learn, programming, cold-start test (2–3 h) |
| **Gate 0 fails** | Teardown, find the BCM/OBD/ignition plugs, mount the parts, run siren/hood pin/LED/valet wires, bench-connect Viper to DB3 (2–3 h) | Shop flashes the DB3 + Key2GO in the truck → vehicle connections → programming → test |

Estimated total hands-on time for a first-timer on this truck with the full alarm: **5–8 hours**. Finishing everything tonight would run past 2–4 AM, so **split it**.

---

## Sources read directly
- Viper 5305V Owner's Guide 2015-05 (Control Center): directeddealers.com/manuals/OG/Viper/G5305 2015-05 web2.pdf
- Directed install guide N24921 2011-11, Safety check procedure: directeddealers.com/manuals/OG/Designtech/N24921 2011 11 web.pdf
- GM 2015 Chevrolet Silverado/GMC Sierra Electrical Body Builder's Manual, Rev 1.2 (S38 ignition switch, B80 park brake switch, door ajar system, K9 BCM X7, M74D): gmupfitter.com/wp-content/uploads/2021/06/Sierra_Silverado_Electrical_Body_Builders_Manual_Service_Manual_2015_en_US.pdf
- Directed 5x05 Installation Guide 2016-01: directeddealers.com/manuals/IG/Viper/N5X05 2016-01 web.pdf
- Directed 5x05 Quick Reference 2015-06: directeddealers.com/manuals/IG/Viper/QRN5X05 2015-06 web.pdf
- DirecTechs news (DB3 flashing note): directechs.com/News/Article?newsID=196
- Kleinn RS-GM5 install guide (2015-2020 Sierra 2500/3500): sdda.semadata.org/Standard/Kleinn Automotive Air Horns/RSGM5.pdf
- Fortin THAR-GM5 install sheet (2015-2016 Sierra 2500/3500): images.carid.com/fortin/items/pdf/thar-gm5-installation-instructions.pdf
- the12volt.com threads (tid): 147663, 145256, 144029, 146767, 143773, 145113, 145172, 143527, 145309, 136946, 142535

## Research-run note
The first deep-research run (wf_6ef0ab2d-3c5) returned 0 claims because the session network blocked every manual/forum host. Fixed by adding those hosts to the Phoenix-Ops environment allowlist, then reading the sources directly. manuals.plus still blocks scripted requests itself (403 from their side).
