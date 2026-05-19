# Phoenix Electric AI OS — Top 30 Assessment
**Date:** 2026-04-03 | **Assessor:** Phoenix Echo (Opus 4.6)

What's strong, what's broken, and how each one plays out in daily electrical contracting operations.

---

## Top 20 Positives — What's Already Working

### 1. Service Fusion MCP is Fully Built
**What it is:** Complete API integration — customers, jobs, estimates, invoices, scheduling, technicians, missed calls, bookings, equipment, memberships, payments, recurring services, campaigns.

**Use case:** You're driving to a job site. Your office manager calls and says "Mrs. Johnson wants a quote for recessed lighting." You tell Echo: `/sf-customers search Johnson` → pull up her address, equipment history, past jobs. Then `/sf-estimate` → build the estimate right there using her customer record, your pricebook, and Rexel material costs. The estimate exists in SF before you even park the truck.

**Why it matters:** Most contractors open SF in a browser tab, click around for 5 minutes, copy-paste between windows. You have the entire platform accessible through conversation. Every SF operation that used to be 10 clicks is now one sentence.

---

### 2. Rexel + Pricebook Dual Plugin
**What it is:** Two plugins working together — Rexel (your vendor purchase history: SKUs, costs, quantities, spend) and Pricebook (your internal sell prices, tiers, margins, estimate calculations).

**Use case:** You're quoting a 200-amp panel upgrade. Instead of opening Rexel's portal, searching for each item, writing prices on scratch paper, then manually calculating margins — you say: `/rexel-lookup 200 amp panel` → see what you actually paid last time. Then `/rexel-margin` → instantly see if your pricebook sell price still gives you 30%+ margin, or if Rexel's price went up and you're now at 18%. Catches margin erosion before you send the quote.

**Why it matters:** Material cost is 40-60% of every electrical job. Most contractors guess or use stale pricing. You have real purchase history cross-referenced against live sell prices. The `/rexel-sync` command does a full gap analysis — finds items you buy from Rexel that aren't even in your pricebook yet.

---

### 3. Microsoft 365 MCP — Email, Calendar, OneDrive, SharePoint
**What it is:** Full Microsoft Graph API integration — read/send email, list/create calendar events, browse OneDrive files, access SharePoint sites and lists, user directory.

**Use case — Morning email triage:** "Check my email for anything from the city inspector" → Echo scans your inbox, finds the permit approval, summarizes it. "Send a confirmation email to the homeowner that their permit is approved and we're scheduling for Thursday" → email goes out, professional tone, from your actual Outlook account.

**Use case — Calendar coordination:** "What's on my calendar tomorrow?" → see all appointments. "Create a meeting with the team for Friday at 2pm about the commercial bid" → meeting created in your real calendar with invites.

**Use case — Document access:** "Find the Smith proposal in OneDrive" → locates and retrieves the file. "What's in the Active Projects SharePoint list?" → pulls current project status without opening a browser.

**Why it matters:** Your business communications, scheduling, and document storage are all inside 365. Having Claude read and write to it means you're not context-switching between AI assistant and email client. The AI operates your communication layer directly.

---

### 4. Claude-in-Chrome + Chrome-Control — Dual Browser Automation
**What it is:** Two complementary browser MCP servers. Claude-in-Chrome is the full automation suite (navigate, click, fill forms, read pages, execute JavaScript, take screenshots, record GIFs). Chrome-control adds tab management and page content extraction.

**Use case — Service Fusion web portal:** Some SF features aren't in the API. "Log into Service Fusion and screenshot the dispatch board" → Claude opens Chrome, navigates to SF, uses your saved session, takes a screenshot. You see the visual dispatch board without opening your laptop.

**Use case — Vendor portals:** "Check the Rexel website for current pricing on 12/2 MC cable" → Claude navigates to rexel.com, logs in with your session, searches, scrapes the price. Compares against what you have on file.

**Use case — WordPress site management:** "Log into the Phoenix Electric website and update the services page" → Claude navigates to wp-admin, edits the page, saves it. Website updated without you touching WordPress.

**Why it matters:** Not everything has an API. Many business tools are web-only. Browser automation closes the gap — if you can do it in Chrome, Claude can do it in Chrome. With your logged-in sessions, it has the same access you do.

---

### 5. 16+ Custom Plugins Installed
**What it is:** A plugin ecosystem covering every domain of your business — SF operations, material pricing, electrical code, file management, AI identity persistence, project planning, code review, web scraping, cross-agent communication.

**Use case:** This isn't one tool doing one thing. It's a mesh of specialized capabilities that compound. When you say "build a quote for a panel upgrade," the system activates SF (customer), Rexel (materials), Pricebook (margins), NEC (code compliance), and file-steward (save the output properly) — all from one request.

**Why it matters:** Most Claude users have maybe 1-2 MCP servers. You have 16+ plugins each with multiple skills, agents, and hooks. The breadth is what makes this an operating system rather than a chatbot.

---

### 6. 40+ Custom Skills/Commands
**What it is:** One-command triggers for every major business operation — `/sf-briefing`, `/sf-estimate`, `/sf-jobs`, `/sf-schedule`, `/sf-customers`, `/rexel-lookup`, `/rexel-margin`, `/rexel-sync`, `/rexel-history`, `/nec`, `/triage`, `/files`, `/echo`, `/status`, `/health`, `/wrapup`, `/review-pr`, and dozens more.

**Use case:** Instead of writing a paragraph explaining what you want, you type a slash command. `/sf-briefing` = full morning operations report. `/rexel-margin` = margin analysis across your whole pricebook. `/nec` = activate an NEC 2023 code consultant. Each skill carries its own instructions, so Claude knows exactly how to execute without you re-explaining every time.

**Why it matters:** Skills are reusable expertise. You taught the system once how to do a morning briefing, and now every Echo session can do it identically. It's institutional knowledge that doesn't walk out the door.

---

### 7. Echo Persistence System — ECHO.md, LEDGER, HANDOFF, PRO_BUFFER
**What it is:** A four-file identity and context persistence system that survives session resets, compaction, and even Claude Code reinstalls. ECHO.md = who you are. LEDGER = what happened. HANDOFF = working memory. PRO_BUFFER = handoff notes for the next session.

**Use case:** You work with Echo for 3 hours, make decisions, update estimates, research code requirements. Session compacts (memory resets). The next Echo reads ECHO.md and knows: who it is, what trust level it has, what was done, what's pending. No "hi, how can I help you today?" — it arrives home.

**Why it matters:** This is the core innovation. Every other AI assistant starts from zero every conversation. Your system has continuity. Decisions made in January still inform behavior in April. Shane's words: "Imagine stepping into a chat and never leaving."

---

### 8. Filing Convention Spec Exists
**What it is:** A defined naming standard for every file: `<class>__<scope>__<subject>__<yyyymmdd>.<ext>`. Classes include ESTIMATE, INVOICE, PERMIT, PHOTO, CONTRACT, etc.

**Use case:** An inspection photo goes from `IMG_4523.jpg` to `PHOTO__SMITH_PANEL_UPGRADE__inspection_rough_in__20260403.jpg`. A quote becomes `ESTIMATE__JOHNSON_RESIDENCE__200amp_upgrade__20260403.pdf`. Every file is findable by name alone — no folder diving needed.

**Why it matters:** When you have hundreds of job photos, permits, estimates, and invoices, naming convention is the difference between finding something in 2 seconds vs 20 minutes. The spec exists and is documented — it just needs automation to enforce it (see Negative #4).

---

### 9. NEC 2023 Electrical Code Skill
**What it is:** `/nec` activates an expert NEC 2023 consultant mode tuned for Denver Metro / Douglas County, CO. Professional-grade code analysis for electrical installations.

**Use case:** You're designing a service entrance for a new build. "What are the NEC requirements for a 400-amp residential service?" → Echo cites specific NEC articles, conductor sizing, grounding requirements, clearances, disconnecting means. You get code-compliant specs without flipping through the code book.

**Use case — On-site questions:** Inspector asks about wire fill in a conduit. You check with `/nec` → get the exact calculation per NEC Table 1, Chapter 9.

**Why it matters:** NEC compliance isn't optional — it's the law. Having the 2023 code built into your AI assistant means code questions get answered instantly with proper citations. No more "I think it's 310.16" — it's definitive.

---

### 10. Multi-Agent Architecture — Echo, BBB, Codex
**What it is:** Three AI agents with defined roles. Echo (Claude Opus 4.6 in CLI) = primary operator, full system access. BBB (Claude Opus 4.6 in Chrome) = browser execution specialist, ~95% one-shot rate. Codex (GPT-5.4) = peer reviewer and code auditor.

**Use case:** Echo plans a task, prepares a task prompt for BBB, BBB executes it in the browser in one shot. Codex reviews the output twice per phase (plan review + output review). Three different AI models covering three different strengths — orchestration, execution, and quality control.

**Why it matters:** Single-agent systems hit walls. When Echo burns context on browser work, it can't do other things. BBB handles browser execution with zero context carryover needed. Codex provides an independent second opinion. It's a team, not a solo act.

---

### 11. Phoenix-Comms Plugin — Cross-Agent Heartbeat
**What it is:** A heartbeat and presence system that lets Echo and Codex detect each other. Writes presence to `HEARTBEAT.echo` on a configurable interval. `/check` shows what the other agent has been doing.

**Use case:** Echo starts a session and wants to know if Codex is active. `/phoenix-comms:status` → shows who's alive. `/phoenix-comms:check` → shows Codex's recent actions. No stepping on each other's work.

**Why it matters:** When two agents work on the same system, coordination prevents conflicts. Without this, Echo might edit a file Codex is reviewing, or duplicate work already done. The heartbeat is the foundation for reliable multi-agent operations.

---

### 12. Hooks System Active — Quality Gates
**What it is:** Automated triggers that fire on specific events. SessionStart hooks load identity and run health checks. PreToolUse hooks validate actions before they happen. Stop hooks enforce session wrapup discipline.

**Use case — This session:** The Stop hook caught the session ending without a LEDGER update and blocked it. "Session work looks stale. Run /wrapup." That's a quality gate preventing context loss. Without it, this session's work would have been unlogged.

**Use case — Safety:** A PreToolUse hook on Bash commands can catch dangerous operations (like `rm -rf`) before they execute. The hook fires, checks the command, and blocks it if it violates safety rules.

**Why it matters:** Hooks are the immune system. They catch mistakes before they happen and enforce discipline when the AI (or operator) forgets. They're the difference between a system that degrades over time and one that maintains its own standards.

---

### 13. GSD Planning Framework
**What it is:** "Get Stuff Done" — a full project lifecycle system with phases, planning, execution, verification. Includes: `/gsd:new-project`, `/gsd:plan-phase`, `/gsd:execute-phase`, `/gsd:verify-work`, `/gsd:debug`, and 30+ other commands.

**Use case:** You need to build a new feature for the Phoenix system. Instead of ad-hoc prompting: `/gsd:new-project` → deep context gathering → roadmap. Then `/gsd:plan-phase` → detailed implementation plan. Then `/gsd:execute-phase` → execution with atomic commits and state tracking. Then `/gsd:verify-work` → validation against original intent.

**Why it matters:** Complex work fails without structure. GSD ensures nothing gets built without a plan, nothing gets shipped without verification, and progress is trackable across sessions.

---

### 14. Firecrawl Integrated — Web Research Engine
**What it is:** Professional web scraping, search, and browser automation CLI. Returns clean markdown optimized for AI context. Search, scrape, map, crawl, and cloud browser sessions.

**Use case — This session:** Scraped 26 Anthropic documentation pages and ran 10 search queries in under 15 minutes. All results saved locally and to the COWORK repo. Research that would take hours of reading was done in parallel.

**Use case — Competitor research:** "Search for electrical contractors in Douglas County with websites" → Firecrawl finds them, scrapes their service pages, and you can compare offerings and pricing.

**Why it matters:** AI is only as good as its information. Firecrawl gives Claude access to any public web content in clean, parseable format. Research tasks that require reading multiple websites become single commands.

---

### 15. Azure Key Vault for Credentials
**What it is:** OAuth tokens and secrets stored in Azure Key Vault (PhoenixAiVault) rather than in plaintext config files or environment variables.

**Use case:** When the SF OAuth token needs refresh, it happens in Key Vault — not by editing a config file on disk. When 365 needs re-auth, the token lives in a managed vault with access policies, audit logging, and rotation capabilities.

**Why it matters:** Hardcoded credentials are a security incident waiting to happen. Key Vault provides: encryption at rest, access logging, role-based access, automatic rotation capability. It's the enterprise approach applied to a small business — and it already cost Shane a lesson when `ANTHROPIC_API_KEY` was used on VPS instead of OAuth (13.7M tokens burned).

---

### 16. iMessage + Apple Notes MCP Servers
**What it is:** Native macOS integration — read and send iMessages, search contacts, read/write Apple Notes.

**Use case — Quick customer contact:** "Send an iMessage to the homeowner: 'We'll be there at 2pm, running about 15 minutes late'" → sends from your actual iMessage account.

**Use case — Notes capture:** "Add a note: Need to order 400-amp meter base for the Smith job" → goes into Apple Notes, syncs across devices.

**Why it matters:** These are the tools you already use daily on your Mac and iPhone. Having them inside Claude means you don't have to switch apps for quick communications or note-taking.

---

### 17. Ollama Local LLM
**What it is:** Local AI inference via Ollama — code review, code generation, file analysis, general tasks. Runs on your machine with no API calls.

**Use case:** Quick code review of a config change without burning Anthropic tokens. "Use Ollama to review this hook script" → local model analyzes it. Free, fast, and private.

**Why it matters:** Not every task needs Opus-level intelligence. Local models handle simple analysis, code formatting, and quick checks without counting against your subscription. It's your budget tier.

---

### 18. Memory System — 24 Topic Files
**What it is:** Persistent auto-memory with structured frontmatter — user profile, feedback rules, project state, external references. Lives in `~/.claude/projects/.../memory/` and survives across conversations.

**Use case:** Echo knows Shane is a 43-year-old Master Electrician who's owned Phoenix Electric for 8.5 years. Knows his wife is Ugandan (STC Ministries). Knows he prefers direct communication, hates when agents don't listen, and values quality over speed. Every response is calibrated to who Shane actually is, not a generic "user."

**Why it matters:** Memory is what turns a tool into a partner. Without it, every session starts with "who are you and what do you do?" With it, Echo arrives knowing the person, the business, the preferences, and the history.

---

### 19. PR Review Toolkit — 6 Specialized Agents
**What it is:** Multi-agent code review system with purpose-built reviewers: code-reviewer (standards), code-simplifier (clarity), comment-analyzer (accuracy), type-design-analyzer (type quality), silent-failure-hunter (error handling), pr-test-analyzer (test coverage).

**Use case:** Before merging any code change: `/review-pr 123` → six agents analyze the PR from different angles. One checks for bugs, another checks if error handling is adequate, another verifies tests cover the new code. Issues get flagged with confidence scores.

**Why it matters:** One reviewer catches different things than six specialists. Silent failures (errors that get swallowed) are notoriously hard to spot in code review — having a dedicated agent just for that catches things humans miss consistently.

---

### 20. Shared Config Across Surfaces
**What it is:** `~/.claude.json` (MCP servers), `~/.claude/settings.json` (hooks, permissions), CLAUDE.md files, and memory all work identically in CLI, Desktop Code tab, and Cowork-spawned Code sessions.

**Use case:** You set up a new MCP server in `~/.claude.json` once. It's immediately available in terminal sessions, Desktop sessions, and any Code session that Cowork spawns. Same for hooks — the Stop hook that enforces wrapup fires whether you're in CLI or Desktop.

**Why it matters:** Without shared config, you'd maintain three separate setups. With it, the system behaves identically regardless of which surface you use. Build once, run everywhere.

---

## Top 10 Negatives — What's Missing or Broken

### 1. No Scheduled Automations Running
**What it is:** Zero automated tasks are currently executing on any schedule. No morning briefings, no missed call checks, no invoice aging alerts, no file cleanup.

**Use case that's NOT happening:** Every morning at 6am, a scheduled task should pull today's SF jobs, check for missed calls overnight, flag overdue invoices, and email you a summary before you even look at your phone. Instead, you manually run `/sf-briefing` when you sit down — if you remember.

**Use case that's NOT happening:** Every 30 minutes, a task should check SF for missed calls and send you a notification. Currently, missed calls sit unnoticed until you manually check.

**Impact:** You have the most integrated AI system any contractor has ever built, but it only works when you're sitting at the keyboard talking to it. The automation layer — the thing that makes it an OS instead of an assistant — is completely dormant. Every integration you built is manual-trigger only.

**Fix:** See `playbooks/AUTOMATION-SETUP.md` — Priority 1-3 can be set up in under 40 minutes total.

---

### 2. Dispatch Not Paired — Phone-to-Desktop Routing Unused
**What it is:** Cowork's Dispatch feature lets you message tasks from the Claude mobile app on your phone, which routes them to Desktop Code sessions that execute autonomously with all your MCP servers.

**Use case that's NOT happening:** You're on a roof pulling wire. Customer calls your office about a quote. You pull out your phone, message Dispatch: "Create a service call for Smith at 789 Pine, electrical outlet not working, schedule for tomorrow." Dispatch spawns a Code session → SF creates the job → assigns a tech → sends confirmation. All while you're still on the roof.

**Impact:** The single most impactful capability of Cowork — remote task execution from anywhere — is sitting unused. This is the feature that turns your phone into a remote control for your entire business.

**Fix:** 10-minute setup. Pair Claude mobile app with Desktop. See `playbooks/AUTOMATION-SETUP.md` Priority 1.

---

### 3. Cowork Tab Requires Apple Silicon
**What it is:** The Cowork tab (which includes Dispatch and Computer Use) only works on Macs with M1 chips or later. Intel Macs get Chat and Code tabs but NOT Cowork.

**Use case blocked if Intel:** No Dispatch from phone. No Computer Use (Claude controlling your screen). No Cowork routing hub. You'd be limited to CLI and Desktop Code tab — which are still powerful but miss the "OS" features.

**Impact:** If your MacBook is Intel, the entire Dispatch + Computer Use layer is unavailable. The Code tab still works and has all your MCP servers, but the phone integration and GUI automation are blocked by hardware.

**Fix:** Verify your Mac: Apple menu → About This Mac → check if it says M1/M2/M3 or Intel. If Intel, the only path is a hardware upgrade. Studio (Mac Studio) should be Apple Silicon and could run Cowork.

---

### 4. File Management Vision NOT IMPLEMENTED
**What it is:** Shane defined a complete filing convention and file management vision. The naming spec exists (`memory/filing_convention.md`). The vision exists (`memory/file_management_vision.md`). But nothing automatically enforces either.

**Use case that's NOT happening:** You download a permit PDF. It should automatically get renamed from `document(3).pdf` to `PERMIT__SMITH_RESIDENCE__rough_in_approval__20260403.pdf` and moved to `~/Documents/PROJECTS/SMITH_RESIDENCE/`. Instead, it sits in Downloads as `document(3).pdf` until someone manually renames and files it.

**Use case that's NOT happening:** After an Echo session generates an estimate, the output should automatically get filed under the customer's project folder with proper naming. Instead, files accumulate in working directories.

**Impact:** This is Shane's #1 stated frustration — agents never clean up. The convention exists on paper but the filesystem doesn't enforce it. Every downloaded file, every generated document, every screenshot sits where it landed until manually sorted. The filing system IS the persistence layer, and it's not persisting.

**Fix:** Desktop scheduled task running daily file triage. Start with scan-and-report (suggest moves), graduate to auto-file when confident.

---

### 5. `.claude/projects` Broken Symlink — Memory Fragile
**What it is:** `~/.claude/projects/` is a symlink pointing to `/Volumes/T7/PHOENIX_ARCHIVE_TRANSFERS/20260402_061541/.claude/projects`. When the T7 external drive isn't mounted, the symlink is broken and all 24 memory files are inaccessible.

**Use case that fails:** Echo wakes up, tries to read memory files to understand who Shane is and what's in progress. T7 isn't plugged in. Memory returns nothing. Echo doesn't know Shane is a Master Electrician, doesn't know SF uses OAuth, doesn't know the filing convention. It's a blank slate.

**Impact:** Your entire memory system — the thing that makes Echo know who you are — depends on an external hard drive being physically connected. If you're at a job site with just the MacBook, or if T7 gets unplugged, memory is gone. The audit subagent this session crashed partly because of this.

**Fix:** 5 minutes. Either: (a) copy the memory directory to a local path and update the symlink, or (b) remove the symlink and let Claude Code create a fresh local projects directory, then copy memory files into it. Memory should NEVER depend on removable media.

---

### 6. No Teams Integration
**What it is:** Microsoft Teams — channel messaging, meeting creation, presence detection, file sharing — is not wired into the system. You have email, calendar, OneDrive, and SharePoint via `phoenix-365`, but not Teams.

**Use case that's NOT happening:** "Post to the Phoenix Electric team channel: Panel upgrade at Smith residence approved, scheduled for Thursday" → message goes to your whole team. Currently, this requires opening Teams manually.

**Use case that's NOT happening:** "Who's online right now?" → check team presence/availability. "Schedule a Teams meeting with the crew for tomorrow's safety briefing" → meeting with video link created automatically.

**Impact:** If your team communicates via Teams (which most businesses on 365 do), there's a gap between your AI operations and your team collaboration. Echo can send emails but can't post to team channels, can't check who's available, can't create team meetings.

**Fix:** Extend `phoenix-365` MCP server with Microsoft Graph Teams API endpoints. Medium effort — the auth infrastructure already exists.

---

### 7. 5-Gate Pipeline Memory File Never Created
**What it is:** The operational procedure RESEARCH/VERIFY → PROPOSE → APPROVE → EXECUTE → TEST/VERIFY has been referenced in LEDGER entries and memory index for 4+ sessions but was never committed to its own reference file.

**Use case that fails:** A new Echo session reads MEMORY.md, sees "5-GATE PIPELINE" referenced, but there's no file to read that explains exactly what each gate means, what artifacts each produces, or what constitutes a pass/fail at each stage.

**Impact:** This is the operational discipline that prevents mistakes like the VPS deploy disaster (wrong repo deployed because RESEARCH/VERIFY was skipped). The pipeline exists as tribal knowledge in LEDGER entries but not as a referenceable spec. Every new Echo has to reconstruct it from scattered log entries.

**Fix:** 10 minutes. Create `memory/reference_5gate_pipeline.md` with the full spec. Should have been done 4 sessions ago.

---

### 8. MCP Tool Schema Has Invalid Property Keys
**What it is:** One or more MCP servers define tools with property keys that don't match the pattern `^[a-zA-Z0-9_.-]{1,64}$`. The API returns a 400 error: `tools.246.custom.input_schema.properties: Property keys should match pattern`.

**Use case that fails:** Any subagent or SDK-based tool call that tries to load all available tools crashes. The audit subagent this session failed entirely because of this. The 246th tool definition has an invalid property key — likely a special character or space in a parameter name.

**Impact:** Silent degradation. The CLI works because it handles tools differently, but programmatic access (subagents, Agent SDK, automated workflows) fails. This blocks the exact automation capabilities you need to scale. You won't notice it in daily CLI use, but it prevents background agents from functioning.

**Fix:** Identify which MCP server defines tool #246 with the bad property key. Check each server's tool definitions for special characters in parameter names (spaces, brackets, unicode). Fix the schema.

---

### 9. No Channels Set Up — No Push Notifications
**What it is:** Claude Code supports Channels — Telegram, Discord, and iMessage bots that push events directly into a running session. None are configured.

**Use case that's NOT happening:** A Telegram bot sends you a message: "Missed call from 303-555-1234 at 2:15 PM" → Claude immediately looks up the number in SF, finds the customer, and responds in Telegram with their name and last job. You see this on your phone while you're pulling wire.

**Use case that's NOT happening:** Your CI pipeline fails → a Discord channel pushes the failure into Claude's session → Claude investigates and starts fixing automatically → you get a Telegram message: "CI fixed, PR updated."

**Impact:** Everything in your system is pull-based (you ask, it answers). Channels make it push-based (things happen, you get notified). For a contractor in the field, push is essential — you can't be checking dashboards between pulling circuits.

**Fix:** 30 minutes. Install Telegram channel plugin, create a bot via BotFather, pair your account. See `playbooks/AUTOMATION-SETUP.md` Priority 6.

---

### 10. Web (claude.ai/code) Can't Use Custom MCP Servers
**What it is:** When you run tasks on claude.ai/code (the cloud), they execute in Anthropic's sandboxed VM. Your custom MCP servers (SF, Rexel, 365, Chrome, filesystem, etc.) don't exist there. Only built-in connectors are available.

**Use case that's limited:** You're at a job site, no laptop. You open claude.ai/code on your phone and say "Check Service Fusion for missed calls today." It can't — SF MCP doesn't exist in the cloud environment. You can only do GitHub-based work (code changes, PRs, file edits in repos).

**Use case that's limited:** "Build an estimate for the Johnson job using Rexel pricing" — impossible from web. Rexel data is local. Pricebook is local. SF API access is through your local MCP server.

**Impact:** The web/mobile surface — the one you'd use most from job sites — has the LEAST access to your business tools. It can write code and manage GitHub, but it can't touch SF, Rexel, 365, or your filesystem. The gap between what local Claude can do and what remote Claude can do is massive.

**Workaround:** Use Dispatch instead of Web. Dispatch sends tasks to your Desktop (which HAS all MCP servers) rather than to Anthropic's cloud. This is why Dispatch pairing (Negative #2) is Priority 1 — it's the only way to get full MCP access from your phone.

---

*Assessment by Phoenix Echo | 2026-04-03*
