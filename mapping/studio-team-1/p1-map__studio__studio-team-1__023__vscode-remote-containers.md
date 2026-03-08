# STUDIO TEAM 1 -- Phase 1 Local Mapping Report

## Item Index: 023 -- `.vscode-remote-containers`

## 1. Header

| Field | Value |
|---|---|
| **Team ID** | STUDIO TEAM 1 |
| **Surface** | Studio (ShanesMacStudio) |
| **Assigned Root Index** | 023 |
| **Main Directory Path** | `/Users/shanewarehime/.vscode-remote-containers` |
| **Total Size** | 222 MB |
| **Item Count** | 2,701 files across 525 directories |
| **Created** | 2026-03-01 06:33:34 |
| **Last Modified** | 2026-03-01 06:33:43 |
| **Moved or Unavailable** | No |
| **Type Designation** | config dir (VS Code) -- Dev Containers server runtime cache |

## 2. File Tree

```
.vscode-remote-containers/
├── bin/
│   └── 072586267e68ece9a47aa43f8c108e0dcbf44622/   [VS Code Server v1.109.5]
│       ├── LICENSE                                    (13 KB)
│       ├── node                                       (109 MB, Mach-O x86_64)
│       ├── package.json                               (198 B, "Code" v1.109.5)
│       ├── product.json                               (60 KB)
│       ├── bin/                                       [code-server, helpers, remote-cli]
│       ├── out/                                       [Compiled VS Code server JS]
│       ├── node_modules/                              (93 packages)
│       └── extensions/                                (34 bundled extensions)
└── dist/
    └── vscode-remote-containers-server-0.446.0.js     (42 KB)
```

## 3. Contextual Summary

`.vscode-remote-containers` is a cache directory created by the **VS Code Dev Containers extension**. It stores a **self-contained VS Code Server instance** that gets injected into Docker/Podman containers. This is **not** user-authored configuration -- it is an **auto-generated runtime cache**.

The directory contains:
- A complete VS Code Server build (v1.109.5)
- A bundled Node.js binary (**x86_64 architecture -- not ARM64/Apple Silicon native**)
- 34 built-in VS Code extensions
- The Dev Containers server bootstrap script (version 0.446.0)

## 4. Data Summary

| Metric | Value |
|---|---|
| Total files | 2,701 |
| Total directories | 525 |
| Total size | 222 MB |
| `bin/` size | 222 MB (99.98% of total) |
| `dist/` size | 44 KB (0.02%) |
| Largest single file | `node` binary at 109 MB (49% of total) |
| Bundled extensions | 34 |
| Node modules packages | 93 |

## 5. File Detail

### Key Files

| File | Size | Purpose |
|---|---|---|
| `bin/.../node` | 109 MB | Bundled Node.js runtime (x86_64, runs via Rosetta 2) |
| `bin/.../package.json` | 198 B | VS Code Server identity: v1.109.5 |
| `bin/.../product.json` | 60 KB | VS Code product configuration |
| `dist/vscode-remote-containers-server-0.446.0.js` | 42 KB | Dev Containers bootstrap |
| `node_modules/@vscode/ripgrep/bin/rg` | 4.1 MB | Bundled ripgrep |
| `node_modules/@vscode/vsce-sign/bin/vsce-sign` | 15 MB | Extension signature verification |

### Extension Categories
- **Language Features:** CSS, HTML, JSON, PHP, TypeScript, Markdown
- **Development Tools:** Git, GitHub, npm, Grunt, Gulp, Jake, Emmet
- **Debugging:** js-debug, debug-auto-launch, debug-server-ready
- **Auth/Networking:** github-authentication, microsoft-authentication, tunnel-forwarding

## 6. Future Recommendations

### Canonical Name
```
cache__vscode__remote-containers-server__undated
```

### Recommendations
1. **Architecture mismatch:** Bundled `node` binary is x86_64, runs under Rosetta 2 on M3 Ultra. Expected for container injection but dead weight if Dev Containers not actively used.
2. **Reclaimable space:** 222 MB can be recovered by deleting this directory. It regenerates automatically when Dev Containers are next used.
3. **Usage assessment:** If Dev Containers are not part of the current Phoenix workflow, consider uninstalling the extension and deleting this cache.

## 7. Hazard/Skip Log

| Hazard File | Found? |
|---|---|
| CLAUDE.md | Not found |
| ECHO.md | Not found |
| KINDLE.md | Not found |
| CODEX.md | Not found |
| AGENTS.md | Not found |

No hazard files present. No sensitive data detected.

## 8. Open Questions

1. **Is the Dev Containers extension actively used?** Directory was created only on 2026-03-01. May have been auto-installed.
2. **Single commit hash only:** Only one VS Code Server version cached. No stale versions consuming space.

## 9. Confidence Notes

| Aspect | Confidence | Notes |
|---|---|---|
| Directory existence and path | HIGH | Verified directly |
| Size and file counts | HIGH | Measured via `du` and `find` |
| Purpose identification | HIGH | Well-documented VS Code extension cache |
| Architecture identification | HIGH | `file` command confirms x86_64 |
| User data presence | HIGH (none) | Entirely auto-generated cache |

**Overall confidence: HIGH**

## 10. Adversarial Review

**Challenge 1: "Is this really just a cache?"**
Yes. Contains exactly `bin/` (VS Code Server by commit hash) and `dist/` (bootstrap script). Zero user-authored files. No `devcontainer.json` or workspace settings.

**Challenge 2: "Could deleting this break something?"**
No. The Dev Containers extension re-downloads everything on next use.

**Challenge 3: "Is the 109 MB node binary wasted space?"**
It serves a real purpose (container injection), but if Dev Containers aren't used in Phoenix workflow, yes, it's waste.

**Challenge 4: "Could there be sensitive data?"**
Low risk. No token caches or credential files found. This is a distributable server package.

---

*End of Report -- Index 023 -- `.vscode-remote-containers`*
