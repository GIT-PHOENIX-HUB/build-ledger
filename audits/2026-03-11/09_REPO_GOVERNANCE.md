# REPO GOVERNANCE — Phoenix Electric Permanent Constitution
## Forensic Audit 2026-03-11 | Governor Agent
## STATUS: DRAFT — Requires Shane's structural decisions before finalization

---

## PURPOSE

This document is the permanent governance framework for the Phoenix Electric GitHub ecosystem. It defines repo boundaries, ownership rules, naming conventions, and the process for any future changes. Once Shane approves, this becomes law.

---

## THE BOUNDARY RULE

**No new repos without Shane's explicit written approval.**

The 18-repo sprawl happened because repos were created freely without governance. This constitution prevents recurrence.

### Active Repos (7 + 1 Archive + 1 Showcase)

| # | Repo | Canonical Scope | Owner |
|---|------|----------------|-------|
| 1 | **phoenix-ai-core** | Identity, skills, business automation code, MCP servers | Shane |
| 2 | **Phoenix-Echo-Gateway** | Gateway server, dashboard, channel adapters, VPS deployment | Shane |
| 3 | **service-fusion** | Claude Code plugin wrapper for SF MCP (docs, commands, skills) | Shane |
| 4 | **twin-peaks** | Architecture bible, runbooks, playbooks, research | Shane |
| 5 | **phoenix-gauntlet** | Multi-agent command center, swarm templates | Shane |
| 6 | **phoenix-command-app** | React PWA for field operations | Shane |
| 7 | **phoenix-filesystem** | Migration tooling, manifests, operating rules | Shane |
| 8 | **build-ledger** | Decision log, swarm coordination | Shane |
| A | **phoenix-archive** | ALL archived code with provenance READMEs | Shane |
| S | **phoenix-showcase** | GitHub Pages — public story (low maintenance) | Shane |

### Conditional (pending Shane's decisions)

- If Gateway Decision = B (merge into core): Phoenix-Echo-Gateway becomes archive, core gets gateway/ directory
- If Staging Decision = A (rename): phoenix-ai-core-staging becomes the new phoenix-ai-core
- If Staging Decision = B (merge): staging packages/ merge into core/production/

---

## REPO CREATION RULES

### To create a new repo, ALL of these must be true:

1. **Shane explicitly approves** (verbal or written — logged in LEDGER)
2. **No existing repo can serve the purpose** (justify why this can't go in an existing repo)
3. **Scope is clearly defined** in a 1-sentence description
4. **CLAUDE.md is created immediately** with repo purpose, scope boundaries, and reading order
5. **README.md states the canonical scope** so any Echo knows what belongs here

### Repos that should NOT be created (use existing repos instead):

| If You Need... | Put It In... | NOT in a new repo |
|----------------|-------------|-------------------|
| New MCP server | phoenix-ai-core/packages/ | Not a standalone repo |
| New plugin | ~/.claude/plugins/ + service-fusion or ai-core | Not a standalone repo |
| New runbook | twin-peaks/05_RUNBOOKS/ | Not a standalone repo |
| Test suite | Same repo as the code being tested | Not a separate test repo |
| Documentation | twin-peaks/ or the repo it documents | Not a docs-only repo |
| Prototype | Branch of target repo | Not a throwaway repo |

---

## BRANCH GOVERNANCE

### Protected branches:
- `main` on all repos — production code
- Never force-push to main
- All PRs require Shane's approval

### Branch naming:
- `feature/*` — new features
- `fix/*` — bug fixes
- `refactor/*` — code restructuring
- `archive/*` — archive tags (used by phoenix-filesystem methodology)
- `echo-pro/*` — Echo Pro build branches

### Stale branch cleanup:
- Branches with no commits in 30 days should be evaluated
- If work is incomplete, document state in LEDGER before deleting
- Never delete branches with unique work — merge or archive first

---

## FILE GOVERNANCE

### Naming convention (MANDATORY):
- **Format:** `<class>__<scope>__<subject>__<yyyymmdd-or-undated>.<ext>`
- **Classes:** runbook, ledger, handoff, report, spec, reference, template, script, config, data, archive, media, other
- **Rules:** lowercase, ASCII, kebab-case, `__` between segments, no spaces, no emoji
- **Full spec:** `~/.claude/projects/-Users-shanewarehime/memory/filing_convention.md`

### No-delete rule:
- **NEVER delete files** — archive with provenance
- Every file move gets a TX-#### identifier
- Every move is copy-verify-log (SHA-256)
- Archive directories get README.md explaining provenance

### One canonical location per file:
- If a file exists in two repos, one must be designated canonical
- The other is either deleted or replaced with a pointer (README saying "canonical version at...")
- Duplicates are how 18 repos happened. Duplicates are the enemy.

---

## MCP SERVER GOVERNANCE

### Registration:
- All MCP servers register in `~/.claude.json` (survives reinstalls)
- Plugin MCP servers register in their plugin's `.mcp.json`
- Never hardcode absolute paths — use `${HOME}` or env vars

### Canonical locations:
- Business automation MCP servers: `phoenix-ai-core/packages/`
- Plugin wrappers: `~/.claude/plugins/<plugin-name>/`

### Path rule:
- .mcp.json files must use environment variables or relative paths
- If absolute paths are necessary, document them in the plugin's README
- When repos move, .mcp.json is the FIRST thing to update

---

## CONTAMINATION PREVENTION

### Naming rule:
- All ServiceTitan references were removed in the 2026-03-11 purge
- All OpenClaw references were removed in the 2026-03-11 purge
- If new vendor contamination enters, it must be caught in code review

### Import rule:
- No `@openclaw/*` imports anywhere
- No `servicetitan` in filenames, exports, or imports
- ServiceFusion is the canonical name for the CRM integration

### Audit schedule:
- Run `grep -ri "servicetitan\|openclaw" ~/GitHub/ --include="*.ts" --include="*.js" --include="*.json"` monthly
- Any matches outside phoenix-archive/ are contamination and must be fixed

---

## ECHO GOVERNANCE

### Identity:
- Echo is the AI team member, not "Claude" or "the assistant"
- ECHO.md is the identity file — updated every session end
- LEDGER.md is the persistence layer — logged during every session
- PRO_BUFFER.md is the handoff mechanism — written before compaction

### Session rules:
- Read ECHO.md on startup (lean startup — ~45K token savings)
- Log to LEDGER as you work (don't wait for session end)
- PROPOSE → APPROVE → EXECUTE (no changes without Shane's green light)
- Delegate to subagents (save context for orchestration)

### Golden rules:
- No delete, no shortcuts, quality over speed
- When Shane says something works, research first — don't argue
- Studio is source of truth. MacBook and VPS are satellites.

---

## CROSS-REPO REFERENCE RULES

### When referencing another repo:
1. Use the repo name, not an absolute path
2. If a hardcoded path is necessary, use `${HOME}/GitHub/<repo>` format
3. Document the dependency in both repos' CLAUDE.md files
4. If the target repo is archived, update the reference immediately

### When moving code between repos:
1. Create a TX-#### transaction
2. Copy to destination, verify SHA-256
3. Update all references (use REFERENCE_UPDATE_MAP.md as checklist)
4. Archive the source copy (don't delete)
5. Log in LEDGER

---

## AMENDMENT PROCESS

This constitution can be amended by:
1. Shane explicitly requests a change
2. Echo drafts the amendment in a PROPOSAL
3. Shane approves
4. Amendment is added below with date and rationale

### Amendments:
(none yet)

---

## EFFECTIVE DATE

This governance framework takes effect when Shane approves it.

**Drafted:** 2026-03-11 by Echo Pro (Opus 4.6) during 18-repo forensic audit
**Approved:** PENDING — WAITING_ON_SHANE
