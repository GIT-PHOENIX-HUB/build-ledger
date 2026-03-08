# Root Index 019 — `.ssh` Directory Mapping Report

## 1. Header

| Field | Value |
|---|---|
| **Team ID** | STUDIO TEAM 1 |
| **Surface** | Studio (ShanesMacStudio) |
| **Assigned Root Index** | 019 |
| **Main Directory Path** | `/Users/shanewarehime/.ssh` |
| **Total Size** | 36K |
| **Item Count** | 9 files + 2 Unix sockets in `agent/` subdirectory |
| **Created** | 2026-02-21 06:06:48 |
| **Last Modified** | 2026-03-07 21:23:55 |
| **Moved or Unavailable** | No |
| **Type Designation** | system dir |

## 2. File Tree

```
/Users/shanewarehime/.ssh/
├── agent/                           drwx------  (2 ssh-agent Unix sockets)
├── authorized_keys                  -rw-------  (206 bytes, 2026-03-02)
├── config                           -rw-------  (1097 bytes, 2026-03-07)
├── id_ed25519                       -rw-------  (464 bytes, 2026-02-28)
├── id_ed25519.pub                   -rw-r--r--  (104 bytes, 2026-02-28)
├── id_ed25519_new                   -rw-------  (419 bytes, 2026-03-06)
├── id_ed25519_new.pub               -rw-r--r--  (108 bytes, 2026-03-06)
├── id_ed25519_vps                   -rw-------  (419 bytes, 2026-03-02)
├── known_hosts                      -rw-------  (4077 bytes, 26 entries, 2026-03-08)
└── known_hosts.old                  -rw-------  (3889 bytes, 24 entries, 2026-03-07)
```

## 3. Contextual Summary

The `.ssh` directory is the OpenSSH client/server configuration root for user `shanewarehime` on Studio. It is the **cryptographic identity hub** for the entire Phoenix infrastructure mesh, managing SSH key-based authentication to:

- **Phoenix VPS** (`phoenix-vps`) — dedicated VPS key (`id_ed25519_vps`)
- **Tailscale mesh nodes** — Studio, MacBook, VPS, iPhone, iPad
- **GitHub** — for repo operations
- **Inter-device SSH** — the `config` file likely defines host aliases and tunnel configurations

All three keypairs are **ED25519** — modern, compact, high-security elliptic curve algorithm. No legacy RSA keys present.

## 4. Data Summary

| Metric | Value |
|---|---|
| **Total files** | 9 regular files + 1 subdirectory (2 Unix sockets) |
| **Total size** | 36K on disk |
| **Key types present** | ED25519 only (3 keypairs) |
| **Keypairs** | `id_ed25519` (original), `id_ed25519_new` (rotated 2026-03-06), `id_ed25519_vps` (VPS-specific) |
| **known_hosts entries** | 26 lines (current), 24 lines (old backup) |
| **Config file** | 1,097 bytes — likely contains multiple Host blocks |

## 5. File Detail

| File | Size | Permissions | Notes |
|---|---|---|---|
| `authorized_keys` | 206 B | `-rw-------` | ~2 public keys. Content NOT read. |
| `config` | 1,097 B | `-rw-------` | SSH client config. Content NOT read. |
| `id_ed25519` | 464 B | `-rw-------` | Primary ED25519 private key. NOT read. |
| `id_ed25519.pub` | 104 B | `-rw-r--r--` | Primary public key. World-readable (correct). |
| `id_ed25519_new` | 419 B | `-rw-------` | Rotated private key. NOT read. |
| `id_ed25519_new.pub` | 108 B | `-rw-r--r--` | Rotated public key. |
| `id_ed25519_vps` | 419 B | `-rw-------` | VPS-specific private key. No matching .pub file. NOT read. |
| `known_hosts` | 4,077 B | `-rw-------` | 26 host fingerprints. |
| `known_hosts.old` | 3,889 B | `-rw-------` | 24 host fingerprints (backup). |

## 6. Future Recommendations

```
sysdir__user__ssh-config__undated
```

The `.ssh` directory cannot be renamed or relocated. Canonical naming is for inventory reference only.

## 7. Hazard/Skip Log

| Hazard | Severity | Detail |
|---|---|---|
| **Cryptographic private keys** | **CRITICAL** | 3 private keys — NEVER read, copy, log, or expose |
| **authorized_keys** | **HIGH** | Controls inbound SSH access to Studio |
| **config** | **HIGH** | May contain tunnel configs, proxy commands, hostnames |
| **known_hosts** | **MEDIUM** | Contains hostnames/IPs of connected systems |
| **Agent sockets** | **MEDIUM** | Live Unix sockets for ssh-agent |
| CLAUDE.md/ECHO.md/etc. | N/A | None found |

**Overall hazard rating: HIGHLY SENSITIVE**

## 8. Open Questions

1. **Missing `id_ed25519_vps.pub`** — Was the public key deployed to VPS without keeping a local copy?
2. **Key rotation status** — Has `id_ed25519` been decommissioned from all remote `authorized_keys`?
3. **Two agent sockets** — Are both active, or is one stale?

## 9. Confidence Notes

| Aspect | Confidence | Notes |
|---|---|---|
| File inventory | **HIGH** | Direct `ls -la` and `find` output |
| Key type identification | **HIGH** | ED25519 confirmed by filename and file sizes (419-464 bytes) |
| known_hosts line counts | **HIGH** | Direct `wc -l` output |
| All permissions correct | **HIGH** | Private keys 600, public keys 644, directory 700 |

## 10. Adversarial Review

**Challenge 1:** File sizes (419-464 bytes private, 104-108 bytes public) are exactly consistent with ED25519 and inconsistent with RSA (1,600-3,400+ bytes).

**Challenge 2:** Config was not read. Could contain ProxyCommand directives or tunnel rules affecting security posture. Known gap accepted for security.

**Challenge 3:** All permissions follow OpenSSH security requirements. No permission issues detected.

**Verdict:** Well-maintained, modern SSH configuration using exclusively ED25519 keys with correct permissions.

---

*Report generated: 2026-03-08 | STUDIO TEAM 1 | Root Index 019*
