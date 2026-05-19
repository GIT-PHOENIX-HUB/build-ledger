# Web vs Local — Detailed Capability Matrix

## What Works Where

| Capability | CLI (Local) | Desktop Code (Local) | Desktop Cowork | Web (claude.ai/code) | Mobile (Dispatch) |
|-----------|------------|---------------------|----------------|---------------------|-------------------|
| **Code editing** | Yes | Yes (+ diff view) | Via Code session | Yes | Via Dispatch→Code |
| **MCP servers (custom)** | Yes | Yes | Via Code session | No | No |
| **Connectors (built-in)** | No | Yes (UI) | Yes | Connectors only | No |
| **Custom skills** | Yes | Yes | Via Code session | No | No |
| **Custom plugins** | Yes | Yes (+ UI) | Via Code session | No | No |
| **Hooks** | Yes | Yes | Via Code session | No | No |
| **CLAUDE.md** | Yes | Yes | Via Code session | Yes (from repo) | No |
| **Memory files** | Yes | Yes | Via Code session | No | No |
| **Browser control (Chrome ext)** | Yes | Yes | No | No | No |
| **Computer Use (screen)** | macOS only | macOS + Windows | macOS + Windows | No | No |
| **File system access** | Full | Full | Via Computer Use | Cloned repo only | No |
| **Git operations** | Full | Full + worktrees | Via Code session | Push/PR | No |
| **Parallel sessions** | Separate terminals | Sidebar tabs | Single | Multiple | Single |
| **Runs when disconnected** | No | No (local) / Yes (remote) | No | Yes | Via Dispatch |
| **Scheduled tasks** | /loop (session) | Persistent | Via Code session | Cloud persistent | No |
| **Channels (Telegram/Discord)** | Yes | No | No | No | No |
| **SSH remote** | Yes | Yes | No | No | No |
| **Third-party providers** | Yes | No | No | No | No |
| **Agent SDK** | Yes | No | No | No | No |
| **Auto-fix PRs** | Manual | Toggle in CI bar | Via Code | Toggle in CI bar | "Fix this PR" |
| **Auto-merge** | Manual | Toggle in CI bar | Via Code | Toggle in CI bar | No |

## Decision Tree: Which Surface for This Task?

```
Is it a quick question about code?
├── Yes → CLI or Cowork (fastest)
└── No
    ├── Does it need MCP servers (SF, 365, Rexel)?
    │   ├── Yes → CLI or Desktop Code (local)
    │   └── No
    │       ├── Is it a long-running task?
    │       │   ├── Yes, and I need local files → Desktop Code (remote not possible)
    │       │   ├── Yes, and GitHub repo is enough → Web (fire and forget)
    │       │   └── Yes, and I'm leaving → Dispatch from phone
    │       └── No
    │           ├── Does it need GUI interaction?
    │           │   ├── Yes → Cowork (Computer Use) or Desktop Code
    │           │   └── No → CLI (fastest)
    │           └── Does it need browser?
    │               ├── Yes → CLI with Claude-in-Chrome
    │               └── No → CLI
    └── Do I need to review diffs visually?
        └── Yes → Desktop Code (diff viewer)
```
