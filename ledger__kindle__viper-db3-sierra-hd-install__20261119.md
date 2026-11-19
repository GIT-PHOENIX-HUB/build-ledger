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

## Pending

- [x] Cited install guide saved to `research/`
- [x] Guide summary delivered to Shane
- [ ] **Gate 0:** Shane tests the DirectLoader app / DirecTechs login
- [ ] Confirm the DB3 firmware/install type before Shane flashes anything
- [ ] Shane's live install, step by step → log each stage here
- [ ] Final test and verify → close this ledger
