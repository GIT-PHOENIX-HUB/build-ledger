# LEDGER — Viper 5305V + DB3 Install, 2015 GMC Sierra HD Duramax

**Class:** ledger (append-only)
**Agent:** kindle (cloud session)
**Requested by:** Shane
**Opened:** 2026-11-19 03:53 UTC
**Status:** IN PROGRESS — deep research running

> Note: this repo is PUBLIC. The VIN is recorded with the serial masked on purpose.

---

## Vehicle

| Field | Value | Source |
|---|---|---|
| VIN pattern | `1GT12ZE86FF******` (serial masked) | Photo of the windshield VIN plate |
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

## Entries

| Time (UTC) | Entry |
|---|---|
| 03:53 | Read the hardware from the photos. Decoded the VIN by hand (the NHTSA API is blocked by the session proxy). Asked Shane 3 scoping questions: factory RS, scope, flash device. |
| 03:53 | Launched the `deep-research` workflow (run `wf_6ef0ab2d-3c5`): 5 search angles → fetch about 15 sources → 3-vote adversarial claim check → cited synthesis. |
| 03:55 | Shane gave standing authorization to push the ledger. Opened this ledger file. Research is in the Search phase. |

## Pending

- [ ] Deep research finishes → cited install guide saved to `research/`
- [ ] Guide summary delivered to Shane
- [ ] Confirm the DB3 firmware/install type before Shane flashes anything
- [ ] Shane's live install, step by step → log each stage here
- [ ] Final test and verify → close this ledger
