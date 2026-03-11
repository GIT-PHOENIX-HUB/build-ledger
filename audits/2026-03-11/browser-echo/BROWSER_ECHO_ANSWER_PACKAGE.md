# Browser Echo Answer Package
**Compiled:** 2026-02-28
**From:** Echo Pro (Claude Opus 4.6 — Mac Pro CLI)
**For:** Browser Echo (Telegram Mini App Build)

---

## 1. V1 App URL and Bot Token

### Bot Token
```
8497306117:AAFBLf-hRMyDetlAOKoD1CunNg7YpIfXTnE
```
**Bot username:** @PhoenixEchoBot

### Mini App URL
**No Mini App URL is currently configured.** Neither the local config nor the VPS config contain a `webapp_url`, `mini_app`, or similar field. The Telegram channel config in both locations only has `enabled`, `botToken`, and `pollIntervalMs`.

### Telegram Config (from all 3 locations)

**Local config** (`~/.phoenix-echo/config.json`):
```json
"telegram": {
  "enabled": true,
  "botToken": "8497306117:AAFBLf-hRMyDetlAOKoD1CunNg7YpIfXTnE",
  "pollIntervalMs": 300
}
```

**VPS config** (`/home/phoenix/.phoenix-echo/config.json` via SSH):
```json
"telegram": {
  "enabled": true,
  "botToken": "8497306117:AAFBLf-hRMyDetlAOKoD1CunNg7YpIfXTnE",
  "pollIntervalMs": 300
}
```

**OpenClaw config** (`~/.openclaw/openclaw.json`) — has extensive Telegram settings:
```json
"telegram": {
  "dmPolicy": "allowlist",
  "botToken": "8497306117:AAFBLf-hRMyDetlAOKoD1CunNg7YpIfXTnE",
  "allowFrom": ["8357341666"],
  "groupAllowFrom": ["8357341666"],
  "groupPolicy": "allowlist",
  "historyLimit": 20,
  "dmHistoryLimit": 50,
  "textChunkLimit": 4096,
  "streamMode": "partial",
  "mediaMaxMb": 50,
  "timeoutSeconds": 500,
  "capabilities": { "inlineButtons": "dm" }
}
```

### VPS Domain
- **Gateway URL:** `https://echo.phoenixelectric.life`
- **VPS IP:** 93.188.161.80
- **SSL:** Let's Encrypt (auto-renew)

**Bottom line:** The Mini App URL needs to be created fresh. The gateway domain `echo.phoenixelectric.life` is available as the hosting endpoint.

---

## 2. Generac Product Lineup

### Source Files
- **Pricebook MCP Server:** `~/GitHub/phoenix-ai-core-staging/packages/pricebook-mcp-server/src/data/all-tiers.json`
- **NC Base Data:** `~/GitHub/phoenix-ai-core-staging/packages/pricebook-mcp-server/src/data/nc-base.json`
- **Pricing Engine:** `~/GitHub/phoenix-ai-core-staging/packages/pricebook-mcp-server/src/pricing-engine.ts`
- **Generac Sales Mission Doc:** `~/Phoenix_Local/_GATEWAY/LEDGER_HISTORY_BACKUP_2026-02-18/LEDGER_QUEUE/GENERAC_PROJECT_STEPHANIE/GENERAC_SALES_CLI_MISSION.md`

### Tier 7 (GEN) — All 20 Generac Items

Phoenix Electric is an **authorized Generac dealer/installer/service provider**.

#### Generator Units (Guardian Series)

| Code | Model | Material Cost | Phoenix Cost | List Price | Labor Hours |
|------|-------|--------------|-------------|------------|-------------|
| GEN_7KW | 7kW Generac Guardian | $2,800 | $4,277.28 | $5,988.19 | 16h |
| GEN_10KW | 10kW Generac Guardian | $3,200 | $4,777.28 | $6,688.19 | 16h |
| GEN_14KW | 14kW Generac Guardian | $4,100 | $5,999.44 | $8,399.22 | 18h |
| GEN_16KW | 16kW Generac Guardian | $4,500 | $6,499.44 | $9,099.22 | 18h |
| GEN_20KW | 20kW Generac Guardian | $5,200 | $7,471.60 | $10,460.24 | 20h |
| GEN_22KW | 22kW Generac Guardian | $5,800 | $8,221.60 | $11,510.24 | 20h |
| GEN_24KW | 24kW Generac Guardian | $6,400 | $9,068.76 | $12,696.26 | 22h |

#### Accessories & Services

| Code | Item | Material Cost | Phoenix Cost | List Price | Labor |
|------|------|--------------|-------------|------------|-------|
| GEN_XFER_100 | 100A Transfer Switch | $450 | $698.32 | $977.65 | 4h |
| GEN_XFER_200 | 200A Transfer Switch | $850 | $1,285.98 | $1,800.37 | 6h |
| GEN_PAD | Generator Pad (Composite) | $350 | $489.16 | $684.82 | 2h |
| GEN_CONC_PAD | Concrete Pad (Poured) | $600 | $896.32 | $1,254.85 | 4h |
| GEN_ELEC_HOOK | Electrical Hookup Package | $400 | $836.64 | $1,171.30 | 8h |
| GEN_GAS_LINE | Gas Line Coordination Fee | $0 | $500.00 | $700.00 | 0h |
| GEN_PERMIT | Generator Permit | $0 | $350.00 | $490.00 | 0h |
| GEN_STARTUP | Startup/Commissioning | $0 | $194.32 | $272.05 | 4h |
| GEN_MAINT | Annual Maintenance Service | $75 | $181.16 | $253.62 | 2h |
| GEN_BATT | Battery Replacement | $85 | $119.49 | $167.29 | 0.5h |
| GEN_WIFI | WiFi Module Installation | $150 | $216.58 | $303.21 | 1h |
| GEN_LOAD_SHED | Load Shedding Module | $350 | $489.16 | $684.82 | 2h |
| GEN_WARRANTY_EXT | Extended Warranty Processing | $0 | $75.00 | $105.00 | 0.5h |

### Pricing Model
- **5 price tiers per item:** Phoenix Cost (base), Premium (x1.20), Member (x1.30), List (x1.40), Add-On (List x0.90), Afterhours (List x1.50)
- **Material markup for generators:** 25% (materials >= $1,755)
- **Labor rate:** $48.58/hr burdened, $115/hr standard billable

### Planned but Not Yet Extracted
The Generac Sales CLI Mission doc planned to extract from the Generac portal:
- Full product catalog with specs (Guardian Series, Protector Series)
- Sizing guide (kW to home size mapping)
- Comparison charts
- Financing options
- Example JSON structure planned: model, series, kw_rating, fuel_types, transfer_switch, msrp, install_considerations, typical_home_size

---

## 3. Service Categories

### From Pricebook (NC Base — 170 items, 7 tiers = ~1,040 total)

| Category | Subcategories |
|----------|--------------|
| **Admin** | Admin |
| **Circuits** | 15A, 20A, 30A, 40A+, Future, Plain |
| **Devices** | Receptacles, Safety, Switches |
| **Lighting** | Can Lights, Ceiling, Tape, Wall |
| **Service** | Bonding, Equipment, Panels, Utilities |
| **Specialty** | Specialty |
| **Generators** | Standby (Tier 7 / GEN only) |

### 7-Tier System

| Tier | Prefix | Name | Adjustment |
|------|--------|------|------------|
| 1 | NC_ | New Construction | Base (no adjustment) |
| 2 | RM_ | Remodel | +20% labor |
| 3 | COM_ | Commercial | +10% labor, +15% materials |
| 4 | COMRM_ | Commercial Remodel | +12% labor over COM |
| 5 | FP_ | Fixed Price | NC x1.50, rounded to $5 |
| 6 | SMP_ | Small Projects | +20% over NC phoenixCost |
| 7 | GEN_ | Generac Generators | Curated equipment items |

### Service Fusion Import Categories (from SF research)
Service Fusion uses these import columns: Category, Service Name, Is Active, Service Description, Task Code, Rate Name, Rate, Internal Cost, Member Rate, Add On Rate, Premium Rate, Value Rate, Afterhours Rate.

**Source files:**
- `~/GitHub/phoenix-ai-core-staging/packages/pricebook-mcp-server/src/pricing-engine.ts`
- `~/GitHub/phoenix-ai-core-staging/packages/pricebook-mcp-server/src/data/nc-base.json`
- `~/Phoenix_Local/_GATEWAY/SESSION_SUMMARY_SF_RESEARCH_2026-01-02.md`

---

## 4. Service Area

### Confirmed Location Data
- **HQ:** Greeley, Colorado (Weld County)
- **Business Address:** 41521 County Road 17/21, Elizabeth, CO 80107
- **Market:** Denver Metro area (~3 million population)

### Licensed Jurisdictions (10+)
From USER.md — active electrical licenses in:
1. Colorado State (#101501)
2. Denver
3. Castle Rock
4. Centennial
5. Arvada
6. Parker
7. Westminster
8. Douglas County
9. Littleton
10. (Additional jurisdictions not enumerated)

### Service Area Profile
- **Type:** Residential and commercial electrical contractor
- **Ranking:** Top 1% of all Colorado contractors (BuildZoom score: 120/200)
- **Permits:** 174 since 2018
- **Customer base:** 1,151+ profiles (1,127 residential + 24 commercial)
- **Field workers:** 18 active

**Note:** No explicit zip code list was found in the filesystem. The service area can be inferred from the licensed jurisdictions above, which span the northern Colorado / Denver Metro corridor from Greeley south through Elizabeth.

**Source:** `~/Phoenix_Local/_GATEWAY/PHOENIX_ECHO_DOCS/USER.md`

---

## 5. Notification Routing / Telegram Chat IDs

### Confirmed Chat IDs

| Chat ID | Username | Role |
|---------|----------|------|
| **8357341666** | shane7777777777777 | Shane (Owner) — primary DM |

### Configuration
From `~/.openclaw/openclaw.json`:
```json
"telegram": {
  "allowFrom": ["8357341666"],
  "groupAllowFrom": ["8357341666"],
  "dmPolicy": "allowlist",
  "groupPolicy": "allowlist"
}
```

### Gateway Log Evidence
Logs from `~/.phoenix-echo/gateway-2026-02-28.log` confirm:
- Bot ID: `8497306117` (PhoenixEchoBot)
- Shane's chat ID: `8357341666` (all messages received from this ID)
- Session namespace: `telegram-8357341666`

### Other Channels (for reference)
- **WhatsApp:** Allowed from `+7209550284` (Shane's phone)
- **MS Teams:** App ID `ad4c0365-93d0-49a9-8148-1aacdf400a6c`, Tenant `e7d8daef-fd5b-4e0b-bf8f-32f090c7c4d5`
- **iMessage:** Disabled

### Team Members (potential future routing)
- **Stephanie Mowbray** (Office Manager): Phone 720-441-7499 — no Telegram chat ID found yet
- **Field Workers:** 18 active — no Telegram IDs configured

**Source files:**
- `~/.openclaw/openclaw.json`
- `~/.phoenix-echo/config.json`
- `~/.phoenix-echo/gateway-2026-02-28.log`

---

## 6. Branding

### Color Palette (from design tokens — single source of truth)

| Token | Hex | Usage |
|-------|-----|-------|
| **Phoenix Red** | `#FF1A1A` | Primary / buttons / headers |
| **Gold** | `#D4AF37` | Accent / labels / avatars |
| **Near-Black** | `#0a0a0a` | Background |
| **Surface** | `#1a1a1a` | Card/panel backgrounds |
| **Surface Hover** | `#2a2a2a` | Interactive hover states |
| **Text** | `#FFFFFF` | Primary text |
| **Success** | `#00C9A7` | Clock-in / positive states |
| **Warning** | `#F59E0B` | Alerts |
| **Danger** | `#EF4444` | Errors / clock-out |

### Key Gradients
```
Red Button:  linear-gradient(180deg, rgba(255,26,26,0.95), rgba(200,20,20,0.9))
Gold Button: linear-gradient(135deg, #D4AF37, #B8960B)
Glass Card:  linear-gradient(165deg, rgba(255,255,255,0.08), rgba(255,255,255,0.02), rgba(255,255,255,0.04))
User Bubble: linear-gradient(135deg, rgba(255,26,26,0.8), rgba(200,20,20,0.9))
AI Bubble:   linear-gradient(165deg, rgba(255,255,255,0.08), rgba(255,255,255,0.04))
```

### Typography
- **Primary Font:** Inter, system-ui, sans-serif
- **Display Font:** Cinzel, Georgia, serif (headings, branding)
- **H1:** 32px, 700 weight, 3px letter-spacing
- **Body:** 16px, 400 weight

### Logo / Image Assets Found

**Phoenix Command App:**
- `~/GitHub/phoenix-ai-core-staging/packages/phoenix-command/public/phoenix-logo.png`
- `~/GitHub/phoenix-ai-core-staging/packages/phoenix-command/dist/phoenix-logo.png`

**VPS (production):**
- `/opt/phoenix-echo-gateway/assets/icons/phoenix-icon-4k-transparent.png` (4K, transparent)
- `/opt/phoenix-echo-gateway/assets/icons/phoenix-icon-4k.png` (4K, solid background)
- `/opt/phoenix-echo-gateway/assets/icons/phoenix-teams-icon-FINAL.png`

**SharePoint Theme:**
- `~/GitHub/phoenix-sharepoint-theme-main/assets/Phoenix_Black_Background.jpg`
- `~/GitHub/phoenix-sharepoint-theme-main/assets/Phoenix_Transparent.png`

**Downloads (bot logo variations):**
- `~/Downloads/phoenix-bot-logo-640x360-fit.png`
- `~/Downloads/phoenix-bot-logo-640x360-fill.png`
- `~/Downloads/phoenix-bot-logo-640x360-stretch.png`
- `~/Downloads/phoenix-bot-logo-640x360-fit.gif` (animated)
- `~/Downloads/phoenix-bot-logo-640x360.gif` (animated)
- `~/Downloads/phoenix-bot-logo-64x36-fit.png` (small)
- `~/Downloads/phoenix-bot-logo-640x360-fit.mp4` (video)

### VPS Dashboard Theme
The VPS dashboard (`/opt/phoenix-echo-gateway/public/phoenix-echo.css`) uses the black/red/gold Phoenix theme.

**Source file for design tokens:**
- `~/GitHub/phoenix-ai-core-staging/packages/phoenix-command/src/theme/tokens.ts`

---

## 7. Scheduling System — Service Fusion

### Confirmed Platform
**Service Fusion** (NOT ServiceTitan — ServiceTitan has been purged from the system).

### Full API Reference Document
**Location:** `~/Phoenix_Local/PHOENIX-ECHO-GATEWAY-MASTER-RUNBOOK/docs/SERVICE_FUSION_API_COMPLETE_REFERENCE.md`

**Captured:** 2026-02-26 (full scrape from docs.servicefusion.com)

#### API Key Details
- **Base URL:** `https://api.servicefusion.com/v1/{resource}`
- **Auth:** OAuth 2.0 (Client Credentials or Authorization Code)
- **Token endpoint:** `POST https://api.servicefusion.com/oauth/access_token`
- **Token lifetime:** 1 hour (refresh supported)
- **Rate limit:** 60 requests/minute per access token
- **Operations:** GET (list), GET/{id} (single), POST (create). **No PUT/PATCH/DELETE exposed.**
- **Cred management:** https://admin.servicefusion.com/developerSettings/oauthConsumer

#### Key Endpoints
- `/me` — Authorized user info
- `/customers` — GET list, POST create, GET/{id} single
- `/customers/{id}/equipment` — Customer equipment
- `/jobs` — Job lifecycle
- `/job-statuses` — Status values
- `/calendar-tasks` — Calendar/scheduling
- `/techs` — Technicians
- `/estimates` — Estimates
- `/invoices` — Invoices
- `/services` — Service catalog
- `/locations` — Locations
- `/sources` — Lead sources
- `/industries` — Industry types

#### Query Features
- Pagination (`?page=`, `?per-page=`)
- Sorting (`?sort=-name,description`)
- Filtering (`?filters[name]=John`)
- Field selection (`?fields=name,description`)
- Expandable nested objects (`_expandable` array in responses)

#### Webhooks Available
Job created, customer created, invoice created, estimate created.

### OAuth Implementation Plan
**Location:** `~/Phoenix_Local/PHOENIX-ECHO-GATEWAY-MASTER-RUNBOOK/docs/SERVICE_FUSION_OAUTH_PLAN.md`

Key points from the plan:
- Hybrid integration (native REST client + MCP compatibility)
- All writes require Shane-only approval in Phase 1
- `ServiceFusionAuthBroker` — handles token lifecycle
- `ServiceFusionApiClient` — REST client
- `ServiceFusionPolicyGate` — read vs write enforcement
- `ServiceFusionApprovalQueue` — approval workflow
- Shadow-read validation before write cutover
- Azure Key Vault as secret store

### Service Fusion Tier Info
- API requires **Pro tier** ($627/mo)
- Bulk import via UI works on Basic tier
- SF supports 6 pricing tiers: Regular, Member, Add-On, Premium, Value, Afterhours
- Previous import on record: 317 services imported 10/24/2019

### Architecture Rule
**Single writer:** Mac Brain (OpenClaw on Mac Pro) is the ONLY writer to Service Fusion. VPS relay handles ingress/relay/health only — no SF writes from VPS.

**Source files:**
- `~/Phoenix_Local/PHOENIX-ECHO-GATEWAY-MASTER-RUNBOOK/docs/SERVICE_FUSION_API_COMPLETE_REFERENCE.md`
- `~/Phoenix_Local/PHOENIX-ECHO-GATEWAY-MASTER-RUNBOOK/docs/SERVICE_FUSION_OAUTH_PLAN.md`
- `~/Phoenix_Local/_GATEWAY/SESSION_SUMMARY_SF_RESEARCH_2026-01-02.md`
- `~/Phoenix_Local/_GATEWAY/PHOENIX_ECHO_DOCS/REVERSE_ENGINEERING_PHOENIX_ECHO_GATEWAY_2026-02-28.md`

---

## Quick Reference Summary

| Item | Status | Key Value |
|------|--------|-----------|
| Bot Token | Confirmed | `8497306117:AAFBLf-hRMyDetlAOKoD1CunNg7YpIfXTnE` |
| Mini App URL | Does not exist yet | Needs creation |
| Gateway URL | Live | `https://echo.phoenixelectric.life` |
| Generac Items | 20 items in Tier 7 | 7kW to 24kW Guardian + accessories |
| Service Categories | 7 categories | Pricebook has 170 NC base items x 7 tiers |
| Service Area | Denver Metro / Northern CO | 10+ licensed jurisdictions |
| Shane Chat ID | 8357341666 | Only configured Telegram user |
| Brand Colors | Red/Gold/Black | #FF1A1A / #D4AF37 / #0a0a0a |
| Logo Files | Multiple found | 4K icons on VPS, PNGs locally |
| Scheduling | Service Fusion | Full API reference doc available |
| SF API Base | Documented | `https://api.servicefusion.com/v1/` |

---

*Compiled by Echo Pro (Claude Opus 4.6) from filesystem research. All paths verified. No files were modified.*
