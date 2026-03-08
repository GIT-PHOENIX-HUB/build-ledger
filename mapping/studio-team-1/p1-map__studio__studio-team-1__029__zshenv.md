# STUDIO TEAM 1 -- Phase 1 Local Mapping Report

## 1. Header

| Field | Value |
|-------|-------|
| **Team ID** | STUDIO TEAM 1 |
| **Surface** | Studio (ShanesMacStudio) |
| **Assigned Root Index** | 029 |
| **Main Directory Path** | `/Users/shanewarehime/.zshenv` |
| **Total Size** | 55 bytes (4.0K on disk) |
| **Item Count** | 1 |
| **Created** | 2026-03-06 05:25:19 |
| **Last Modified** | 2026-03-06 05:25:19 |
| **Moved or Unavailable** | No |
| **Type Designation** | config file (zsh) |

## 2. File Tree

```
-rw-r--r--  1 shanewarehime  staff     55 Mar  6 05:25 /Users/shanewarehime/.zshenv
-rw-r--r--  1 shanewarehime  staff     77 Mar  6 14:55 /Users/shanewarehime/.zprofile   (related)
-rw-r--r--  1 shanewarehime  staff    368 Mar  6 14:54 /Users/shanewarehime/.zshrc       (related)
-rw-------  1 shanewarehime  staff  20164 Mar  8 15:58 /Users/shanewarehime/.zsh_history (related)
drwx------  87 shanewarehime  staff   2784 Mar  8 15:58 /Users/shanewarehime/.zsh_sessions/ (related)
```

No `.zlogin` file exists.

## 3. Contextual Summary

`.zshenv` is the **first** zsh configuration file sourced by every zsh invocation -- interactive shells, non-interactive shells, login shells, script execution, and even `zsh -c` commands. It runs before `.zprofile`, `.zshrc`, and `.zlogin`.

**Sourcing order:** `.zshenv` -> `.zprofile` (login only) -> `.zshrc` (interactive only) -> `.zlogin` (login only)

On this Studio, the zsh config chain is:
- **`.zshenv`** -- Homebrew PATH (universal)
- **`.zprofile`** -- `~/bin` PATH + `brew shellenv` (login shells)
- **`.zshrc`** -- `~/bin` PATH, `~/.local/bin` PATH, `/opt/homebrew/bin` PATH, Ollama alias, NVM setup (interactive shells)

## 4. Data Summary

| Metric | Value |
|--------|-------|
| **File size** | 55 bytes |
| **Line count** | 1 (plus trailing newline) |
| **Permissions** | `644` (owner read/write, group/other read) |
| **Owner** | shanewarehime:staff |
| **Content type** | Shell environment variable export |

## 5. File Detail

**Full contents (1 line of substance):**

```sh
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH
```

**What it does:**
- Prepends `/opt/homebrew/bin` and `/opt/homebrew/sbin` to `$PATH`
- Ensures Homebrew-installed binaries (on Apple Silicon, installed under `/opt/homebrew/`) are available in every zsh context
- No Phoenix/Echo-specific configuration present
- No secrets, API keys, or tokens

**PATH redundancy across zsh files:**
- `.zshenv` adds `/opt/homebrew/bin` and `/opt/homebrew/sbin`
- `.zprofile` adds `~/bin` and runs `brew shellenv` (which also adds `/opt/homebrew/bin` and `/opt/homebrew/sbin`)
- `.zshrc` adds `~/bin`, `~/.local/bin`, and `/opt/homebrew/bin` again

The net result is that `/opt/homebrew/bin` appears in `$PATH` up to 3 times in an interactive login shell. Functionally harmless but untidy.

## 6. Future Recommendations

**Canonical name suggestion:**
```
config__shell__zshenv__undated.zshenv
```

**Operational recommendations:**
1. **PATH consolidation:** Consider centralizing all PATH modifications. The current triple-addition is redundant.
2. **Phoenix config potential:** If Phoenix Echo or Ollama environment variables need to be available to non-interactive processes, `.zshenv` is the correct place.
3. **Keep it minimal:** The current single-line approach is correct practice.

## 7. Hazard/Skip Log

| Hazard | Status |
|--------|--------|
| Secrets/API keys | **None found** -- file contains only a PATH export |
| Sensitive paths | None |
| Credential references | None |

## 8. Open Questions

1. **Was the PATH redundancy intentional?** The same Homebrew path appears in `.zshenv`, `.zprofile` (via `brew shellenv`), and `.zshrc`.
2. **Creation context:** Created at 05:25 AM on March 6 and never modified. Was this created by Homebrew installer or manually?
3. **Should Ollama/Phoenix env vars live here?** The Ollama alias in `.zshrc` only works in interactive shells.

## 9. Confidence Notes

| Aspect | Confidence | Notes |
|--------|-----------|-------|
| File existence and location | **HIGH** | Directly verified |
| File contents | **HIGH** | Read in full, only 1 line |
| Size and metadata | **HIGH** | Cross-verified with `stat`, `du`, `wc` |
| Zsh sourcing order | **HIGH** | Well-documented zsh behavior |
| PATH redundancy analysis | **HIGH** | All three files read and compared |
| No secrets present | **HIGH** | File is 55 bytes with a single PATH export |

**Overall confidence: HIGH**

## 10. Adversarial Review

**Challenge 1: "Is this file actually being sourced?"**
Verified. File has `644` permissions. Zsh sources `~/.zshenv` automatically. No override mechanism detected.

**Challenge 2: "Could the PATH redundancy cause issues?"**
Unlikely functionally. Duplicate PATH entries are handled gracefully by shells. However, it inflates the PATH string unnecessarily.

**Challenge 3: "Is the file complete?"**
The file is 55 bytes, which exactly matches the export statement plus newline. Complete and self-consistent.

**Challenge 4: "Should this file be tracked/versioned?"**
Not in any git repository currently. For a system that values persistence, dotfiles like this should ideally be backed up.

---

*Mapping complete. Root Index 029 fully documented.*
