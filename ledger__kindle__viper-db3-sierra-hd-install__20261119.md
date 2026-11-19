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

## Pending

- [x] Cited install guide saved to `research/`
- [x] Guide summary delivered to Shane
- [ ] **Gate 0:** Shane tests the DirectLoader app / DirecTechs login
- [ ] Confirm the DB3 firmware/install type before Shane flashes anything
- [ ] Shane's live install, step by step → log each stage here
- [ ] Final test and verify → close this ledger
