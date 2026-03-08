# STUDIO TEAM 1 — Root Index 009 Mapping Report

## 1. Header

| Field | Value |
|---|---|
| **Team ID** | STUDIO TEAM 1 |
| **Surface** | Studio (ShanesMacStudio) |
| **Assigned Root Index** | 009 |
| **Main Directory Path** | `/Users/shanewarehime/.config` |
| **Total Size** | 8.0 KB |
| **Item Count** | 2 files, 1 subdirectory |
| **Created** | 2026-02-21 09:20:59 |
| **Last Modified** | 2026-02-21 09:20:59 (dir itself); newest file: 2026-03-07 11:50:17 |
| **Moved or Unavailable** | No |
| **Type Designation** | config dir (XDG) |

## 2. File Tree

```
.config/                              (8.0 KB total)
└── gh/                               (8.0 KB)
    ├── config.yml                     (1,660 bytes, 2026-02-21, perms: 600)
    └── hosts.yml                      (107 bytes, 2026-03-07, perms: 600)
```

## 3. Contextual Summary

`~/.config` is the XDG Base Directory (`$XDG_CONFIG_HOME`) standard location for user-level application configuration on Unix-like systems. On macOS, many apps use `~/Library/` instead, so `.config` tends to be sparsely populated.

**Only one application currently uses `.config`:** **`gh` (GitHub CLI)** -- stores authentication tokens (`hosts.yml`) and CLI preferences (`config.yml`).

This is a notably minimal `.config` directory. No `nvim`, `git`, `htop`, `tmux`, `starship`, or other common XDG-conformant tool configuration is present.

## 4. Data Summary

| Subdirectory | Size | File Count | Last Modified |
|---|---|---|---|
| `gh/` | 8.0 KB | 2 | 2026-03-07 |
| **Total** | **8.0 KB** | **2** | **2026-03-07** |

## 5. File Detail

### `gh/config.yml` (1,660 bytes)
- **Purpose:** Stores CLI preferences -- default editor, git protocol, browser, aliases, prompt settings
- **Permissions:** `600` (owner read/write only)
- **Phoenix/Echo Relevance:** YES -- `gh` is used for repo management across the Phoenix ecosystem

### `gh/hosts.yml` (107 bytes)
- **Purpose:** Stores GitHub authentication tokens and host mappings
- **Permissions:** `600` (owner read/write only -- critical for credential file)
- **Phoenix/Echo Relevance:** YES -- SENSITIVE -- Contains the OAuth/PAT token that authenticates `gh` operations
- **WARNING:** This file contains authentication secrets. Must NOT be copied, committed, or included in any archive without redaction.

## 6. Future Recommendations

### Canonical Naming

| Current Path | Canonical Registry Name |
|---|---|
| `.config/gh/config.yml` | `config__studio__gh-cli-prefs__undated.yml` |
| `.config/gh/hosts.yml` | `credential__studio__gh-auth-token__undated.yml` |

### Recommendations

1. **Do NOT move or rename `.config` itself.** It is a live XDG standard path.
2. **Backup `hosts.yml` securely** -- if this token is lost, `gh auth login` must be re-run.
3. **Monitor for growth** -- As more CLI tools are installed, this directory will grow.

## 7. Hazard/Skip Log

| Hazard File | Found? |
|---|---|
| CLAUDE.md | Not found |
| ECHO.md | Not found |
| KINDLE.md | Not found |
| CODEX.md | Not found |
| AGENTS.md | Not found |

**Credential hazard:** `gh/hosts.yml` contains authentication tokens. Logged as sensitive.

## 8. Open Questions

1. **Is `gh` the only XDG-conformant CLI tool on this Studio?** The emptiness is unusual for a development workstation.
2. **Was `gh` auth recently refreshed?** `hosts.yml` was modified 2026-03-07 (yesterday).
3. **Are XDG env vars set in the shell profile?**

## 9. Confidence Notes

| Aspect | Confidence | Notes |
|---|---|---|
| Directory completeness | **HIGH** | Only 1 subdirectory, 2 files. Fully enumerated. |
| Size accuracy | **HIGH** | `du -sh` confirmed 8.0 KB total. |
| File purpose identification | **HIGH** | `gh` is well-known with documented config paths. |
| Sensitivity classification | **HIGH** | `hosts.yml` is a known credential file. |

## 10. Adversarial Review

**Challenge 1: "Is 8 KB really everything?"**
Verified. Only 2 files totaling 1,767 bytes of content. The rest is filesystem overhead.

**Challenge 2: "Could there be files I missed due to permissions?"**
No. Commands ran as the owning user. All items are visible.

**Challenge 3: "Is hosts.yml actually sensitive?"**
Yes. Confirmed by file permissions (`600`) and GitHub CLI documentation.

**Challenge 4: "Should .config be considered for cleanup?"**
No. 2-file, 8 KB directory serving an active tool. Nothing to clean up.

---

*Mapping complete. Root Index 009 -- minimal XDG config directory, 2 files, 8 KB.*
