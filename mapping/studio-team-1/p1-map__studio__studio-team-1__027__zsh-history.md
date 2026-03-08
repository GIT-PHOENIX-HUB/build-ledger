# Mapping Report: .zsh_history

## 1. Header

| Field | Value |
|---|---|
| **Team ID** | STUDIO TEAM 1 |
| **Surface** | Studio (ShanesMacStudio) |
| **Assigned Root Index** | 027 |
| **Main Directory Path** | `/Users/shanewarehime/.zsh_history` |
| **Total Size** | 20K (20,164 bytes) |
| **Item Count** | 1 |
| **Created Date** | 2026-03-08 15:58:30 |
| **Last Modified Date** | 2026-03-08 15:58:30 |
| **Moved or Unavailable** | No |
| **Type Designation** | Single file |

## 2. File Tree

```
-rw-------  1 shanewarehime  staff  20164 Mar  8 15:58 /Users/shanewarehime/.zsh_history
```

Single file. Permissions `600` (owner read/write only -- no group or other access). Owned by `shanewarehime:staff`.

## 3. Contextual Summary

`.zsh_history` is the default shell command history file for Zsh (Z Shell), which is the default shell on macOS. Every command typed in an interactive terminal session is appended to this file. It enables arrow-key recall of previous commands and reverse-search (`Ctrl-R`) functionality.

**Role in the system:** This file is a passive artifact of interactive shell usage on the Studio. It is not part of any application, codebase, or service. It is maintained automatically by Zsh and grows with each terminal session. It is security-sensitive because it may contain inline credentials, API keys, passwords, file paths, server addresses, and operational patterns.

## 4. Data Summary

| Metric | Value |
|---|---|
| **Line Count** | 595 lines |
| **File Size** | 20,164 bytes (20K) |
| **Birth Date** | 2026-03-08 (today) |
| **Last Modified** | 2026-03-08 15:58:30 |
| **Last Accessed** | 2026-03-08 17:10:19 |
| **Age** | Less than 1 day (created today) |

**Note:** The birth date of today (2026-03-08) suggests either: (a) the Studio was recently set up or reimaged, (b) the history file was recently rotated/truncated, or (c) macOS filesystem metadata was reset. Flagged as open question.

## 5. File Detail

| Property | Value |
|---|---|
| **Encoding** | UTF-8 text |
| **Detected Type** | "exported SGML document text, Unicode text, UTF-8 text" |
| **Longest Line** | 476 characters |
| **Line Count** | 595 |
| **Avg Bytes/Line** | ~33.9 bytes |
| **Permissions** | `0600` (owner-only read/write) -- correct and expected |
| **Actively Growing** | Yes -- last modified today, consistent with active terminal use |
| **Zsh Extended History** | Likely enabled (the "SGML document" detection by `file` is a common false-positive triggered by Zsh's extended history format, which prefixes lines with `: <timestamp>:0;`) |

**Content status:** NOT read. NOT exposed. Metadata only.

## 6. Future Recommendations

**Canonical Name Suggestion:**

```
data__shell__zsh-history__undated.txt
```

**Additional recommendations:**
- **Do not relocate or rename** in practice. Zsh expects this file at `~/.zsh_history` (or the path set by `$HISTFILE`). The canonical name is for the index/catalog only.
- **Consider backup rotation:** At 20K/595 lines for a fresh file, if the Studio is actively used, this file could grow to hundreds of MB over months.
- **Consider `HIST_IGNORE_SPACE`:** If not already set, the Zsh option `setopt HIST_IGNORE_SPACE` prevents commands prefixed with a space from being recorded -- useful for commands containing secrets.

## 7. Hazard/Skip Log

| Hazard | Severity | Notes |
|---|---|---|
| **Contains sensitive command history** | HIGH | May include inline API keys, tokens, passwords, file paths, server IPs, SSH commands, and operational patterns. Must NEVER be read, displayed, or committed to any repository. |
| **Security permissions correct** | OK | File is `0600` (owner-only). This is the correct default. Do not change. |
| **Do not include in any archive, export, or sync** | HIGH | This file should be excluded from any backup-to-repo, rsync-to-VPS, or similar operation unless explicitly encrypted. |

## 8. Open Questions

1. **Why is the birth date today (2026-03-08)?** A machine in active use since at least January 2026 would be expected to have an older `.zsh_history`. Was the file recently rotated, was the system reimaged, or is APFS reporting a copy/move date rather than true creation?
2. **Is `HISTFILE` explicitly set in `.zshrc`?** If so, there may be a second history file at a non-default path.
3. **Are `HISTSIZE` and `SAVEHIST` configured?** These control how large the file can grow.
4. **Is history shared across terminal sessions?** (`setopt SHARE_HISTORY` or `INC_APPEND_HISTORY`) -- affects whether this single file captures all sessions.

## 9. Confidence Notes

| Aspect | Confidence | Rationale |
|---|---|---|
| **File exists and is accessible** | HIGH | Confirmed via `ls`, `stat`, `du`, `wc`, `file` |
| **Metadata accuracy** | HIGH | All values read directly from filesystem |
| **Content characterization** | HIGH | `file` command confirms UTF-8 text with extended history format signatures |
| **Security classification** | HIGH | Shell history is universally recognized as sensitive |
| **Birth date interpretation** | MEDIUM | The "created today" date is unusual and may have a benign explanation |

## 10. Adversarial Review

**Challenge 1: Is this actually the active history file?**
The `HISTFILE` environment variable could point elsewhere. The fact that it was modified today and accessed after modification suggests it IS active, but this cannot be confirmed without checking the Zsh configuration. **Verdict:** Likely active, but not 100% proven.

**Challenge 2: Is the birth date trustworthy?**
APFS birth times can be reset by file operations (copy, move, restore from backup). A birth date of today does not necessarily mean the machine is new. The 595-line count is modest but plausible for a single day of heavy CLI use (especially with Claude Code and automated tooling).

**Challenge 3: Could there be multiple history files?**
Zsh supports session-specific history directories (e.g., `zsh_sessions/` on macOS). Apple's default Zsh configuration on macOS may write per-session history to `~/.zsh_sessions/`. This mapping covers only the primary file.

**Challenge 4: Is 20K really the full picture?**
If `SAVEHIST` is set low (e.g., 500-1000), the file may be actively truncated on each shell exit. The 595-line count is close to common defaults. This could mean history is being rotated automatically.

---

*Mapping complete. Index 027 ready for integration.*
