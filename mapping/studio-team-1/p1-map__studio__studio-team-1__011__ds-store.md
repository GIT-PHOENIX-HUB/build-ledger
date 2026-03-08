# Filesystem Mapping Report — Root Index 011

## 1. Header

| Field | Value |
|---|---|
| **Team ID** | STUDIO TEAM 1 |
| **Surface** | Studio (ShanesMacStudio) |
| **Assigned Root Index** | 011 |
| **Main Directory Path** | `/Users/shanewarehime/.DS_Store` |
| **Total Size** | 28,676 bytes (32K on disk) |
| **Item Count** | 1 |
| **Created** | 2026-02-20 22:37:05 |
| **Last Modified** | 2026-03-07 20:41:22 |
| **Last Accessed** | 2026-03-08 01:54:01 |
| **Moved or Unavailable** | No |
| **Type Designation** | Single file (macOS system) |

## 2. File Tree

```
-rw-r--r--@ 1 shanewarehime  staff  28676 Mar  7 20:41 /Users/shanewarehime/.DS_Store
```

Single file. No subdirectories. Extended attributes present (`@` flag): `com.apple.FinderInfo`.

## 3. Contextual Summary

`.DS_Store` (Desktop Services Store) is a hidden binary file automatically created by macOS Finder in every directory a user browses. It stores custom view settings for the containing folder, including:

- Icon positions and arrangement preferences
- View mode (icon, list, column, gallery)
- Column widths and sort order
- Background color or image settings
- Scroll position

This specific file resides in the user home directory (`/Users/shanewarehime/`), meaning it records Finder's display preferences for the top-level home folder. Finder creates and updates this file silently whenever the user opens or modifies the view of the directory. The file is regenerated automatically if deleted, so it has no archival or operational value.

## 4. Data Summary

| Metric | Value |
|---|---|
| **Exact size** | 28,676 bytes |
| **Disk allocation** | 32K |
| **Format** | Apple Desktop Services Store (binary, proprietary) |
| **Magic bytes** | `00 00 00 01` followed by `Bud1` (Buddy allocator header, standard DS_Store signature) |
| **Extended attributes** | `com.apple.FinderInfo` |
| **Permissions** | `644` (owner read/write, group/other read-only) |

## 5. File Detail

| Property | Detail |
|---|---|
| **Format** | Proprietary Apple binary using a B-tree structure with Buddy allocator (`Bud1` magic). Not human-readable. |
| **Internal structure** | Contains records keyed by filename, each with attribute type codes (e.g., `Iloc` for icon location, `vSrn` for view style, `pict` for background image). |
| **Purpose** | Stores Finder GUI preferences for the home directory. Zero operational significance to the system, applications, or user data. |
| **Safe to exclude from repos** | **Yes, absolutely.** This file should be in every `.gitignore`. It contains no user data, is machine-specific, and is auto-regenerated. |
| **Safe to delete** | Yes. Finder will recreate it on next directory browse. The only effect is a momentary reset of folder view preferences. |

## 6. Future Recommendations

**Canonical name suggestion:**

```
config__macos__ds-store-home__undated.bin
```

**Operational recommendations:**
- This file requires no migration, backup, or preservation action.
- It should be excluded from any filesystem archive, sync, or version control operation.
- Confirm it is listed in the global gitignore (`~/.gitignore_global`) if one exists. If not, consider adding `**/.DS_Store` to a global gitignore.
- For the mapping inventory: log it as "catalogued, no action required."

## 7. Hazard/Skip Log

| Hazard | Status |
|---|---|
| Data loss risk | None. File is auto-regenerated. |
| Sensitive content | None. Contains only Finder view metadata. |
| Large file concern | No. 28KB is trivial. |
| Corruption indicators | None. Valid `Bud1` header present. |
| Skip recommendation | This file can be safely skipped in any data migration or backup workflow. |

## 8. Open Questions

1. **Global gitignore status** -- Is `**/.DS_Store` present in `~/.gitignore_global` or equivalent on this machine? If not, it should be added to prevent accidental commits across all repos.
2. **Other .DS_Store files** -- This mapping covers only the home directory instance. There will be hundreds of additional `.DS_Store` files throughout the filesystem (one per Finder-browsed directory). Should those be catalogued as a class, or is this single instance sufficient for the mapping?

## 9. Confidence Notes

| Aspect | Confidence | Notes |
|---|---|---|
| File identification | **High (100%)** | `file` command confirms Apple Desktop Services Store. `Bud1` magic bytes match the documented DS_Store format. |
| Size and metadata | **High (100%)** | Gathered directly from `stat`, `ls -la`, and `du -sh`. |
| Purpose and behavior | **High (100%)** | DS_Store is one of the most thoroughly documented macOS system artifacts. |
| Safety to exclude/delete | **High (100%)** | Industry-standard practice. No operational dependency exists. |
| Canonical name suggestion | **Medium (85%)** | The naming convention is applied faithfully, but the team may prefer a different class or scope label for auto-generated OS artifacts. |

## 10. Adversarial Review

**Challenge 1: "Could this DS_Store contain anything operationally meaningful?"**
No. The DS_Store format stores only Finder GUI state: icon positions, view modes, sort preferences, column widths, background settings, and sidebar state. It has no relationship to file content, permissions, ownership, or application configuration.

**Challenge 2: "Could deleting it cause problems?"**
No. Finder regenerates it immediately upon next directory access. The only observable effect would be folder view preferences resetting to defaults. This is cosmetic and temporary.

**Challenge 3: "Is the 28KB size unusually large for a home directory DS_Store?"**
Slightly above average but within normal range. A home directory typically contains 20-40+ visible items. Each item generates multiple attribute records in the B-tree. 28KB for a well-populated home directory is expected.

**Challenge 4: "Should this even be in the mapping inventory at all?"**
Valid challenge. This is OS noise, not user data or system configuration. Including it ensures completeness of the filesystem map, but it should be clearly flagged as "no action required" so future reviewers do not spend time on it.

**Challenge 5: "Are the extended attributes significant?"**
The `com.apple.FinderInfo` extended attribute is standard metadata that Finder attaches to files it manages. It contains a 32-byte structure with legacy type/creator codes and Finder flags. Not significant for this mapping.

---

*Mapping completed by STUDIO TEAM 1 -- 2026-03-08 | Root Index 011*
