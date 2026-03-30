# Your GitHub Landscape — Annotated by Shane
**Source:** Apple Notes, created 2026-03-27, modified 2026-03-29
**Shane's annotations are in ALL CAPS and parentheses.**

---

## Core AI Infrastructure (6 repos)

| Repo | Lang | Status |
|------|------|--------|
| Phoenix-Echo-Gateway | JS | Private, the heart — 10 phases complete |
| phoenix-ai-core | RTF | Private, original core |
| Phoenix-ai-core-staging | PS | Private, 7 packages |
| Phoenix-ECHO | Shell | Private, Echo Pro identity |
| phoenix-plugins | JS | Public, Claude Code plugins |
| PHOENIX_UNIFIED_PROD | — | Private, combined code (empty?) |

## Apps & Interfaces (4 repos)

| Repo | Lang | Status |
|------|------|--------|
| phoenix-command-app | TS | Public, ops dashboard |
| phoenix-electric-miniapp | JS | Public, Telegram Mini App |
| phoenix-echo-bot | PS | Public, Telegram bot |
| phoenix-sharepoint-theme | HTML | Public, 3D phoenix theme |

## Business Integrations (4 repos)

| Repo | Lang | Status |
|------|------|--------|
| current | TS | Public, PCS — Service Fusion replacement |
| phoenix-365 | TS | Public, M365 integration |
| service-fusion | — | Public, empty? |
| rexel | — | Public, empty? |

## Ops & Infrastructure (6 repos)

| Repo | Lang | Status |
|------|------|--------|
| phoenix-builder-space-knowledge | JS | Private, best-tagged repo |
| phoenix-gauntlet | JS | Private, testing/QA |
| phoenix-production-test | JS | Private, staging validation |
| phoenix-filesystem | Python | Private, migration tooling |
| phoenix-archive | Shell | Private, golden rule archive |
| build-ledger | Shell | Public, temp collab |

## Content & Docs (2 repos)

| Repo | Lang | Status |
|------|------|--------|
| phoenix-showcase | HTML | Private, the story |
| twin-peaks | MDX | Private, GPT-OSS integration |

## Marketing (1 repo)

| Repo | Status |
|------|--------|
| phoenix-marketing | Private, empty |

---

## Red Flags
- 4-5 repos appear empty (no language detected: service-fusion, rexel, phoenix-marketing, PHOENIX_UNIFIED_PROD)
- Overlap: phoenix-ai-core vs Phoenix-ai-core-staging vs PHOENIX_UNIFIED_PROD vs Phoenix-Echo-Gateway — the merge story (T-065) is real
- Topics are bare — only phoenix-builder-space-knowledge has tags. The rest have zero discoverability
- Mixed languages — PowerShell in phoenix-echo-bot and staging feels like legacy from Windows-era scripts

---

## Shane's Annotated Recommendations

### 1. Ship current (PCS) as the flagship product
> We should take this and give it to a web agent that doesn't stop

Your Service Fusion replacement is TypeScript and public. This is the highest business-value repo — it directly replaces paid software. Wire it to the Gateway for AI-powered job dispatch.

### 2. Make phoenix-showcase your GitHub Pages portfolio
> (Shane: I'm googling with that, but later we need to update our...)

Flip it public, enable GitHub Pages → live site at git-phoenix-hub.github.io/phoenix-showcase.

### 3. Kill the empty repos or seed them
> **Shane:** ARCHIVE ANY CODE AND EMPTY THEM INTO ARCHIVE. "service-fusion, rexel, phoenix-marketing" — these were supposed to be skills/

### 4. Consolidate with a monorepo for the AI stack
> **Shane:** THIS IS EXACTLY WHAT IM LOOKING TO SEE LONG TERM. NOT NOW. BECAUSE THEY NEED TO BE CLEAN AND HAVE NO ISSUES BEFORE WE DO THIS

Monorepo structure:
```
phoenix-unified/
├── packages/
│   ├── gateway/        ← Phoenix-Echo-Gateway
│   ├── core/           ← phoenix-ai-core
│   ├── staging/        ← automation packages
│   ├── echo/           ← Echo identity + plugins
│   └── gauntlet/       ← testing
├── apps/
│   ├── command-app/    ← phoenix-command-app
│   ├── miniapp/        ← phoenix-electric-miniapp
│   └── bot/            ← phoenix-echo-bot
└── package.json        ← workspace root
```

### 5. Add GitHub Topics across all repos
> **Shane:** YESSSSS

### 6. Build a phoenix-mcp-hub repo
> **Shane:** THIS GOES FOR PLUGINS AND SKILLS AS WELL. THIS NEEDS TO NOT ONLY BE LOCATED IN ONE CLEAN PLACE BUT ALSO IN WHATEVER REPO THAT USES THEM SPECIFICALLY — THERE NEEDS TO BE A SKILLS FOLDER

### 7. Wire the Telegram Bot → Gateway → Command App pipeline
> **Shane:** EVERY ONE SEEMS TO HAVE FORGOTTEN THAT WE HAVE ECHO BOT IN AZURE. AND THE EXPECTATION IS PHOENIX IS IN ESSENCE THAT BOT THROUGHOUT — IN TEAMS, WHATSAPP, TELEGRAM, MICROSOFT. IF PHOENIX SOMEHOW ENDS UP WITH LESS CAPABILITIES THAN OPENCLAW IM GOING TO BE PISSED. CURRENTLY OUR BOT HAS BEEN RUNNING FOR A COUPLE MONTHS. DOWN FOR 2 WEEKS AS WE BUILD GATEWAY.

### 8. phoenix-365 as the M365 power play
> **Shane:** I'm working with ECHO CLI and browser in Microsoft right now setting up the application.

### 9. Open-source the showcase pieces
> **Shane:** This is not important right now but I absolutely think this would and should be set up. And it doesn't hurt to write it in and place the pieces in their place because Sentinel will build that out even better.

### 10. GitHub Actions across the board
> **Shane:** WE BASICALLY DOING THIS BUT EVEN BETTER WITH THE BIBLE AND GOVERNING DOCS WHICH I BELIEVE WILL NOT ONLY HELP ME BE ON TOP OF THINGS BUT WILL ADD CLARITY TO EVERYTHING.
