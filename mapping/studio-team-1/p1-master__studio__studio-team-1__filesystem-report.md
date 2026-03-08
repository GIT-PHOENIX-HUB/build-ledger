# STUDIO TEAM 1 — Phase 1 Master Filesystem Report

> Compiled summary of all 25 mapping reports for `/Users/shanewarehime/` on ShanesMacStudio (M3 Ultra 96GB).

---

## 1. Disk Budget

**Total mapped: ~43.1 GB across 25 root items**

| Item | Index | Size | % | Category |
|------|-------|------|---|----------|
| .ollama | 017 | 38 GB | 88.2% | AI Models |
| GitHub | 039 | 2.4 GB | 5.6% | Code Repos |
| .npm | 015 | 1.3 GB | 3.0% | Cache |
| .Trash | 021 | 1.0 GB | 2.3% | Reclaimable |
| Phoenix_Dev | 043 | 390 MB | 0.9% | Archive |
| phoenixelectric.life | 047 | 353 MB | 0.8% | Cloud Sync |
| Phoenix-Echo-Gateway | 045 | 284 MB | 0.7% | Application |
| .vscode-remote-containers | 023 | 222 MB | 0.5% | Cache |
| .claude.json | 007 | 82 KB | <0.1% | Config |
| All others (16 items) | various | <1 MB each | <0.1% | Config/System |

```
[========================================] .ollama (38 GB)
[===] GitHub (2.4 GB)
[==] .npm (1.3 GB)
[=] .Trash (1.0 GB)
[.] Phoenix_Dev, phoenixelectric.life, Phoenix-Echo-Gateway, .vscode (~1.2 GB combined)
```

## 2. Complete Index

| # | Index | Item | Path | Size | Status | Hazards | Critical Flags |
|---|-------|------|------|------|--------|---------|----------------|
| 1 | 001 | .aitk | ~/.aitk | 84 KB | Dormant | 0 | Unused AI Toolkit |
| 2 | 003 | .bash_history | ~/.bash_history | 436 B | Dormant | 0 | Inactive (zsh is default) |
| 3 | 005 | .CFUserTextEncoding | ~/.CFUserTextEncoding | 7 B | System | 0 | macOS system file |
| 4 | 007 | .claude.json | ~/.claude.json | 82 KB | Active | 0 | PII in oauthAccount; unbounded growth |
| 5 | 009 | .config | ~/.config | 8 KB | Active | 0 | GitHub auth token in gh/hosts.yml |
| 6 | 011 | .DS_Store | ~/.DS_Store | 32 KB | System | 0 | Finder metadata |
| 7 | 013 | .gitconfig | ~/.gitconfig | 269 B | Active | 0 | Identity: shane7777777777777 |
| 8 | 015 | .npm | ~/.npm | 1.3 GB | Active | 0 | 977 MB cache + 313 MB MCP sandboxes |
| 9 | 017 | .ollama | ~/.ollama | 38 GB | Active | 0 | 8 models; GPT-OSS 20B NOT downloaded |
| 10 | 019 | .ssh | ~/.ssh | 36 KB | Active | CRITICAL | 3 ED25519 keypairs; mesh identity |
| 11 | 021 | .Trash | ~/.Trash | 1.0 GB | Dormant | 0 | App installers + project zips |
| 12 | 023 | .vscode-remote-containers | ~/.vscode-remote-containers | 222 MB | Dormant | 0 | x86_64 Node via Rosetta; regenerable |
| 13 | 025 | .zcompdump | ~/.zcompdump | 52 KB | System | 0 | Zsh completion cache |
| 14 | 027 | .zsh_history | ~/.zsh_history | 20 KB | Active | HIGH | May contain inline secrets |
| 15 | 029 | .zshenv | ~/.zshenv | 55 B | Active | 0 | PATH set 3x across shell files |
| 16 | 031 | Applications | ~/Applications | 6.3 MB | Active | 0 | 3 Chrome PWA shims only |
| 17 | 033 | CLAUDE.md | ~/CLAUDE.md | — | SKIP | SELF | HAZARDOUS_SKIP (identity file) |
| 18 | 035 | data | ~/data | 184 KB | Dormant | 0 | ChromaDB initialized but empty |
| 19 | 037 | Documents | ~/Documents | 428 KB | Dormant | 0 | Remarkably sparse; planning docs |
| 20 | 039 | GitHub | ~/GitHub | 2.4 GB | Active | 4 | 15 repos; 7 dirty; 1 no remote |
| 21 | 041 | Movies | ~/Movies | 12 KB | System | 0 | Apple TV scaffolding only |
| 22 | 043 | Phoenix_Dev | ~/Phoenix_Dev | 390 MB | Dormant | 5 | Archive; REPO_AUDIT 249 MB (64%) |
| 23 | 045 | Phoenix-Echo-Gateway | ~/Phoenix-Echo-Gateway | 284 MB | Active | 3 | DIVERGED 11/6; duplicate clone |
| 24 | 047 | phoenixelectric.life | ~/phoenixelectric.life | 353 MB | Active | 6 | OneDrive symlink; _GATEWAY conflict |
| 25 | 049 | Public | ~/Public | 0 B | System | 0 | Empty macOS default |

## 3. Reclaimable Space

| Item | Index | Reclaimable | How | Risk |
|------|-------|-------------|-----|------|
| .npm cache | 015 | **1.3 GB** | `npm cache clean --force` | Low — regenerates on demand |
| .Trash | 021 | **1.0 GB** | Empty Trash (review taproot zip first) | Low — review unique items first |
| .vscode-remote-containers | 023 | **222 MB** | Delete dir | Low — regenerated if Dev Containers used |
| Phoenix-Echo-Gateway (dup) | 045 | **284 MB** | Remove after reconciling with ~/GitHub/ version | Medium — must merge 11 unpushed commits first |
| REPO_AUDIT duplication | 043+047 | **~249 MB** | Compress or remove if repos on GitHub remote | Medium — verify 3-4 unique repos first |
| GitHub loose PNGs | 039 | **22 MB** | Delete duplicate phoenix-icon-4k copies | Low |
| .ollama llama3 redundancy | 017 | **~4.3 GB** | `ollama rm llama3:latest` (llama3.1 supersedes) | Low |
| **TOTAL RECLAIMABLE** | | **~7.4 GB** | | |

## 4. Critical Issues (P0)

### 4.1 Phoenix-Echo-Gateway Git Divergence (045)
- Local `main` is **11 commits ahead, 6 behind** `origin/main`
- 11 unpushed commits = Phases 3-10 feature buildout (providers, memory, tools, plugins, channels, agents, dashboard, security)
- This clone at `~/Phoenix-Echo-Gateway` is SEPARATE from `~/GitHub/Phoenix-Echo-Gateway` — both exist, both diverged
- **Action needed:** Reconcile (merge/rebase), then eliminate duplicate clone

### 4.2 OneDrive _GATEWAY Naming Conflict (047)
- Two directories: `_GATEWAY` (3 MB) and `_GATEWAY (1)` (295 MB)
- The `(1)` suffix = OneDrive sync conflict copy
- `~/Phoenix_Local/_GATEWAY` symlinks to `_GATEWAY (1)` — the larger one is the active target
- **Action needed:** Determine which is canonical, archive or remove the other

### 4.3 taproot-blitz-build Has No Remote (039)
- 25 MB local-only git repo with 26 untracked files
- **No remote configured** — if disk fails, this is unrecoverable
- **Action needed:** Push to GitHub or confirm it's expendable

### 4.4 REPO_AUDIT Duplication (043 + 047)
- `~/Phoenix_Dev/ARCHIVES/REPO_AUDIT_2025-12-30/` (249 MB) — 10 archived git repos
- Same repos exist in `~/phoenixelectric.life/.../\_AI_MEMORY/_GATEWAY (1)/REPO_AUDIT_2025-12-30/` (248 MB)
- 3-4 repos (mcp-vault, ST_Directory_Assistant, phoenix-ai-staging) are NOT in current ~/GitHub/
- **Action needed:** Verify unique repos exist on GitHub remote, then deduplicate (~500 MB)

## 5. Security Observations

| Item | Index | Concern | Severity |
|------|-------|---------|----------|
| .ssh | 019 | 3 ED25519 private keys — cryptographic identity for entire mesh | CRITICAL (correctly permissioned) |
| .zsh_history | 027 | May contain inline API keys, tokens, passwords | HIGH (correctly permissioned) |
| .config/gh | 009 | GitHub auth token in hosts.yml | HIGH (correctly permissioned) |
| .ollama | 017 | ED25519 private key for Ollama identity | MEDIUM |
| .claude.json | 007 | PII in oauthAccount (email, UUID) | LOW |
| phoenixelectric.life | 047 | 1,127 residential customer folders with names/IDs visible in dir names | LOW (business standard) |
| Phoenix_Dev | 043 | VAULT_SECRETS_REFERENCE.md in local backup | MEDIUM |
| Phoenix_Local* | — | .restic-password in plaintext | MEDIUM |

*Phoenix_Local is not in STUDIO TEAM 1 scope but was observed via 047's symlink chain.

## 6. Hazard Files Inventory

18 hazard file instances found across 7 reports (all logged, none opened):

| File | Count | Locations |
|------|-------|-----------|
| CLAUDE.md | 4 | ~/CLAUDE.md (033), PHOENIX_UNIFIED_PROD_REPO (039), phoenix-builder-space-knowledge (039), archived repos in 043 and 047 |
| AGENTS.md | 8 | phoenix-ai-core (039), workspace x3 in 045, archived repos in 043 x2, archived repos in 047 x2 |
| ECHO.md | 4 | Phoenix_Dev ARCHIVES x2 (043), OneDrive _GATEWAY x2 (047) |
| KINDLE.md | 0 | Not found |
| CODEX.md | 0 | Not found |

## 7. AI Infrastructure Profile

| Component | Status | Details |
|-----------|--------|---------|
| Ollama Models | 8 downloaded | qwen2.5:14b, deepseek-coder-v2:16b, llama3.1:8b, qwen2.5-coder:7b, llama3, mistral, codellama, nomic-embed-text |
| GPT-OSS 20B | **NOT DOWNLOADED** | Not present in .ollama — twin-peaks integration blocked |
| ChromaDB | Empty | Schema initialized, 0 collections, 0 embeddings |
| MCP Servers (cached) | 8 | pdf-reader, fetch, filesystem, context7, sequential-thinking, memory, github, playwright |
| Phoenix Echo Gateway | Present | Port 18790, 5 LLM providers, multi-channel, dual deployment (Studio + VPS) |
| _GATEWAY (AI Memory) | Active | OneDrive-synced, 295 MB, LEDGER/HANDOFF/ECHO persistence layer |

## 8. Repository Health

| Repo | Index | Branch | Status | Remote | Flags |
|------|-------|--------|--------|--------|-------|
| phoenix-ai-core | 039 | main | Clean | SSH | |
| Phoenix-ai-core-staging | 039 | feature branch | Clean | HTTPS | On feature branch, not main |
| Phoenix-Echo-Gateway | 039 | main | Dirty (10) | HTTPS | |
| Phoenix-Echo-Gateway | 045 | main | **DIVERGED** | Mixed | **11 ahead / 6 behind** |
| phoenix-echo-bot | 039 | main | Clean | SSH | |
| phoenix-builder-space-knowledge | 039 | main | Clean | HTTPS | |
| phoenix-command-app | 039 | main | Clean | HTTPS | |
| phoenix-electric-miniapp | 039 | main | Dirty (4) | HTTPS | |
| phoenix-production-test | 039 | main | Clean | HTTPS | |
| phoenix-sharepoint-theme | 039 | main | Clean | HTTPS | |
| phoenix-filesystem | 039 | main | Dirty (4) | SSH | **Same remote as -main** |
| phoenix-filesystem-main | 039 | main | Dirty (1) | SSH | **Duplicate clone** |
| phoenix-gauntlet | 039 | main | Dirty (6) | HTTPS | |
| twin-peaks | 039 | main | Clean | SSH | |
| taproot-blitz-build | 039 | main | Dirty (26) | **NONE** | **No remote — data loss risk** |
| build-ledger | 039 | main | Dirty | SSH | Active mapping work |

**Summary:** 16 total repos tracked. 8 dirty. 1 diverged. 1 no remote. 1 duplicate. Mixed auth (HTTPS/SSH).

## 9. System Profile

| Property | Value |
|----------|-------|
| Machine | ShanesMacStudio, M3 Ultra, 96 GB RAM |
| OS | macOS (Darwin) |
| Shell | zsh 5.9 (Homebrew) |
| Node.js | v22.22.0 |
| npm | 10.9.4 |
| Git identity | shane7777777777777 / shane@phoenixelectric.life |
| SSH keys | 3 ED25519 keypairs (primary, rotated, VPS-specific) |
| Cloud sync | OneDrive (phoenixelectric.life SharePoint) |
| Tailscale | Connected (100.68.34.116) |

## 10. Recommendations Summary

### Immediate (No Risk)
- [ ] Empty .Trash (~1.0 GB) after reviewing taproot-blitz-build.zip
- [ ] `npm cache clean --force` (~1.3 GB)
- [ ] Delete duplicate phoenix-icon-4k PNGs from ~/GitHub/ (~22 MB)
- [ ] `ollama rm llama3:latest` if llama3.1:8b supersedes it (~4.3 GB)

### Short-Term (Low Risk)
- [ ] Delete ~/.vscode-remote-containers if Dev Containers not in use (222 MB)
- [ ] Configure git remote for taproot-blitz-build
- [ ] Resolve phoenix-filesystem / phoenix-filesystem-main duplicate
- [ ] Standardize git auth protocol (HTTPS vs SSH) across all repos

### Requires Investigation
- [ ] Reconcile Phoenix-Echo-Gateway git divergence (11 ahead / 6 behind)
- [ ] Resolve OneDrive _GATEWAY vs _GATEWAY (1) naming conflict
- [ ] Evaluate PHOENIX_UNIFIED_PROD_REPO (879 MB, non-git) for redundancy
- [ ] Deduplicate REPO_AUDIT across Phoenix_Dev and OneDrive (~500 MB)
- [ ] Verify 3-4 unique archived repos (mcp-vault, ST_Directory_Assistant, phoenix-ai-staging) exist on GitHub

---

*Master report compiled: 2026-03-08 | Echo Studio (Studio CLI) | STUDIO TEAM 1*
*Source: 25 individual mapping reports in `build-ledger/mapping/studio-team-1/`*
