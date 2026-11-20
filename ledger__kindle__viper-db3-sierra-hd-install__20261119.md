# LEDGER — Viper 5305V + DB3 Install, 2015 GMC Sierra HD Duramax

**Class:** ledger (append-only)
**Agent:** kindle (cloud session)
**Requested by:** Shane
**Opened:** 2026-11-19 03:53 UTC
**Status:** IN PROGRESS — guide delivered; Gate 0 (DirecTechs login) pending Shane

---

## Vehicle

| Field | Value | Source |
|---|---|---|
| VIN | `1GT12ZE86FF105780` | Photo of the windshield VIN plate (full VIN per Shane, 2026-11-19) |
| Year | 2015 (VIN digit 10 = F) | VIN decode by hand. NHTSA vPIC is blocked from the cloud session. |
| Make / line | GMC Sierra HD (K2XX HD platform) | VIN: WMI 1GT, built in Flint (digit 11 = F) |
| Engine | 6.6L Duramax LML diesel (engine digit 8) | VIN decode by hand. Research will confirm. |
| Ignition | Key-turn | Shane |
| Factory remote start | YES (fob has an RS button) | Shane, 2026-11-19 |

## Hardware on hand (from Shane's photos)

- Directed **DB3** digital remote start/override module (universal, flashable data-bus interface)
- Harness kit **100-10182 (A)**, "DBALL HARNESS KIT"
- **DirectLoader 4** (DLOADER4) flashing tool, VOXX "Directloader Harnesses Kit" PN 100-10327 (card label 500-10806)
- **Viper 5305V** 2-way remote start and security system
- Directed "vehicle equipped with remote start" warning label

## Decisions (Shane, 2026-11-19)

1. **Scope:** EVERYTHING. Remote start, lock/unlock, and the full alarm (siren, shock sensor, door and hood triggers, hood pin, LED, valet switch).
2. **Flashing device:** iPhone.
3. **GitHub:** Kindle pushes to the ledger whenever needed. A standing authorization for this repo.
4. **VIN:** record it in full. Shane doesn't want it masked.
5. **Plan:** take the install as far as possible tonight, then decide whether to finish tonight or tomorrow.

## Entries

| Time (UTC) | Entry |
|---|---|
| 03:53 | Read the hardware from the photos. Decoded the VIN by hand (the NHTSA API is blocked by the session proxy). Asked Shane 3 scoping questions: factory RS, scope, flash device. |
| 03:53 | Launched the `deep-research` workflow (run `wf_6ef0ab2d-3c5`): 5 search angles → fetch about 15 sources → 3-vote adversarial claim check → cited synthesis. |
| 03:55 | Shane gave standing authorization to push the ledger. Opened this ledger file. Research is in the Search phase. |
| 04:00 | Research run finished with **0 claims**. Root cause: the session network blocked every manual/forum host (search worked; every fetch failed). |
| 04:01 | With Shane's approval, added 9 hosts to the Phoenix-Ops environment allowlist (the12volt, directeddealers, directechs, manuals.plus, manualslib, sdda.semadata.org, images.carid.com). Downloaded the Viper 5x05 full and quick-reference guides, the Kleinn RS-GM5 and Fortin THAR-GM5 sheets, the DirecTechs news post, and 11 the12volt threads. manuals.plus still returns 403 (their bot block). |
| 04:04 | Wrote the install guide: `research/report__kindle__viper-5305v-db3-2015-sierra-hd-install__20261119.md`. **Key finding: the DB3 flash and the Key2GO key learn both need a dealer DirecTechs login.** This is Gate 0 before any wiring. |
| 04:12 | Fixed 5 Codex review findings on PR #32: (1) removed the cut-the-start-wire starter-kill recipe, since this truck has no starter wire at the ignition switch; (2) the diode orientation now defers to the DB3 guide; (3) Black/White goes through the shutoff switch, not straight to ground; (4) added an outdoor-only/CO safety section; (5) corrected this ledger's 04:10 entry to 04:04 to match the commit time. |
| 04:23 | Fixed 7 more Codex findings (2nd pass). Downloaded GM's own 2015 Silverado/Sierra Electrical Body Builder's Manual (898 pp) and used it to verify: S38 ignition switch pinout (no starter wire; crank goes through the key-resistor signal), B80 park brake switch D-BU/VT circuit 1134, and per-door door-ajar circuits (driver door at window motor M74D pin 6 with AXG, or BCM X7 pin 25). Added: a fuse within 12 in of the battery; Black/White toggle to the park brake wire, not ground; a neutral-safety test procedure; seller-flash needs a two-stage Key2GO return; the FAD menu doesn't fix the factory-alarm trip; the safety override anecdote is scoped out. |
| 04:32 | Fixed 4 Codex findings (3rd pass). Rendered 5x05 manual p.15 to confirm the buttons: Lock = option 1 / steps up, Unlock = option 2 / steps down, AUX does not select options. Added the remote pairing steps. Shock sensor: mount first, then adjust (p.13). Neutral-safety test: foot off the brake for the in-gear step, a separate cycle for the hood shutdown, and a hood-open start-block check. |
| 04:40 | Fixed 3 Codex findings (4th pass). From GM's manual: OBD-II X84 pin 1 is LS GMLAN, pins 6/14 are HS GMLAN (+/−). The DB3 data hookup is now VIN-guide-only, with a note that GM10 Type 2 reportedly uses pins 1+6+14. Added a full per-door door-ajar endpoint table (LF/RF/LR/RR, with and without power-window options) and diode isolation into the Viper door input. Added a shutoff-toggle-OFF test to the safety checklist. |
| 04:52 | Fixed 5 Codex findings (5th pass). Fetched the Viper 5305V Owner's Guide (Control Center = antenna + LED + button in one windshield unit) and Directed's printed Safety Check (N24921: key to RUN, shift to Drive, foot off the brake). The in-gear test now follows it. Tach: the Viper Violet/White stays unconnected; tach is learned over D2D. Added the DB3 transmission-loop (cut for automatic before power-up) and RAP-off notes, attributed to the GM10 guide via review (unverified). |
| 06:03 | Shane asked for photos/videos. Sent 16 images (not committed: third-party copyright, public repo). (a) 8 annotated photos from the12volt pictorial 'The 2014+ Sierra/Silverado 1500 2500 3500 Remote Start Pictorial' (https://www.the12volt.com/installbay/forum_posts.asp?tid=137372): knee panel = 2x T15 then unclip; BCM green/blue/white plugs; green plug pin 6 IGN purple/black, pin 5 ACC purple/yellow, pin 2 immo data green/purple, pin 15 passlock white/purple; OBD2 green = SW-CAN, blue = CAN-H, white = CAN-L; white plug pin 22 lt green/gray (−) parking lights. These match the GM manual. (b) Rendered pages: Kleinn RS-GM5 p2-3, Viper 5x05 QR p1 + install guide p15, GM 2015 EBB S38/X84/K9 X7/B80. (c) Videos found by search, not watched: 2014-15 Silverado/Sierra plug-and-play RS install https://www.youtube.com/watch?v=8qYgw8yuLHk ; Start-X 2015-2023 key-start install https://www.youtube.com/watch?v=-DPirZZz6Lg ; REMOGO key-start T-harness https://www.youtube.com/watch?v=DJtl2iJfZ_g ; 2016 Silverado knee bolster panel https://www.youtube.com/watch?v=kRFXdEUYP-0 ; 2014-18 RS hood-latch fix https://www.youtube.com/watch?v=l3pP81rwvaM ; HD cab power sources https://www.youtube.com/watch?v=UFgBQ_7K1CI . Tip from the pictorial thread: a whole DBALL2 RSR install was done with no panels removed except the dash side cover for the antenna. |
| 16:49 | Shane asked whether he can do the key learn now with nothing else connected. Answer: no. The key learn/Key2GO needs the DB3 flashed and wired into the truck (power, ground, ignition, data, per the DB3 VIN guide). What needs no truck wiring: the DB3 flash (DLOADER4 powered from the OBD port, DB3 plugged into the DLOADER4 only), which still needs the dealer login. Proposed staging: flash → DB3/bypass wiring only → key learn → Viper later. |
| 17:57 (11-20) | Side question: 'Change Fuel Filter' message keeps returning after a fresh filter and repeated resets. Research: the LML has a fuel filter **restriction sensor** on the filter head as well as the life counter. Known failure: the sensor fails electrically or leaks, giving a message that can't be reset (DrivingLine, a vendor source). An intermittent open in the sensor ground circuit also triggers it (BITOG thread). The owner-manual reset only clears the life counter. Triage given: check FUEL FILTER LIFE % after reset; inspect the sensor connector/wiring/leak at the filter head; scan for codes; rule out cold-weather gelling. GM 2015 Duramax supplement URL returned 404, so not verified against GM. |
| 17:58 (11-20) | Follow-up: Shane runs a WIX filter and asked about the water drain valve. Answer: the drain is for draining water (the 'Water in Fuel' message), not for this message. Procedure: open the top vent, drain into a pan until clean fuel, close the drain hand-tight, close the vent. Left open = fuel keeps draining (DMAX). The restriction switch is normally closed and opens above about 14 inHg supply vacuum (BITOG). GM and a tuning vendor warn some aftermarket filters don't meet OEM water-hold/micron spec; there are no WIX-specific reports. Suggested ruling it out with an OEM ACDelco TP3018 after the wiring check. |
| 18:09 (11-20) | Back on the install. Shane asked whether the DB3 is needed, what 'DBALL' is, and about getting the 'key fobs flashed' before install. Clarified: (1) the DB3 is required; the truck's transponder immobilizer needs a bypass (moderator chart: 'requires interface bypass module DBALL2'; the DB3 is the current version). 'DBALL harness kit' = the DB3's wiring harness bag, not a separate module. (2) Three separate steps: DB3 firmware flash (bench, before install, DLOADER4 OBD power + D2D Y-cable, module unpowered; needs the dealer login) / DB3 key learn + Key2GO (after DB3 wiring; factory keys unchanged) / Viper remote pairing (after install). Factory fobs are never flashed or altered. Agreed: bench-flash first is the right order. Pointed Shane to the QR card in the DLOADER4 case for the official manual. |
| 18:16 (11-20) | Shane asked whether he bought the DLOADER4 to avoid the dealer. Answer: the tool only works behind a DirecTechs login that Directed gives to authorized dealers (App Store listing snippet; the12volt 2017-2023), so it doesn't remove the dealer requirement unless his login works (still untested, a 2-minute check). Next: test the login; if blocked, call a Directed shop (Autoplex: Denver/Loveland/Longmont; Tint World: Aurora, serves Parker; Best Buy, which sells Viper installs; or the directed.com dealer locator); consider returning the DLOADER4. Fallback, unverified: a consumer-flashable bypass such as Fortin EVO-ALL (what the 2015 Sierra thread poster switched to); Viper D2D compatibility not checked. |
| 18:17 (11-20) | Decision: skip the login test (Shane's call; the evidence already says dealer-only). The path is now a Directed shop for the DB3 flash + Key2GO. Tonight: prep only, no wiring. |
| 18:18 (11-20) | Gave Shane a short shop checklist: call ahead; bring the DB3 + DBALL harness bag, Viper 5305V box, DLOADER4, truck, both keys, VIN; ask for the DB3 flash (2015 Sierra 2500HD Duramax, auto, key start, factory RS, Viper 5305V D2D), transmission loop set for automatic, the install guide emailed, the firmware version, and Key2GO today or after wiring. |
| 18:21 (11-20) | Shane asked why he bought a DLOADER4 he can't use. Answer: the hardware is sold openly at retail, but Directed restricts the software login to dealers. Options: return it, resell it to an installer, or apply for a dealer account through a Directed distributor/sales rep (per the12volt t145113 error text; Phoenix Electric qualifying not confirmed). |

## Pending

- [x] Cited install guide saved to `research/`
- [x] Guide summary delivered to Shane
- [x] **Gate 0:** decided: no DirecTechs access; use a Directed shop for the flash + Key2GO
- [ ] Call Directed shops (Autoplex, Tint World Aurora, Best Buy, directed.com locator) and book the flash + Key2GO
- [ ] Confirm the DB3 firmware/install type before Shane flashes anything
- [ ] Shane's live install, step by step → log each stage here
- [ ] Final test and verify → close this ledger
