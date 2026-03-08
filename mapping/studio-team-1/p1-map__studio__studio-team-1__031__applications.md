# STUDIO TEAM 1 — Phase 1 Local Mapping Report

## Root Index: 031 — User Applications

## 1. Header

| Field | Value |
|---|---|
| **Team ID** | STUDIO TEAM 1 |
| **Surface** | Studio (ShanesMacStudio) |
| **Assigned Root Index** | 031 |
| **Main Directory Path** | `/Users/shanewarehime/Applications` |
| **Total Size** | 6.3 MB |
| **Item Count** | 3 Chrome Web App shims |
| **Created** | 2026-02-21 01:13:27 |
| **Last Modified** | 2026-03-07 (contents) |
| **Moved or Unavailable** | No |
| **Type Designation** | Small dir (not "large" as expected — only 6.3 MB) |

## 2. File Tree

```
/Users/shanewarehime/Applications/
├── .localized
└── Chrome Apps.localized/
    ├── Chrome Remote Desktop.app      (2.1 MB)
    ├── Claude.app                     (2.1 MB)
    └── GitHub.app                     (2.1 MB)
```

## 3. Contextual Summary

User-level `~/Applications` directory (distinct from system `/Applications`). Contains only 3 **Chrome Web App shims** (PWAs installed via Chrome). These are small wrappers (~2.1 MB each) that launch Chrome in app mode for a specific URL. Not standalone native applications.

## 4. Data Summary

| App | Size | Type | Phoenix Related |
|---|---|---|---|
| Chrome Remote Desktop.app | 2.1 MB | Chrome PWA | No |
| Claude.app | 2.1 MB | Chrome PWA | Yes — claude.ai shortcut |
| GitHub.app | 2.1 MB | Chrome PWA | Indirect — hosts Phoenix repos |

**Note:** Claude.app here is a Chrome wrapper for claude.ai, NOT the native Claude Desktop app (which would be in `/Applications` and much larger).

## 5. Future Recommendations

```
config__user__applications-chrome-apps__undated
```

No backup priority — Chrome can recreate these shims. Low-priority directory.

## 6-10. Hazard/Skip, Questions, Confidence, Adversarial

No hazard files found. All confidence HIGH. Chrome Remote Desktop usage worth checking if Tailscale has replaced it. No sensitive data.

---

*Report generated: 2026-03-08 | STUDIO TEAM 1 | Root Index 031*
