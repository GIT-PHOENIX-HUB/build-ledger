# Full Audit + Build Plan — Phoenix Ecosystem

Source: Apple Notes, created 2026-03-21

---

## CRITICAL ISSUES FOUND (fix before anything else)

### SECURITY

1. **Generator dealer costs exposed in client-side JS** — phoenix-electric-miniapp/miniapp/app.js lines 23-29 contain material (what Phoenix pays) and phoenix (dealer price) columns alongside list (customer price). Any customer can view-source and see your ~40% markup. Example: 22kW Guardian shows material: 5800, phoenix: 8221.60, list: 11510.24.
2. **Shane's Telegram chat ID hardcoded** — miniapp/server-handler.js line 8: SHANE_CHAT_ID = '8357341666'. Should be env var.
3. **phoenix-command-app/ subdirectory inside miniapp repo** — Contains Azure AD client/tenant IDs, internal API endpoints, employee tools. Should not exist in a customer-facing repo.

### BROKEN CODE (existing, pre-branch)

1. **channels-integration.js imports files that don't exist** — src/channels/whatsapp.js, src/channels/telegram.js, src/channels/teams.js are imported but never existed. The ChannelsManager would crash on init if any channel was enabled.
2. **Missing nodemailer dependency** — email-adapter.js imports nodemailer but it's not in package.json.

### REGRESSIONS FROM THIS BRANCH

1. **Daily Log form gutted** — The JSX DailyLog.jsx was a faithful NC Daily Work Log paper-form replica (completed/incomplete work rows with task/qty/estTime/description, tech+lead signatures, phase selector, instructions, i18n). The new DailyLogScreen.tsx replaced it with 5 simple fields (customer, jobNumber, hours, workCompleted, issues). The API type declaration .d.ts doesn't match the actual .js implementation.
2. **i18n completely lost** — All new TSX screens have hardcoded English strings. The LanguageProvider wrapper exists in App.jsx but not App.tsx. Spanish translations exist but are unused. 109 translation keys orphaned.
3. **Dual channel systems running in parallel** — Both channelsManager (old, broken) and messageRouter (new, working) try to manage the same channels. The old one fails silently which accidentally works, but cron scheduling and the Teams Express route are casualties.
4. **Teams inbound messages have no route** — Old system can't mount /api/messages (missing imports). New TeamsAdapter creates a handler but never mounts it on Express.
5. **Cron scheduler inaccessible** — Since channelsManager fails, getCronScheduler() returns null, so cron jobs never start and /api/cron/jobs endpoint never registers.

## CURRENT STATE — What's On Each Branch

### REPO 1: phoenix-command-app

**Branch:** `claude/phoenix-parallel-build-8tcBF` — 2 commits pushed, clean — +9,386 lines, 29 files changed

| Category           | Files                                                             | State                                         |
| ------------------ | ----------------------------------------------------------------- | --------------------------------------------- |
| Working auth       | msalConfig.js, useAuth.ts                                         | Complete — real Azure AD tenant               |
| Splash/Login       | SplashScreen.tsx                                                  | Complete                                      |
| Dashboard          | DashboardScreen.tsx                                               | Rewritten — mock schedule/dispatch/chat/stats |
| Time Clock         | TimeClockScreen.tsx                                               | Stub — "No entries" static display            |
| Files              | FilesScreen.tsx                                                   | Stub — empty state placeholders               |
| Teams              | TeamsScreen.tsx                                                   | Stub — static buttons, nothing functional     |
| Daily Log          | DailyLogScreen.tsx                                                | REGRESSED — lost paper form structure         |
| Dispatch           | DispatchScreen.tsx                                                | NEW — accept/decline UI, mock data            |
| Schedule           | ScheduleScreen.tsx                                                | NEW — weekly calendar, mock data              |
| Knowledge          | KnowledgeScreen.tsx                                               | NEW — NEC + Rexel search, mock data           |
| Gateway WS client  | EchoGatewayClient.ts                                              | Built + tested, but not connected             |
| Echo REST API      | echo-api.ts                                                       | Built + tested, but not imported              |
| GPS/Location       | LocationService.ts                                                | Built + tested, but not connected             |
| Push notifications | PushNotificationService.ts                                        | Built, not connected                          |
| Design system      | design-system.ts                                                  | Built — --px- prefix, createIcon(), 17 SVGs   |
| Tests              | 3 test files, 40 tests                                            | All passing                                   |
| Dead code          | App.jsx, main.jsx, 7 old .jsx components, theme.js, both Contexts | Unused                                        |

**Two separate API layers exist:**

- phoenix-api.js → Azure Functions at phoenix-command-func.azurewebsites.net (old, still active)
- echo-api.ts → Gateway at localhost:18790 (new, not connected)

### REPO 2: phoenix-echo-bot

**Branch:** `claude/phoenix-parallel-build-8tcBF` — 2 commits pushed + 2 uncommitted files — +4,765 lines, 27 files changed

| Category             | Files                                                                              | State                                           |
| -------------------- | ---------------------------------------------------------------------------------- | ----------------------------------------------- |
| v1 core (pre-branch) | index.js, agent.js, session.js, tools.js, prompt.js, config.js, auth.js, logger.js | Solid, production-grade                         |
| Brain blueprint      | brain-blueprint.js (917 lines)                                                     | Complete — full Phoenix Electric infrastructure |
| Old channels         | channels-integration.js                                                            | BROKEN — imports non-existent files             |
| Cron                 | cron.js                                                                            | Built but broken via channels-integration       |
| Message Router       | message-router.js                                                                  | NEW — normalize/route/format, tested            |
| Adapters             | 4 adapters + base                                                                  | NEW — Teams, Telegram, WhatsApp, Email          |
| Plugin Manager       | plugin-manager.js                                                                  | NEW — registry + intent scoring, tested         |
| Plugins              | electrical-guru, servicefusion, phoenix-knowledge, rexel                           | NEW — guru has real NEC data + calculators      |
| Echo Persistence     | echo-persistence.js                                                                | NEW — per-user JSONL memory, tested             |
| Gateway Client       | gateway-client.js                                                                  | NEW — WS with backoff + circuit breaker, tested |
| MiniApp Routes       | miniapp-routes.js                                                                  | NEW — 7 API endpoints for Telegram MiniApp      |
| Echo Identity        | echo-identity.js                                                                   | NEW — personality + audience detection          |
| Tests                | 4 test files, 48 tests                                                             | All passing                                     |

**Key conflict:** `channels-integration.js` (old, broken) vs `message-router.js` + adapters (new, working) — both try to own channel lifecycle. Need to cleanly replace old with new.

### REPO 3: phoenix-electric-miniapp

**Branch:** `claude/phoenix-parallel-build-8tcBF` — 1 commit pushed, clean — +415 lines, 3 new files

| Category           | Files                 | State                                                                                |
| ------------------ | --------------------- | ------------------------------------------------------------------------------------ |
| Home screen        | index.html            | Complete — brand hero, 4 nav buttons                                                 |
| Service Request    | index.html + app.js   | Complete — 6 categories, urgency, property, contact, GPS                             |
| Generator Sizing   | index.html + app.js   | Complete — 17 circuits, 7 Generac models, full package pricing, calculator algorithm |
| Maintenance        | index.html + app.js   | Complete — 6 services with prices, booking forms                                     |
| About              | index.html            | Complete — licenses, service area, contact                                           |
| Success            | index.html            | Complete — confirmation screen                                                       |
| Telegram SDK       | app.js                | Good — ready(), expand(), BackButton, HapticFeedback, theme, location, deep links    |
| API submission     | app.js sendToBot()    | Working — POST to backend, fallback to tg.sendData()                                 |
| Bot commands       | bot-commands.js       | Complete — /start, /service, /generator, /maintenance, /help, /terms                 |
| Server handler     | server-handler.js     | Working — formats + sends to Shane's DM                                              |
| Config             | config.js             | NEW — not wired in                                                                   |
| Design system      | design-system.js      | NEW — 35 SVG icons, --px- tokens, not wired in                                       |
| Rexel catalog data | data/rexel-catalog.js | NEW — 52 products, not wired in                                                      |
| Employee app copy  | phoenix-command-app/  | SHOULD BE REMOVED                                                                    |

**Bot username inconsistency:** bot-commands.js uses `PhoenixEchoBot`, config.js uses `PhoenixElectricBot`.

## BUILD PLAN — For Your Approval

### REPO 1: phoenix-command-app

#### Phase 1 — Fix regressions and clean up dead code

| #   | File                           | Action  | What & Why                                                                                                                                                                                                                                |
| --- | ------------------------------ | ------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1   | src/screens/DailyLogScreen.tsx | REWRITE | Restore the full NC Daily Work Log paper-form structure from DailyLog.jsx: completed work rows (task/qty/estTime/description), incomplete work rows, notes, materials needed, tech+lead signatures, phase selector. Use TypeScript types. |
| 2   | src/App.tsx                    | MODIFY  | Wire LanguageProvider from i18n, fix DailyLog data contract to match phoenix-api.js actual implementation.                                                                                                                                |
| 3   | Delete dead files              | DELETE  | Remove App.jsx, main.jsx, src/components/Dashboard.jsx, DailyLog.jsx, SplashScreen.jsx, TimeClock.jsx, FilesScreen.jsx, TeamsScreen.jsx, ChatWidget.jsx, TopMenu.jsx, LanguageToggle.jsx, theme.js.                                       |
| 4   | src/types/index.ts             | MODIFY  | Fix DailyLogFormData to match the full paper-form fields (completedWork rows, incompleteWork rows, signatures, phase, etc.)                                                                                                               |
| 5   | src/api/phoenix-api.d.ts       | MODIFY  | Fix type declarations to match actual phoenix-api.js implementation                                                                                                                                                                       |

#### Phase 2 — Restore i18n across all TSX screens

| #   | File                             | Action | What & Why                                                                                   |
| --- | -------------------------------- | ------ | -------------------------------------------------------------------------------------------- |
| 6   | src/i18n/translations.ts         | MODIFY | Add translation keys for all new screens (Dispatch, Schedule, Knowledge, Dashboard rewrites) |
| 7   | All TSX screens                  | MODIFY | Replace hardcoded English strings with t('key') calls from LanguageContext                   |
| 8   | src/components/layout/Header.tsx | MODIFY | Re-add language toggle button                                                                |

#### Phase 3 — Add technician field tools (moved from miniapp)

| #   | File                                | Action | What & Why                                                                                                                         | Connects To              |
| --- | ----------------------------------- | ------ | ---------------------------------------------------------------------------------------------------------------------------------- | ------------------------ |
| 9   | src/screens/FieldToolsScreen.tsx    | CREATE | Wire sizing, conduit fill, voltage drop, ampacity tables, box fill calculators. NEC 2023 formulas. All local calculations, no API. | Nothing — pure math      |
| 10  | src/data/nec-tables.ts              | CREATE | NEC Table 310.16 ampacity, conduit fill areas, box fill units, wire gauge properties. Pure data.                                   | Used by FieldToolsScreen |
| 11  | src/App.tsx                         | MODIFY | Add FieldToolsScreen routing, add 'tools' to Screen type                                                                           |                          |
| 12  | src/components/layout/BottomNav.tsx | MODIFY | Add Tools tab                                                                                                                      |                          |

#### Phase 4 — Wire gateway integration (with TODO markers)

| #   | File                            | Action | What & Why                                                                                                                                                                                  | Connects To |
| --- | ------------------------------- | ------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| 13  | src/App.tsx                     | MODIFY | Import and initialize EchoGatewayClient (already built), connect to state. Keep phoenix-api.js for Azure Functions backend, use echo-api.ts for Gateway. Both coexist — different backends. | Gateway WS  |
| 14  | src/screens/DashboardScreen.tsx | MODIFY | Replace mock chat with real EchoGatewayClient connection (guarded by TODO(gateway) for URL config)                                                                                          | Gateway WS  |

No new dependencies needed.

### REPO 2: phoenix-echo-bot

#### Phase 1 — Fix the channels conflict (critical)

| #   | File                        | Action | What & Why                                                                                                                                                                                                                                                                    | Connects To |
| --- | --------------------------- | ------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| 1   | src/channels-integration.js | DELETE | Broken (imports non-existent files). Fully replaced by message-router.js + adapters.                                                                                                                                                                                          | —           |
| 2   | src/index.js                | MODIFY | Remove channelsManager import/init. Mount TeamsAdapter's Express route handler on /api/messages. Move cron scheduler init to standalone (not dependent on channelsManager). Fix AgentRunner client passing (pass clientOptions not client). Register /api/cron/jobs directly. | Everything  |
| 3   | package.json                | MODIFY | Add nodemailer dependency (used by email-adapter.js)                                                                                                                                                                                                                          |             |

#### Phase 2 — Commit + push existing uncommitted work

| #   | File              | Action | What & Why                                                    |
| --- | ----------------- | ------ | ------------------------------------------------------------- |
| 4   | src/index.js      | COMMIT | Already modified with new module wiring (after Phase 1 fixes) |
| 5   | package-lock.json | COMMIT | Updated lock file                                             |

No new files needed. The echo-bot is architecturally complete after the conflict resolution.

### REPO 3: phoenix-electric-miniapp

#### Phase 1 — Security fixes

| #   | File                      | Action                  | What & Why                                                                                               |
| --- | ------------------------- | ----------------------- | -------------------------------------------------------------------------------------------------------- |
| 1   | miniapp/app.js            | MODIFY                  | Remove material and phoenix price columns from GENERATORS array. Keep only list price (customer-facing). |
| 2   | miniapp/server-handler.js | MODIFY                  | Replace hardcoded SHANE_CHAT_ID with process.env.NOTIFICATION_CHAT_ID                                    |
| 3   | phoenix-command-app/      | DELETE entire directory | Employee app with Azure AD creds doesn't belong in customer repo                                         |

#### Phase 2 — Wire new modules into existing app

| #   | File                      | Action | What & Why                                                                                                                                          | Connects To                     |
| --- | ------------------------- | ------ | --------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------- |
| 4   | miniapp/index.html        | MODIFY | Add <script> tags for config.js, design-system.js, data/rexel-catalog.js. Keep existing screen structure intact.                                    | —                               |
| 5   | miniapp/app.js            | MODIFY | Call DesignSystem.injectTokens() on init, DesignSystem.syncTelegramTheme() on theme change. Use Config for backend URL instead of hardcoded string. | config.js, design-system.js     |
| 6   | miniapp/config.js         | MODIFY | Fix bot username to PhoenixEchoBot (match bot-commands.js). Move backend URL to env-configurable.                                                   | —                               |
| 7   | miniapp/server-handler.js | MODIFY | Enable Telegram initData validation (currently commented out). Add routes for new endpoints (products, NEC, quotes, job status).                    | phoenix-echo-bot /api/miniapp/* |
| 8   | miniapp/bot-commands.js   | MODIFY | Add /products, /nec, /quote, /status commands with deep-link buttons to miniapp pages.                                                              | Telegram Bot API                |

#### Phase 3 — Architecture layer (fully built, for designer handoff)

| #   | File                               | Action | What & Why                                                                                                                                                                                   | Connects To                     |
| --- | ---------------------------------- | ------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------- |
| 9   | miniapp/echo-api.js                | CREATE | REST client for echo-bot backend. Methods: submitServiceRequest(), submitQuote(), getJobStatus(), searchProducts(), searchNEC(), askEcho(), getServiceHistory(). Auth via Telegram initData. | phoenix-echo-bot /api/miniapp/* |
| 10  | miniapp/echo-gateway-client.js     | CREATE | WebSocket client — same pattern as echo-bot's gateway-client.js. Exponential backoff (1s→30s), heartbeat 25s, lifecycle states. For real-time job status updates.                            | Gateway WS                      |
| 11  | miniapp/router.js                  | CREATE | Hash-based page router with back stack, deep-link support (?startapp=), page lifecycle (mount/unmount/cleanup). Manages Telegram BackButton.                                                 | telegram SDK                    |
| 12  | miniapp/state.js                   | CREATE | Simple reactive state store. Quote cart, job status, chat messages, user session. Event emitter for UI reactivity. cleanup() export.                                                         | —                               |
| 13  | miniapp/data/nec-codes.js          | CREATE | 30+ common NEC 2023 articles with article #, title, requirement, category, Colorado amendment flag.                                                                                          | —                               |
| 14  | miniapp/data/service-categories.js | CREATE | Service type definitions: Emergency 24/7, Residential, Commercial, Industrial, Generator, EV Charger. With descriptions, response times, icons.                                              | —                               |

#### Phase 4 — Page stubs (clean shells for designer)

Each page exports `mount(container)`, `unmount()`, `cleanup()`. Contains semantic HTML structure, data bindings, event handlers — **minimal styling** so designer drops in CSS/HTML refinements later.

| #   | File                             | What It Displays                                                                                                                    | Designer Brief                                                    |
| --- | -------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------- |
| 15  | miniapp/pages/home.js            | Brand hero, service category cards, CTAs (Request Service / Get Quote / Check Status), featured products row                        | Hero layout, category card grid, CTA buttons                      |
| 16  | miniapp/pages/service-request.js | Multi-step form: category → urgency → property → photos → contact → schedule → confirmation with reference #                        | Step indicator, form fields, photo upload area, confirmation card |
| 17  | miniapp/pages/products.js        | Rexel catalog: category tabs, search, product cards, add-to-quote. Loads from rexel-catalog.js + API.                               | Category tabs, search bar, product card grid, "Add to Quote"      |
| 18  | miniapp/pages/product-detail.js  | Single product: image area, name/SKU/price, description, stock, add-to-quote with qty                                               | Product hero, specs, quantity picker                              |
| 19  | miniapp/pages/quote.js           | Cart: line items, qty edit, labor estimate toggle, site visit toggle, customer form, submit                                         | Cart table, form, summary, submit CTA                             |
| 20  | miniapp/pages/job-status.js      | Lookup by reference #/phone. Timeline: Submitted → Scheduled → En Route → In Progress → Complete. Tech info, ETA. Real-time via WS. | Lookup form, timeline stepper, tech card                          |
| 21  | miniapp/pages/nec-lookup.js      | NEC code browser: search, category buttons, code cards, Colorado amendment badge, bookmarks                                         | Search bar, category chips, code cards                            |
| 22  | miniapp/pages/echo-chat.js       | AI chat: message list, input, typing indicator, quick action chips ("Get a Quote", "Check Status", "Ask About Code")                | Chat bubbles, input bar, quick chips, Echo avatar                 |
| 23  | miniapp/pages/service-history.js | Customer lookup by phone/email. Past services, equipment installed, warranty status.                                                | Lookup form, service cards, warranty badges                       |

#### Phase 5 — Update navigation

| #   | File               | Action | What & Why                                                                                                                                                   |
| --- | ------------------ | ------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| 24  | miniapp/index.html | MODIFY | Add <div id="app"> mount point for router. Keep existing screens as-is (they work). Add bottom tab nav: Home, Services, Products, Status, Chat. Wire router. |
| 25  | miniapp/style.css  | MODIFY | Convert hardcoded colors to --px-* variables. Add base page transition styles. Keep existing component styles.                                               |

#### Phase 6 — Config + CI

| #   | File                         | Action                                                                 |
| --- | ---------------------------- | ---------------------------------------------------------------------- |
| 26  | .env.example                 | CREATE — Gateway URL, WS URL, Telegram bot token, notification chat ID |
| 27  | .github/workflows/ci.yml     | CREATE — lint JS/CSS                                                   |
| 28  | .eslintrc.json + .prettierrc | CREATE — vanilla JS browser config                                     |

## DESIGNER BRIEFING — MiniApp Pages

| Page            | Customer Goal                   | Key UI Elements                                                                                                                 |
| --------------- | ------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| Home            | "What can Phoenix do for me?"   | Phoenix logo + brand hero, tagline, 6 service cards with icons, 3 CTA buttons, featured products                                |
| Service Request | "I need an electrician"         | 5-step form with progress indicator, 6 category cards, 3 urgency levels, photo upload, GPS share, confirmation with reference # |
| Products        | "What do you carry?"            | Search bar, 8 category tabs, product card grid (image/name/SKU/price/stock), "Add to Quote" per card                            |
| Product Detail  | "Tell me about this product"    | Product image, name/SKU/brand, price/unit, stock badge, description, qty stepper, "Add to Quote"                                |
| Quote Request   | "I want a price on these items" | Cart table with qty/price, manual line item add, labor checkbox, site visit checkbox, customer form, total, submit              |
| Job Status      | "Where's my electrician?"       | Reference # or phone lookup, vertical timeline stepper with timestamps, technician card, ETA, push opt-in                       |
| NEC Lookup      | "Is this to code?"              | Search bar, 7 category chips, code cards (article/title/text), Colorado amendment orange badge, bookmark toggle                 |
| Echo Chat       | "I have an electrical question" | Chat bubbles (user right / Echo left), text input + send, quick action chips, typing dots                                       |
| Service History | "Show my past work"             | Phone/email lookup, service cards (date/type/tech), equipment table, warranty badges                                            |

**Design tokens:** Primary `#FF1A1A`, Accent `#D4AF37`, Background `#0a0a0a`. Inter (body), Cinzel (display). 12px card radius, 8px button radius. Dark default, light via Telegram theme sync.

## CONNECTION MAP

```
┌──────────────────────────────────────────┐
│        Phoenix Echo Gateway              │
│        (Shane builds separately)         │
│        VPS 93.188.161.80:18790           │
└────────────────┬─────────────────────────┘
                 │ WebSocket + REST
    ┌────────────┼────────────┐
    │            │            │
┌───▼────┐  ┌───▼────┐  ┌───▼────┐
│CMD APP │  │ECHO BOT│  │MINIAPP │
│(Employ)│  │(Brain) │  │(Cust.) │
├────────┤  ├────────┤  ├────────┤
│EchoGW  │  │gateway │  │echo-gw │
│Client  ├──┤client  ├──┤client  │ ← Same WS pattern
│(.ts)   │  │(.js)   │  │(.js)   │
├────────┤  ├────────┤  ├────────┤
│echo-api├─→│REST API│←─┤echo-api│ ← Same REST contract
│(.ts)   │  │/api/*  │  │(.js)   │
├────────┤  ├────────┤  ├────────┤
│MSAL    │  │adapters│  │Telegram│
│Auth    │  │Teams/TG│  │initData│ ← Different auth per app
│        │  │WA/Email│  │        │
├────────┤  ├────────┤  ├────────┤
│Azure   │  │miniapp │  │Calls   │
│Funcs   │  │routes  │←─┤echo-bot│ ← MiniApp backend
│Backend │  │/api/   │  │/api/   │
└────────┘  │miniapp │  │miniapp │
            └────────┘  └────────┘
```

## WHAT I WILL NOT DO (unless you say otherwise)

- Create PRs (waiting for your go)
- Push any new commits
- Build the Gateway itself
- Change authentication approach (MSAL for command-app, Telegram initData for miniapp, OAuth for echo-bot — all already in place)
- Add features not described above
- Touch the existing generator sizing calculator (it works, just needs the pricing security fix)

**Ready for your review.** Tell me what to change, cut, or add. Once approved, I'll execute.
