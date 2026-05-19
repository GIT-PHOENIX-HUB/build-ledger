# Generac Service Knowledge Base — Agent Reference

**Purpose:** This repo is the Generac generator knowledge base for Phoenix
Electric. Any Echo, agent, or AI surface that needs to answer questions about
Generac generators, troubleshoot error codes, look up maintenance procedures,
or reference specifications should use this repo.

**Owner:** Shane Warehime / Phoenix Electric (electrical company, NOT HVAC)

**Primary Model:** Generac 26kW Guardian Series Air-Cooled Standby Generator
- Model: 7291 / G0072910 (GEN2)
- Engine: G-Force 1000, 999cc dual-cylinder
- Controller: Evolution (multilingual LCD)
- Transfer Switch: 200A automatic service entrance

---

## How to Use This Repo

### Quick Lookups

| Need | Go To |
|------|-------|
| Error code meaning | `troubleshooting/error-codes/` — individual files by code number |
| Full error code list | `troubleshooting/error-codes/MASTER-ERROR-CODES.md` |
| Maintenance procedure | `service-procedures/maintenance/` |
| Oil change steps | `service-procedures/oil-and-filters/oil-change-procedure.md` |
| Battery replacement | `service-procedures/battery/` |
| Model specs | `manuals/26kW-7291/QUICK-REFERENCE.md` |
| Installation requirements | `service-procedures/installation/INSTALLATION-GUIDE.md` |
| Transfer switch | `service-procedures/installation/TRANSFER-SWITCH.md` |
| Controller programming | `technical/controllers/EVOLUTION-CONTROLLER.md` |
| Fuel system | `technical/fuel-system/` |
| Parts and part numbers | `reference/PARTS-LIST.md` |
| Training/COI info | `training/COI-TRAINING.md` |
| Warranty | `reference/warranty/` |

### Error Code Quick Reference

When a technician reports an error code, check these files:

- **1063** — `troubleshooting/error-codes/error-1063.md`
- **1100-1101** (Overcrank) — `troubleshooting/error-codes/error-1100-overcrank.md`
- **1200-1205** (Overspeed) — `troubleshooting/error-codes/error-1200-overspeed.md`
- **1300** (Low Oil Pressure) — `troubleshooting/error-codes/error-1300-low-oil.md`
- **1400-1401** (High Temp) — `troubleshooting/error-codes/error-1400-high-temp.md`
- **2100-2103** (Overload) — `troubleshooting/error-codes/error-2100-overload.md`
- **2780** (Charger Missing AC) — `troubleshooting/error-codes/error-2780-charger.md`
- **2800-2801** (Aux Shutdown) — `troubleshooting/error-codes/error-2800-aux-shutdown.md`
- **All codes** — `troubleshooting/error-codes/MASTER-ERROR-CODES.md`

### Key Specs at a Glance

- **Power:** 26,000W LP / 22,500W NG
- **Oil:** 1.9 qt, 5W-30 synthetic
- **Battery:** Group 26R 540 CCA min OR Group 35 AGM 650 CCA min, 12V
- **Fuel (LP 100%):** 132 ft³/hr (3.63 gal/hr)
- **Fuel (NG 100%):** 333 ft³/hr
- **Dimensions:** 48"L x 25"W x 29"H, 518 lbs
- **Breaker:** 110A main line
- **Warranty:** 5-year limited

---

## Repo Structure

```
docs/           Human-readable markdown articles organized by topic
  troubleshooting/  Error codes, diagnostics, battery issues
  service-procedures/  Maintenance, oil, battery, installation
  technical/      Specs, controllers, fuel system, wiring
  manuals/        Model-specific docs, quick reference
  training/       COI, certification, courses
  reference/      Parts, warranty, accessories, general

.firecrawl/     Raw scrape data (gitignored) — the source material
```

## Data Sources

Scraped from generac.com, support.generac.com, and service.generac.com on
2026-04-14. 874 URLs mapped, 75+ articles scraped, 10+ search compilations.

## Sales / Residential Quick Lookups

| Need | Go To |
|------|-------|
| Full product comparison | `sales/PRODUCT-LINEUP.md` |
| Product page for a specific model | `sales/products/<kW>/<model>.md` |
| Generator sizing guide | `sales/sizing/SIZING-GUIDE.md` |
| Transfer switch options | `sales/transfer-switches/TRANSFER-SWITCH-OPTIONS.md` |
| Installation costs & permits | `sales/installation/INSTALLATION-COSTS-AND-PERMITS.md` |
| Warranty & Mobile Link | `sales/financing/WARRANTY-AND-MOBILELINK.md` |
| Homeowner FAQ | `sales/faq/sales-homeowner-faq.md` |
| Sales directory overview | `sales/README.md` |

### Residential Model Quick Reference

| Size | Unit-Only Models | MSRP From | Engine |
|------|-----------------|-----------|--------|
| 10kW | 7171 | $3,649 | G-Force 400 |
| 14kW | 7223, 7258, 7323 | $4,569 | G-Force 800 |
| 15kW | 7163 (EcoGen) | $5,409 | G-Force 1000 |
| 18kW | 7226, 7259, 7324 | $5,379 | G-Force 800 |
| 22kW | 7042, 7260, 7325 | $6,119 | G-Force 1000 |
| 24kW | 7209, 72610, 7326 | $6,559 | G-Force 1000 |
| 26kW | 7290, 7327 | $6,989 | G-Force 1000 |
| 28kW | 7282, 7329 | $8,159 | G-Force 1000 |

---

## Rules

- This is reference material. Do not modify the scraped content.
- If you need to add notes or corrections, add them as separate files.
- Phoenix Electric is an **electrical** company. Never say HVAC.
- The current CRM is **Service Fusion** (not ServiceTitan).
