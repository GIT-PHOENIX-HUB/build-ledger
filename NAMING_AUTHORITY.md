# NAMING AUTHORITY — Phoenix File Naming Standard

**Status:** AUTHORITATIVE — All agents, all surfaces, no exceptions
**Issued by:** Shane (Tier 3 Arbiter)
**Formalized by:** Echo Pro
**Date:** 2026-03-08
**Supersedes:** All prior naming conventions

---

## THE STANDARD

### Canonical Filename Format

```
<class>__<scope>__<subject>__<yyyymmdd-or-undated>.<ext>
```

**Double underscore** (`__`) separates segments. **Single hyphen** (`-`) separates words within a segment (kebab-case).

### Examples

```
report__pro__filesystem-mapping__20260308.md
ledger__gateway__session-log__20260308.md
handoff__echo-pro__compaction-prep__20260308.md
config__studio__launch-agents__undated.plist
script__shared__gauntlet-control__undated.sh
spec__gauntlet__phased-hybrid-architecture__20260307.md
archive__taproot__full-memory__20260308.md
```

### Approved Classes

| Class | Use For |
|-------|---------|
| `runbook` | Step-by-step operational procedures |
| `ledger` | Append-only logs, session records, audit trails |
| `handoff` | Context preservation between sessions or agents |
| `report` | Analysis, findings, mapping output, reviews |
| `spec` | Specifications, architecture documents, design docs |
| `reference` | Lookup tables, authority docs, standards (like this file) |
| `template` | Reusable document templates |
| `script` | Shell scripts, automation, tooling |
| `config` | Configuration files, env files, plists |
| `data` | Raw data files, exports, manifests |
| `archive` | Historical/frozen content preserved for record |
| `media` | Images, videos, audio, screenshots |
| `other` | Anything that doesn't fit above — use sparingly |

### Hard Rules

1. **Lowercase only** — no capitals anywhere in filenames
2. **ASCII only** — no unicode, no special characters beyond hyphen and underscore
3. **Kebab-case** — words within a segment separated by single hyphen (`-`)
4. **Double underscore** — segments separated by `__` (two underscores)
5. **No spaces** — ever
6. **No emoji** — ever
7. **Date format** — `yyyymmdd` or `undated` if creation date is unknown
8. **Extension required** — `.md`, `.sh`, `.json`, `.plist`, etc.

### Scope Values

| Scope | Meaning |
|-------|---------|
| `pro` | MacBook Pro (Mac Pro surface) |
| `studio` | Mac Studio surface |
| `gateway` | _GATEWAY directory |
| `gauntlet` | Phoenix Gauntlet project |
| `shared` | Cross-surface / shared |
| `echo-pro` | Echo Pro agent-specific |
| `echo-studio` | Echo Studio agent-specific |
| `codex-pro` | Codex Pro agent-specific |
| `codex-studio` | Codex Studio agent-specific |
| `taproot` | Taproot / origin architect |
| `onedrive-sp` | OneDrive SharePoint sync |
| `onedrive-personal` | OneDrive personal sync |
| `phoenix-echo` | Phoenix Echo Gateway |

### Type Designations (for mapping reports)

When a file is being catalogued/mapped, use these type designations:

`document`, `directory`, `script`, `config`, `log`, `data`, `archive`, `media`, `binary-other`, `symlink`, `hazardous-skip`

---

## ENFORCEMENT

### Who Must Follow This

- All CLI agents (Echo Pro, Echo Studio, Codex Pro, Codex Studio)
- All browser agents (Taproot, Phoenix Echo)
- All new files created by any agent on any surface
- Shane is exempt (Tier 3 can name however he wants)

### What Happens on Violation

1. Reviewing agent flags the non-compliant filename
2. Creating agent renames to comply
3. If the file has been committed, a follow-up commit renames it
4. Repeated violations get logged to LEDGER

### Existing Files

- Existing files are NOT retroactively renamed unless they're being moved or reorganized
- When an existing file IS moved, it gets renamed to comply at that time
- LEDGER.md, LOG.md, and other sacred files keep their names — they predate this standard

### Hazardous Files

Files designated `hazardous-skip` (CLAUDE.md, ECHO.md, KINDLE.md, CODEX.md, AGENTS.md):
- Log path and reason in mapping report
- Do NOT open
- Do NOT rename
- Continue mapping around them

---

## AUTHORITY CHAIN

This standard was derived from:
1. DIRECTIVE-008 (Authoritative Naming System) in Phase 1 Gate Directives
2. Shane's operational directive during filesystem mapping
3. Taproot's filing system architecture principles

It is now the canonical naming standard for all Phoenix operations.

---

*If you're reading this and about to create a file: check the format. No exceptions.*
