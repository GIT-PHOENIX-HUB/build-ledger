  
## ARTIFACT 1: Expansion Matrix  
**Filename:** spec__browser__phoenix-v3-openclaw-expansion-matrix__20260416.md  
  
  
  
markdown  
**# Phoenix V3 — OpenClaw Expansion Matrix**  
> Browser forensic cross-reference: OpenClaw Agents SDK (April 15 2026 release) ↔ PHOENIX_UNIFIED_STAGING  
> Author: Browser | Date: 2026-04-16  
> Author: Browser | Date: 2026-04-16  
> Classification: Firedancer / missions / docs-only  
  
---  
---  
  
**## How to Read This Matrix**  
**## How to Read This Matrix**  
  
|** Column **|** Meaning **|  
|** Column **|** Meaning **|  
|--------|---------|  
|--------|---------|  
| **OpenClaw Pattern** | The pattern, primitive, or capability observed in the OpenClaw Agents SDK update |  
| **Phoenix Equivalent Today** | What PHOENIX_UNIFIED_STAGING already has that maps to this pattern |  
| **Phoenix Equivalent Today** | What PHOENIX_UNIFIED_STAGING already has that maps to this pattern |  
| **Gap** | What is missing, incomplete, or differently shaped in Phoenix |  
| **Gap** | What is missing, incomplete, or differently shaped in Phoenix |  
| **Classification** | `[NOW]` adopt immediately · `[SCAFFOLD]` build the seam now, activate later · `[LATER]` park intentionally · `[AVOID]` do not bring into Phoenix |  
| **Label** | `copy candidate` · `adaptation required` · `phoenix already has this` · `not a fit` |  
| **Target Files** | Phoenix source files, contracts, or surfaces that would change |  
| **V3 Benefit** | What Phoenix gains in V3 if this is landed |  
| **Future Benefit** | What Phoenix gains in later waves if the seam exists now |  
| **Future Benefit** | What Phoenix gains in later waves if the seam exists now |  
| **Risk if Ignored** | Cost of not acting — measured in rework, fragility, or missed expansion |  
| **Risk if Ignored** | Cost of not acting — measured in rework, fragility, or missed expansion |  
  
---  
---  
  
**## A. Identity and Users**  
  
|** # **|** OpenClaw Pattern **|** Phoenix Equivalent Today **|** Gap **|** Class **|** Label **|** Target Files **|** V3 Benefit **|** Future Benefit **|** Risk if Ignored **|  
|---|---|---|---|---|---|---|---|---|---|  
|---|---|---|---|---|---|---|---|---|---|  
| A1 | Per-agent identity (`name`, `model`, `instructions` bound to agent instance) | `config.js` has a single global `agent.model` and `prompt.js` has a single system prompt | No per-agent identity binding; no way to run two agents with different identities in one session | `[NOW]` | adaptation required | `src/config.js`, `src/agent.js`, `src/prompt.js`, new `src/agent-registry.js` | Shane's Phoenix and any future secondary agent each get their own identity, model, and instructions | Multi-agent households with distinct personalities without rewriting core | Single-agent ceiling; adding a second user or agent requires surgery on config and prompt |  
| A1 | Per-agent identity (`name`, `model`, `instructions` bound to agent instance) | `config.js` has a single global `agent.model` and `prompt.js` has a single system prompt | No per-agent identity binding; no way to run two agents with different identities in one session | `[NOW]` | adaptation required | `src/config.js`, `src/agent.js`, `src/prompt.js`, new `src/agent-registry.js` | Shane's Phoenix and any future secondary agent each get their own identity, model, and instructions | Multi-agent households with distinct personalities without rewriting core | Single-agent ceiling; adding a second user or agent requires surgery on config and prompt |  
| A2 | Sub-agent delegation with isolated identity | `src/multi-agent.js` has 5 agent types but all share the same auth and config context | No isolation between delegated agents; sub-agents inherit parent identity | `[SCAFFOLD]` | adaptation required | `src/multi-agent.js`, `src/auth.js` | Seam exists for future sub-agent identity isolation | Clean delegation for tool-specific or role-specific agents later | Agents bleed identity; operator confusion about who did what |  
| A2 | Sub-agent delegation with isolated identity | `src/multi-agent.js` has 5 agent types but all share the same auth and config context | No isolation between delegated agents; sub-agents inherit parent identity | `[SCAFFOLD]` | adaptation required | `src/multi-agent.js`, `src/auth.js` | Seam exists for future sub-agent identity isolation | Clean delegation for tool-specific or role-specific agents later | Agents bleed identity; operator confusion about who did what |  
| A3 | Session ownership model (runs track which agent, which user) | `src/session.js` tracks session ID but no user-to-session ownership binding | No explicit user-owns-session relationship; no operator vs secondary-user distinction | `[NOW]` | adaptation required | `src/session.js`, `src/auth.js` | Shane's sessions are his; a future second user gets their own session space | User-scoped history, memory, and audit trails | Sessions are anonymous containers; no way to attribute actions to users |  
| A3 | Session ownership model (runs track which agent, which user) | `src/session.js` tracks session ID but no user-to-session ownership binding | No explicit user-owns-session relationship; no operator vs secondary-user distinction | `[NOW]` | adaptation required | `src/session.js`, `src/auth.js` | Shane's sessions are his; a future second user gets their own session space | User-scoped history, memory, and audit trails | Sessions are anonymous containers; no way to attribute actions to users |  
  
**## B. Resident Phoenix Continuity**  
**## B. Resident Phoenix Continuity**  
  
|** # **|** OpenClaw Pattern **|** Phoenix Equivalent Today **|** Gap **|** Class **|** Label **|** Target Files **|** V3 Benefit **|** Future Benefit **|** Risk if Ignored **|  
|** # **|** OpenClaw Pattern **|** Phoenix Equivalent Today **|** Gap **|** Class **|** Label **|** Target Files **|** V3 Benefit **|** Future Benefit **|** Risk if Ignored **|  
|---|---|---|---|---|---|---|---|---|---|  
| B1 | Configurable memory (agent-level memory management) | `src/memory/` has memory-manager, memory-store, memory-consolidation, memory-index | Phoenix has the infrastructure but no agent-scoped memory boundaries; memory is globally shared | `[NOW]` | adaptation required | `src/memory/memory-manager.js`, `src/memory/memory-store.js` | Memory is scoped to agent and session; Phoenix resident memory is distinct from tool-agent scratch | Per-user memory isolation; cross-device continuity | Memory contamination between agents or sessions; consolidation merges wrong contexts |  
| B1 | Configurable memory (agent-level memory management) | `src/memory/` has memory-manager, memory-store, memory-consolidation, memory-index | Phoenix has the infrastructure but no agent-scoped memory boundaries; memory is globally shared | `[NOW]` | adaptation required | `src/memory/memory-manager.js`, `src/memory/memory-store.js` | Memory is scoped to agent and session; Phoenix resident memory is distinct from tool-agent scratch | Per-user memory isolation; cross-device continuity | Memory contamination between agents or sessions; consolidation merges wrong contexts |  
| B2 | Harness maintains state across tool calls (externalized agent state) | `src/session.js` maintains conversation history but no externalized state snapshot | No checkpoint/snapshot mechanism; if process crashes, session state is lost | `[SCAFFOLD]` | adaptation required | `src/session.js`, new `src/checkpoint.js` | Seam for session checkpoint exists even if not activated in V3 | Durable execution; cross-device handoff; crash recovery | Process crash = lost session; no path to session mobility |  
| B2 | Harness maintains state across tool calls (externalized agent state) | `src/session.js` maintains conversation history but no externalized state snapshot | No checkpoint/snapshot mechanism; if process crashes, session state is lost | `[SCAFFOLD]` | adaptation required | `src/session.js`, new `src/checkpoint.js` | Seam for session checkpoint exists even if not activated in V3 | Durable execution; cross-device handoff; crash recovery | Process crash = lost session; no path to session mobility |  
| B3 | Progressive disclosure via skills (capabilities revealed contextually) | `src/plugin-loader.js` loads plugins at startup; `src/tools.js` registers all tools | No progressive disclosure; all tools are always visible to the model regardless of context | `[LATER]` | adaptation required | `src/plugin-loader.js`, `src/tools.js` | None in V3 (park this) | Context-aware tool exposure reduces token waste and model confusion | Low immediate risk; longer-term token budget pressure as tool count grows |  
| B3 | Progressive disclosure via skills (capabilities revealed contextually) | `src/plugin-loader.js` loads plugins at startup; `src/tools.js` registers all tools | No progressive disclosure; all tools are always visible to the model regardless of context | `[LATER]` | adaptation required | `src/plugin-loader.js`, `src/tools.js` | None in V3 (park this) | Context-aware tool exposure reduces token waste and model confusion | Low immediate risk; longer-term token budget pressure as tool count grows |  
  
**## C. Auth and Provider Lifecycle**  
**## C. Auth and Provider Lifecycle**  
  
|** # **|** OpenClaw Pattern **|** Phoenix Equivalent Today **|** Gap **|** Class **|** Label **|** Target Files **|** V3 Benefit **|** Future Benefit **|** Risk if Ignored **|  
|** # **|** OpenClaw Pattern **|** Phoenix Equivalent Today **|** Gap **|** Class **|** Label **|** Target Files **|** V3 Benefit **|** Future Benefit **|** Risk if Ignored **|  
|---|---|---|---|---|---|---|---|---|---|  
| C1 | Per-request credential resolution (sandbox gets credentials at invocation, not startup) | `src/auth.js` resolves Anthropic auth at startup via `resolveAnthropicAuth()`; token is cached for process lifetime | Auth is resolved once at boot; no per-request re-resolution; token expiry during long runs is not handled | `[NOW]` | adaptation required | `src/auth.js` | Tokens are validated or refreshed per-request; long-running sessions survive token rotation | OAuth token lifecycle management; multi-provider auth rotation | Expired token in a long session = hard failure with no recovery path |  
| C1 | Per-request credential resolution (sandbox gets credentials at invocation, not startup) | `src/auth.js` resolves Anthropic auth at startup via `resolveAnthropicAuth()`; token is cached for process lifetime | Auth is resolved once at boot; no per-request re-resolution; token expiry during long runs is not handled | `[NOW]` | adaptation required | `src/auth.js` | Tokens are validated or refreshed per-request; long-running sessions survive token rotation | OAuth token lifecycle management; multi-provider auth rotation | Expired token in a long session = hard failure with no recovery path |  
| C2 | Sandbox-isolated credentials (compute environment never sees control-plane secrets) | `src/sandbox.js` has command allowlist/blocklist but no credential isolation from execution environment | Sandbox shares process memory; secrets in `src/secrets.js` are accessible from sandbox execution context | `[SCAFFOLD]` | adaptation required | `src/sandbox.js`, `src/secrets.js` | Seam exists to separate secret access from tool execution | True credential isolation when sandbox moves to subprocess or container | Malicious tool input could theoretically access in-process secrets |  
| C2 | Sandbox-isolated credentials (compute environment never sees control-plane secrets) | `src/sandbox.js` has command allowlist/blocklist but no credential isolation from execution environment | Sandbox shares process memory; secrets in `src/secrets.js` are accessible from sandbox execution context | `[SCAFFOLD]` | adaptation required | `src/sandbox.js`, `src/secrets.js` | Seam exists to separate secret access from tool execution | True credential isolation when sandbox moves to subprocess or container | Malicious tool input could theoretically access in-process secrets |  
| C3 | Provider health tracking with automatic failover | `src/model-router.js` has `providerHealth` map with `failures`, `lastFailure`, `circuitOpen` tracking and `handleFailure()`/`handleSuccess()` | Health tracking exists but recovery is time-based only (60s cooldown); no health probe, no graduated recovery, no operator visibility into health state | `[NOW]` | adaptation required | `src/model-router.js` | Graduated recovery (1 → 2 → 4 probes before full restore); operator dashboard can show provider health | Self-healing provider mesh; automated incident response | Provider marked healthy after arbitrary timeout regardless of actual recovery; silent failures |  
| C4 | Hot-reload of configuration | `src/config.js` has `ConfigWatcher` class with debounced file watching and reload event emission | Config hot-reload exists and is well-built; no gap here | `[AVOID]` | phoenix already has this | N/A | Already landed | Already landed | N/A |  
| C4 | Hot-reload of configuration | `src/config.js` has `ConfigWatcher` class with debounced file watching and reload event emission | Config hot-reload exists and is well-built; no gap here | `[AVOID]` | phoenix already has this | N/A | Already landed | Already landed | N/A |  
| C5 | Auth status visibility (harness exposes auth state to operator) | `src/auth.js` returns `authMode` and `authSource` from `resolveAnthropicAuth()` but this is logged once at boot | No runtime auth status endpoint; no way for operator to see current auth state, token health, or upcoming expiry | `[NOW]` | adaptation required | `src/auth.js`, `src/index.js` (dashboard routes) | Operator can see auth status at a glance; token expiry warnings before failure | Proactive credential management; alerting on auth degradation | Operator discovers expired tokens only when requests fail |  
| C5 | Auth status visibility (harness exposes auth state to operator) | `src/auth.js` returns `authMode` and `authSource` from `resolveAnthropicAuth()` but this is logged once at boot | No runtime auth status endpoint; no way for operator to see current auth state, token health, or upcoming expiry | `[NOW]` | adaptation required | `src/auth.js`, `src/index.js` (dashboard routes) | Operator can see auth status at a glance; token expiry warnings before failure | Proactive credential management; alerting on auth degradation | Operator discovers expired tokens only when requests fail |  
  
**## D. Capability Plane (Mount / Dismount / Health / Rollback)**  
  
|** # **|** OpenClaw Pattern **|** Phoenix Equivalent Today **|** Gap **|** Class **|** Label **|** Target Files **|** V3 Benefit **|** Future Benefit **|** Risk if Ignored **|  
|---|---|---|---|---|---|---|---|---|---|  
|---|---|---|---|---|---|---|---|---|---|  
| D1 | Manifest abstraction (declarative workspace definition: inputs, outputs, mounts) | No manifest concept; workspace is a single directory from `config.workspace` resolved in `config.js` | No declarative workspace definition; no distinction between input mounts, output directories, or scratch space | `[NOW]` | adaptation required | `src/config.js`, `src/sandbox.js`, new `src/manifest.js` | Agent workspace is explicit: what goes in, what comes out, what is scratch; file safety rules have clear scope | Multi-workspace agents; isolated tool environments; portable workspace definitions | Workspace is an implicit directory; no way to scope file access, audit file provenance, or define output contracts |  
| D1 | Manifest abstraction (declarative workspace definition: inputs, outputs, mounts) | No manifest concept; workspace is a single directory from `config.workspace` resolved in `config.js` | No declarative workspace definition; no distinction between input mounts, output directories, or scratch space | `[NOW]` | adaptation required | `src/config.js`, `src/sandbox.js`, new `src/manifest.js` | Agent workspace is explicit: what goes in, what comes out, what is scratch; file safety rules have clear scope | Multi-workspace agents; isolated tool environments; portable workspace definitions | Workspace is an implicit directory; no way to scope file access, audit file provenance, or define output contracts |  
| D2 | Plugin/tool mount and dismount lifecycle | `src/plugin-loader.js` loads plugins at startup via `loadPluginDirectory()` but no dismount, no health check, no runtime add/remove | Plugins are load-once; no way to dismount a failing plugin, no health heartbeat, no runtime capability changes | `[SCAFFOLD]` | adaptation required | `src/plugin-loader.js`, new `src/capability-registry.js` | Seam for mount/dismount/health exists; V3 can manually register capabilities | Hot-swap tools without restart; graceful degradation when a tool breaks | Plugin failure takes down the process; no partial capability mode |  
| D3 | Tool versioning and rollback | No versioning in `src/tools.js` or `src/plugin-loader.js`; tools are loaded by name, no version tracking | No tool version awareness; no way to roll back a tool to a previous version | `[LATER]` | not a fit | N/A | None in V3 | Useful when tool ecosystem grows beyond 10+ tools | Low risk at current scale; would add complexity without current payoff |  
| D3 | Tool versioning and rollback | No versioning in `src/tools.js` or `src/plugin-loader.js`; tools are loaded by name, no version tracking | No tool version awareness; no way to roll back a tool to a previous version | `[LATER]` | not a fit | N/A | None in V3 | Useful when tool ecosystem grows beyond 10+ tools | Low risk at current scale; would add complexity without current payoff |  
| D4 | Skill packaging (bundled tool + instruction + trigger as a unit) | No skill concept; tools and instructions are separate concerns | Tools are flat functions; no bundling of tool + system prompt augmentation + trigger condition | `[SCAFFOLD]` | adaptation required | `src/tools.js`, `src/prompt.js`, new `src/skills/` directory | Seam exists for skill-like packaging; V3 can prototype with one skill bundle | Reusable, distributable capability packs; clean composition | Tools grow as a flat list; instructions drift from tool capabilities; composition is manual |  
| D4 | Skill packaging (bundled tool + instruction + trigger as a unit) | No skill concept; tools and instructions are separate concerns | Tools are flat functions; no bundling of tool + system prompt augmentation + trigger condition | `[SCAFFOLD]` | adaptation required | `src/tools.js`, `src/prompt.js`, new `src/skills/` directory | Seam exists for skill-like packaging; V3 can prototype with one skill bundle | Reusable, distributable capability packs; clean composition | Tools grow as a flat list; instructions drift from tool capabilities; composition is manual |  
  
**## E. Workspace and Execution**  
**## E. Workspace and Execution**  
  
|** # **|** OpenClaw Pattern **|** Phoenix Equivalent Today **|** Gap **|** Class **|** Label **|** Target Files **|** V3 Benefit **|** Future Benefit **|** Risk if Ignored **|  
|** # **|** OpenClaw Pattern **|** Phoenix Equivalent Today **|** Gap **|** Class **|** Label **|** Target Files **|** V3 Benefit **|** Future Benefit **|** Risk if Ignored **|  
|---|---|---|---|---|---|---|---|---|---|  
|---|---|---|---|---|---|---|---|---|---|  
| E1 | File safety: symlink resolution, null byte stripping, path traversal hardening | `src/sandbox.js` has path traversal detection (`..` check) and null byte removal (`\0` strip) | Symlink resolution is not present; `sandbox.js` checks for `..` in path string but does not resolve symlinks to verify the real target stays within bounds | `[NOW]` | adaptation required | `src/sandbox.js` | `fs.realpathSync()` check closes symlink escape vector; cheap and high-value | Defense in depth for any future remote-file or multi-workspace scenario | Symlink pointing outside workspace bypasses current path traversal check |  
| E2 | Durable execution with snapshotting and rehydration | No checkpoint mechanism; `src/session.js` stores conversation turns but no execution state snapshot | No durable execution; no way to snapshot agent state, lose a process, and resume from checkpoint | `[SCAFFOLD]` | adaptation required | `src/session.js`, new `src/checkpoint.js` | Seam exists for checkpoint/resume (same as B2 — shared infrastructure) | Crash recovery; long-running task resilience; session portability across devices | Long task interrupted = start over; no crash recovery path |  
| E3 | Output directory isolation (explicit output mount in manifest) | Workspace is a single flat directory; tool output goes wherever the tool writes | No output isolation; tool results mix with inputs and scratch files | `[NOW]` | adaptation required | `src/sandbox.js`, `src/config.js` | Clear input/output/scratch boundaries; audit trail for what the agent produced vs what it was given | Multi-agent output segregation; clean artifact collection | No provenance tracking; impossible to distinguish agent outputs from inputs |  
| E4 | Resource limits (CPU, memory, time) on execution | `src/sandbox.js` has `resourceLimits` object (maxMemoryMB, maxExecutionTimeMs, maxFileSize) | Resource limits are defined but enforcement depends on the execution context; no subprocess isolation to enforce them | `[SCAFFOLD]` | phoenix already has this | `src/sandbox.js` | Limits are declared; V3 can document and test enforcement boundaries | True enforcement when execution moves to subprocess/container | Limits exist on paper but may not be enforced in-process |  
  
**## F. Model Routing and Reliability**  
**## F. Model Routing and Reliability**  
  
|** # **|** OpenClaw Pattern **|** Phoenix Equivalent Today **|** Gap **|** Class **|** Label **|** Target Files **|** V3 Benefit **|** Future Benefit **|** Risk if Ignored **|  
|** # **|** OpenClaw Pattern **|** Phoenix Equivalent Today **|** Gap **|** Class **|** Label **|** Target Files **|** V3 Benefit **|** Future Benefit **|** Risk if Ignored **|  
|---|---|---|---|---|---|---|---|---|---|  
| F1 | Failover error taxonomy (classify failures as transient, permanent, rate-limit, auth) | `src/model-router.js` `handleFailure()` increments a counter and opens circuit after threshold; no error classification | All failures are treated identically; a 429 rate-limit and a 401 auth failure trigger the same circuit breaker | `[NOW]` | adaptation required | `src/model-router.js` | Rate-limit → back off and retry same provider; auth failure → failover immediately; transient → retry with jitter; permanent → circuit break | Intelligent routing decisions; reduced unnecessary failovers; faster recovery | Rate-limited provider gets circuit-broken when it only needed a brief pause; auth failure wastes retries |  
| F2 | Prompt preservation on failover (model switch does not lose system prompt or context) | `src/model-router.js` `routeRequest()` preserves messages array when falling back through the chain | Prompt preservation exists in the fallback path; this is a strength | `[AVOID]` | phoenix already has this | N/A | Already landed | Already landed | N/A |  
| F3 | Context budgeting (allocate token budget across agents/tools) | No context budget management; `config.agent.maxTokens` is a flat per-request cap | No per-agent or per-tool token budget; no awareness of context window consumption across a multi-turn session | `[SCAFFOLD]` | adaptation required | `src/agent.js`, `src/model-router.js` | Seam for token budget tracking exists; V3 can log consumption without enforcing limits | Budget-aware routing; automatic model tier switching when context fills; cost control | Context overflow hits unexpectedly; no visibility into token consumption trends |  
| F3 | Context budgeting (allocate token budget across agents/tools) | No context budget management; `config.agent.maxTokens` is a flat per-request cap | No per-agent or per-tool token budget; no awareness of context window consumption across a multi-turn session | `[SCAFFOLD]` | adaptation required | `src/agent.js`, `src/model-router.js` | Seam for token budget tracking exists; V3 can log consumption without enforcing limits | Budget-aware routing; automatic model tier switching when context fills; cost control | Context overflow hits unexpectedly; no visibility into token consumption trends |  
| F4 | Banned model enforcement | `src/model-router.js` has `BANNED_MODELS` set with DeepSeek entries | Banned model list exists; enforcement is present | `[AVOID]` | phoenix already has this | N/A | Already landed | Already landed | N/A |  
| F5 | Lean mode (reduced-capability operation when primary provider is down) | No lean mode concept; if primary and fallback both fail, request fails entirely | No graceful degradation mode; no partial-capability operation | `[SCAFFOLD]` | adaptation required | `src/model-router.js`, `src/agent.js` | Seam for lean mode: agent can operate with reduced tool access on a local model | Resilience during outages; operator never hits a total blackout | Complete failure when cloud providers are down; no local fallback path beyond ollama in chain |  
| F5 | Lean mode (reduced-capability operation when primary provider is down) | No lean mode concept; if primary and fallback both fail, request fails entirely | No graceful degradation mode; no partial-capability operation | `[SCAFFOLD]` | adaptation required | `src/model-router.js`, `src/agent.js` | Seam for lean mode: agent can operate with reduced tool access on a local model | Resilience during outages; operator never hits a total blackout | Complete failure when cloud providers are down; no local fallback path beyond ollama in chain |  
  
**## G. UI / Control Plane**  
**## G. UI / Control Plane**  
  
|** # **|** OpenClaw Pattern **|** Phoenix Equivalent Today **|** Gap **|** Class **|** Label **|** Target Files **|** V3 Benefit **|** Future Benefit **|** Risk if Ignored **|  
|** # **|** OpenClaw Pattern **|** Phoenix Equivalent Today **|** Gap **|** Class **|** Label **|** Target Files **|** V3 Benefit **|** Future Benefit **|** Risk if Ignored **|  
|---|---|---|---|---|---|---|---|---|---|  
|---|---|---|---|---|---|---|---|---|---|  
| G1 | Operator observability (harness exposes run state, tool calls, model selection to operator) | `src/logger.js` logs events; `src/brain-blueprint.js` and `src/runbooks.js` provide dashboard views | Logging exists but no structured run-state observability; operator cannot see in-flight tool calls, current model selection, or provider health in real time | `[NOW]` | adaptation required | `src/index.js` (dashboard routes), `src/model-router.js`, `src/agent.js` | Real-time operator view: which model is active, which tools are running, provider health status | Control-plane dashboard; alerting; run replay | Operator is blind to runtime state; debugging requires log archaeology |  
| G1 | Operator observability (harness exposes run state, tool calls, model selection to operator) | `src/logger.js` logs events; `src/brain-blueprint.js` and `src/runbooks.js` provide dashboard views | Logging exists but no structured run-state observability; operator cannot see in-flight tool calls, current model selection, or provider health in real time | `[NOW]` | adaptation required | `src/index.js` (dashboard routes), `src/model-router.js`, `src/agent.js` | Real-time operator view: which model is active, which tools are running, provider health status | Control-plane dashboard; alerting; run replay | Operator is blind to runtime state; debugging requires log archaeology |  
| G2 | Role-aware control surfaces (admin vs operator vs viewer see different controls) | `src/auth.js` has `RoleManager` with admin/operator/viewer hierarchy and permission lists | Role hierarchy exists but no evidence of role-gated UI rendering; all routes serve the same response regardless of role | `[SCAFFOLD]` | adaptation required | `src/index.js`, `src/miniapp-routes.js` | Seam for role-aware rendering; admin sees config controls, viewer sees read-only dashboard | Multi-user control plane; delegated access for secondary users | Roles exist in auth but are not reflected in UI; all authenticated users see everything |  
| G2 | Role-aware control surfaces (admin vs operator vs viewer see different controls) | `src/auth.js` has `RoleManager` with admin/operator/viewer hierarchy and permission lists | Role hierarchy exists but no evidence of role-gated UI rendering; all routes serve the same response regardless of role | `[SCAFFOLD]` | adaptation required | `src/index.js`, `src/miniapp-routes.js` | Seam for role-aware rendering; admin sees config controls, viewer sees read-only dashboard | Multi-user control plane; delegated access for secondary users | Roles exist in auth but are not reflected in UI; all authenticated users see everything |  
| G3 | AGENTS.md convention (declarative agent behavior file) | No equivalent; agent behavior is spread across `config.js`, `prompt.js`, `agent.js` | No single source of truth for agent behavior; configuration is scattered | `[LATER]` | adaptation required | New `AGENTS.md` or `phoenix-agent.yaml` | None in V3 (park this) | Single-file agent definition; portable agent configs; self-documenting behavior | Low immediate risk; adds friction to agent behavior changes as system grows |  
  
**## H. Memory and Session Surfaces**  
**## H. Memory and Session Surfaces**  
  
|** # **|** OpenClaw Pattern **|** Phoenix Equivalent Today **|** Gap **|** Class **|** Label **|** Target Files **|** V3 Benefit **|** Future Benefit **|** Risk if Ignored **|  
|** # **|** OpenClaw Pattern **|** Phoenix Equivalent Today **|** Gap **|** Class **|** Label **|** Target Files **|** V3 Benefit **|** Future Benefit **|** Risk if Ignored **|  
|---|---|---|---|---|---|---|---|---|---|  
| H1 | Memory path restrictions (agent memory is scoped and bounded) | `src/memory/memory-manager.js` manages memory but no path restriction or scope boundary | Memory is a global store; no per-agent or per-session memory boundaries; no restrictions on what memory an agent can access | `[NOW]` | adaptation required | `src/memory/memory-manager.js`, `src/memory/memory-store.js` | Shane's memory is his; tool-agent scratch memory is isolated; memory cannot leak between contexts | Per-user memory; cross-agent memory firewall; compliance-ready memory isolation | Agent A reads Agent B's memory; no auditability of memory access; consolidation merges wrong scopes |  
| H2 | Session durability (sessions survive process restart) | `src/session.js` appears to be in-memory; no evidence of session persistence to disk | Sessions are lost on process restart | `[NOW]` | adaptation required | `src/session.js` | Sessions persist to disk; process restart does not lose conversation state | Cross-device sessions; session backup; long-running task continuity | Every restart is amnesia; breaks the resident Phoenix promise |  
| H2 | Session durability (sessions survive process restart) | `src/session.js` appears to be in-memory; no evidence of session persistence to disk | Sessions are lost on process restart | `[NOW]` | adaptation required | `src/session.js` | Sessions persist to disk; process restart does not lose conversation state | Cross-device sessions; session backup; long-running task continuity | Every restart is amnesia; breaks the resident Phoenix promise |  
| H3 | Checkpoint and replay (snapshot session state, replay from checkpoint) | No checkpoint concept | No way to save a point-in-time session state and return to it | `[SCAFFOLD]` | adaptation required | New `src/checkpoint.js`, `src/session.js` | Seam for checkpoint/replay exists (shared with B2/E2) | Undo/retry for agent actions; debugging; session branching | No recovery from bad agent actions other than starting over |  
| H4 | Session portability (export/import session state) | No export/import mechanism | Sessions are trapped in the running process | `[LATER]` | adaptation required | `src/session.js` | None in V3 (park this) | Move sessions between devices; backup/restore; session sharing | Low immediate risk; blocks cross-device continuity in later waves |  
| H4 | Session portability (export/import session state) | No export/import mechanism | Sessions are trapped in the running process | `[LATER]` | adaptation required | `src/session.js` | None in V3 (park this) | Move sessions between devices; backup/restore; session sharing | Low immediate risk; blocks cross-device continuity in later waves |  
| H5 | Secret redaction in tool results (prevent model from seeing raw secrets in tool output) | `src/secrets.js` has `maskSensitive()` with regex-based masking | Masking exists for log output but unclear if applied to tool results before they reach the model context | `[NOW]` | adaptation required | `src/secrets.js`, `src/tools.js`, `src/agent.js` | Tool results are scrubbed before entering model context; secrets never reach the LLM | Defense against prompt extraction of credentials; compliance | Model sees raw API keys or tokens in tool output; exfiltration risk via prompt injection |  
| H5 | Secret redaction in tool results (prevent model from seeing raw secrets in tool output) | `src/secrets.js` has `maskSensitive()` with regex-based masking | Masking exists for log output but unclear if applied to tool results before they reach the model context | `[NOW]` | adaptation required | `src/secrets.js`, `src/tools.js`, `src/agent.js` | Tool results are scrubbed before entering model context; secrets never reach the LLM | Defense against prompt extraction of credentials; compliance | Model sees raw API keys or tokens in tool output; exfiltration risk via prompt injection |  
  
---  
---  
  
**## Summary Counts**  
  
|** Classification **|** Count **|  
|** Classification **|** Count **|  
|---|---|  
|---|---|  
| `[NOW]` — Adopt in V3 immediately | 13 |  
| `[NOW]` — Adopt in V3 immediately | 13 |  
| `[SCAFFOLD]` — Build the seam now, activate later | 11 |  
| `[LATER]` — Park intentionally | 4 |  
| `[LATER]` — Park intentionally | 4 |  
| `[AVOID]` — Do not bring into Phoenix (already have it or not a fit) | 4 |  
| **Total patterns evaluated** | **32** |  
  
---  
---  
  
**## Assumptions and Limitations**  
**## Assumptions and Limitations**  
  
1. **April 14 Twin Peaks packet was not accessible.** Files `missions/2026-04-14__phoenix-twin-peaks-*.md` were not found on any accessible branch of GIT-PHOENIX-HUB/Firedancer. This matrix was grounded on PHOENIX_UNIFIED_STAGING source audit and Firedancer continuity context (CODEX_BUFFER, ACTIVE_MISSIONS, SYSTEM_STATUS).  
2. **April 15 supporting notes were not accessible.** Treated as a noted limitation per operator instruction, not a stop condition.  
3. **Source audit covered 6 core files line-by-line** (`auth.js`, `config.js`, `model-router.js`, `sandbox.js`, `secrets.js`, `tool-permissions.js`), plus directory mapping of all `src/`, `src/channels/`, `src/memory/`, `src/providers/`, and both architecture docs.  
3. **Source audit covered 6 core files line-by-line** (`auth.js`, `config.js`, `model-router.js`, `sandbox.js`, `secrets.js`, `tool-permissions.js`), plus directory mapping of all `src/`, `src/channels/`, `src/memory/`, `src/providers/`, and both architecture docs.  
4. **OpenClaw research based on the official April 15 2026 release article** at openai.com/index/the-next-evolution-of-the-agents-sdk/. No access to the actual SDK source code; patterns inferred from published documentation.  
  
---  
---  
  
*This matrix is ready for implementation review.*  
*This matrix is ready for implementation review.*  
  
## ARTIFACT 2: Forensic Review  
**Filename:** report__browser__openclaw-v3-forensic-expansion-review__20260416.md  
  
  
  
markdown  
**# Phoenix V3 — OpenClaw Forensic Expansion Review**  
**# Phoenix V3 — OpenClaw Forensic Expansion Review**  
> Browser forensic audit: OpenClaw Agents SDK (April 15 2026) cross-referenced with PHOENIX_UNIFIED_STAGING  
> Author: Browser | Date: 2026-04-16  
> Classification: Firedancer / missions / docs-only  
  
---  
---  
  
**## 1. Executive Verdict**  
**## 1. Executive Verdict**  
  
Phoenix Echo Gateway has a solid foundation — auth, routing, config hot-reload, sandbox, memory, and multi-provider support are all present and functional. However, the system was built as a single-agent, single-user, single-session runtime. The OpenClaw update reveals patterns that Phoenix should adopt not because OpenClaw is better, but because they solve structural limitations that will become expensive to retrofit later. The core recommendation is: **keep Phoenix's identity, adopt OpenClaw's structural discipline, and build expansion seams now while the cost is low.**  
Phoenix Echo Gateway has a solid foundation — auth, routing, config hot-reload, sandbox, memory, and multi-provider support are all present and functional. However, the system was built as a single-agent, single-user, single-session runtime. The OpenClaw update reveals patterns that Phoenix should adopt not because OpenClaw is better, but because they solve structural limitations that will become expensive to retrofit later. The core recommendation is: **keep Phoenix's identity, adopt OpenClaw's structural discipline, and build expansion seams now while the cost is low.**  
  
Phoenix is building a 100,000 sq ft house with 30,000 sq ft of furniture. The furniture is good. But the house needs expansion seams in identity binding, session durability, memory scoping, workspace definition, and provider health management. Every one of these seams is cheap to add in V3 and expensive to retrofit in V4+.  
  
The single most important finding: Phoenix has no per-request auth re-resolution, which means a long-running session with an expiring OAuth token will fail without recovery. This is the highest-priority fix.  
  
---  
---  
  
**## 2. What OpenClaw Got Right**  
**## 2. What OpenClaw Got Right**  
  
OpenClaw's April 15 update solves five structural problems that matter for any agent system regardless of scale.  
  
**Manifest abstraction.** Declaring what goes into an agent's workspace, what comes out, and where scratch space lives is a simple idea with enormous downstream value. It turns implicit file access into explicit contracts. Phoenix has none of this — workspace is a single flat directory string in config.js.  
**Manifest abstraction.** Declaring what goes into an agent's workspace, what comes out, and where scratch space lives is a simple idea with enormous downstream value. It turns implicit file access into explicit contracts. Phoenix has none of this — workspace is a single flat directory string in config.js.  
  
**Harness-compute separation.** Keeping the agent's control loop separate from the execution environment where model-generated code runs is a fundamental security boundary. Phoenix runs everything in-process, meaning secrets in memory are theoretically accessible from tool execution.  
  
**Durable execution with checkpointing.** The ability to snapshot agent state, lose an execution environment, and resume from the last checkpoint converts fragile long-running tasks into resilient ones. Phoenix has no checkpoint mechanism.  
  
**Failover error taxonomy.** Classifying errors by type (transient, permanent, rate-limit, auth) and routing recovery strategy accordingly is a significant improvement over Phoenix's current approach of treating all failures identically.  
**Failover error taxonomy.** Classifying errors by type (transient, permanent, rate-limit, auth) and routing recovery strategy accordingly is a significant improvement over Phoenix's current approach of treating all failures identically.  
  
**Per-agent identity binding.** Each OpenClaw agent carries its own name, model, and instructions as a first-class construct. Phoenix has a global config that applies to everything.  
**Per-agent identity binding.** Each OpenClaw agent carries its own name, model, and instructions as a first-class construct. Phoenix has a global config that applies to everything.  
  
---  
---  
  
**## 3. What Phoenix Already Has**  
  
Phoenix is not starting from zero. Several of the patterns OpenClaw promotes are already present in PHOENIX_UNIFIED_STAGING.  
  
**Constant-time auth comparison.** `auth.js` uses both a manual constant-time XOR loop in JWTAuth and Node's native `timingSafeEqual` in the API-key middleware path. This is production-correct and not something to change.  
**Constant-time auth comparison.** `auth.js` uses both a manual constant-time XOR loop in JWTAuth and Node's native `timingSafeEqual` in the API-key middleware path. This is production-correct and not something to change.  
  
**Prompt preservation on failover.** `model-router.js` preserves the messages array when falling through the fallback chain. The model switch does not lose conversation context. This is a strength.  
  
**Config hot-reload.** `config.js` has a well-built `ConfigWatcher` class with debounced file watching, error emission, and reload callbacks. This is already better than what most agent frameworks offer.  
**Config hot-reload.** `config.js` has a well-built `ConfigWatcher` class with debounced file watching, error emission, and reload callbacks. This is already better than what most agent frameworks offer.  
  
**Banned model enforcement.** The `BANNED_MODELS` set in `model-router.js` with DeepSeek entries is a clear, maintainable blocklist. No changes needed.  
  
**Provider health tracking.** `model-router.js` tracks failures, timestamps, and circuit state per provider. The infrastructure is there — it just needs graduated recovery and error classification on top.  
**Provider health tracking.** `model-router.js` tracks failures, timestamps, and circuit state per provider. The infrastructure is there — it just needs graduated recovery and error classification on top.  
  
**4-tier tool permissions.** `tool-permissions.js` has readonly/standard/elevated/admin tiers with JSONL audit logging. This is more granular than what OpenClaw exposes.  
**4-tier tool permissions.** `tool-permissions.js` has readonly/standard/elevated/admin tiers with JSONL audit logging. This is more granular than what OpenClaw exposes.  
  
**Path traversal and null byte defense.** `sandbox.js` checks for `..` path segments and strips null bytes. The foundation is present — it just needs symlink resolution added.  
**Path traversal and null byte defense.** `sandbox.js` checks for `..` path segments and strips null bytes. The foundation is present — it just needs symlink resolution added.  
  
---  
  
**## 4. What Phoenix Is Missing**  
**## 4. What Phoenix Is Missing**  
  
These are not nice-to-haves. These are structural gaps that will become expensive to close later.  
  
**Per-request auth resolution.** Auth is resolved once at boot. A token that expires during a multi-hour session will cause a hard failure with no recovery. OpenClaw resolves credentials per-request in sandbox invocations.  
  
**Session durability.** Sessions appear to be in-memory only. Process restart means amnesia. This directly contradicts the resident Phoenix promise — a resident that forgets everything on restart is not a resident.  
**Session durability.** Sessions appear to be in-memory only. Process restart means amnesia. This directly contradicts the resident Phoenix promise — a resident that forgets everything on restart is not a resident.  
  
**Memory scope boundaries.** The memory subsystem has no per-agent or per-session scoping. If Phoenix runs two agents or two users, their memories bleed into each other.  
  
**Workspace manifest.** There is no declarative description of what an agent's workspace contains. The workspace is an implicit directory path. There is no distinction between inputs, outputs, and scratch.  
  
**Error classification in routing.** All provider failures trigger the same circuit breaker logic. A rate-limit (retry in 30s) is treated the same as an auth failure (failover immediately) or a permanent error (circuit break).  
  
**Operator runtime visibility.** The operator has no way to see current model selection, in-flight tool calls, provider health, or auth state without reading logs.  
**Operator runtime visibility.** The operator has no way to see current model selection, in-flight tool calls, provider health, or auth state without reading logs.  
  
**Symlink resolution in sandbox.** Path traversal checks inspect the string path but do not resolve symlinks. A symlink pointing outside the workspace boundary would pass the current check.  
  
**Secret redaction in model context.** `secrets.js` has masking for log output, but it is unclear whether tool results are scrubbed before entering the model's conversation context. If not, secrets could be extracted via prompt injection.  
**Secret redaction in model context.** `secrets.js` has masking for log output, but it is unclear whether tool results are scrubbed before entering the model's conversation context. If not, secrets could be extracted via prompt injection.  
  
---  
---  
  
**## 5. [NOW] — Adopt in V3 Immediately**  
  
These 13 items solve real problems today, are cheap to implement, and prevent expensive retrofits.  
  
|** # **|** Item **|** Target **|** Why Now **|  
|---|---|---|---|  
|---|---|---|---|  
| 1 | Per-request auth re-resolution | `src/auth.js` | Long sessions will fail on token expiry; fix is surgical — wrap `resolveAnthropicAuth()` in a per-request check with TTL cache |  
| 1 | Per-request auth re-resolution | `src/auth.js` | Long sessions will fail on token expiry; fix is surgical — wrap `resolveAnthropicAuth()` in a per-request check with TTL cache |  
| 2 | Failover error taxonomy | `src/model-router.js` | Classify errors in `handleFailure()`: 429 → backoff, 401 → immediate failover, 5xx → retry with jitter, permanent → circuit break |  
| 2 | Failover error taxonomy | `src/model-router.js` | Classify errors in `handleFailure()`: 429 → backoff, 401 → immediate failover, 5xx → retry with jitter, permanent → circuit break |  
| 3 | Symlink-safe file operations | `src/sandbox.js` | Add `fs.realpathSync()` after path traversal check; one line of defense |  
| 3 | Symlink-safe file operations | `src/sandbox.js` | Add `fs.realpathSync()` after path traversal check; one line of defense |  
| 4 | Workspace manifest abstraction | New `src/manifest.js`, update `src/config.js` | Declare inputs/outputs/scratch per workspace; foundation for every file safety improvement |  
| 5 | Provider health graduated recovery | `src/model-router.js` | Replace flat 60s cooldown with probe sequence (1 → 2 → 4 test requests before full restore) |  
| 5 | Provider health graduated recovery | `src/model-router.js` | Replace flat 60s cooldown with probe sequence (1 → 2 → 4 test requests before full restore) |  
| 6 | Auth status visibility endpoint | `src/auth.js`, `src/index.js` | Expose `/status/auth` route showing current mode, source, token age, estimated expiry |  
| 6 | Auth status visibility endpoint | `src/auth.js`, `src/index.js` | Expose `/status/auth` route showing current mode, source, token age, estimated expiry |  
| 7 | Memory scope boundaries | `src/memory/memory-manager.js` | Scope memory reads/writes by agent ID and session ID; add scope parameter to get/set |  
| 8 | Session persistence to disk | `src/session.js` | Write session state to `~/.phoenix-echo/sessions/` on turn completion; reload on startup |  
| 8 | Session persistence to disk | `src/session.js` | Write session state to `~/.phoenix-echo/sessions/` on turn completion; reload on startup |  
| 9 | Secret redaction before model context | `src/secrets.js`, `src/tools.js` | Apply `maskSensitive()` to tool results before they enter the conversation messages array |  
| 10 | Per-agent identity binding | `src/agent.js`, `src/config.js` | Agent config carries name, model, instructions, and identity as a bound unit |  
| 10 | Per-agent identity binding | `src/agent.js`, `src/config.js` | Agent config carries name, model, instructions, and identity as a bound unit |  
| 11 | Session ownership binding | `src/session.js`, `src/auth.js` | Session records include owning user ID; queries filter by ownership |  
| 12 | Operator runtime dashboard | `src/index.js` | `/status/runtime` endpoint: active model, provider health, loaded tools, session count |  
| 12 | Operator runtime dashboard | `src/index.js` | `/status/runtime` endpoint: active model, provider health, loaded tools, session count |  
| 13 | Output directory isolation | `src/sandbox.js`, `src/config.js` | Manifest defines output directory; sandbox enforces write-only to output path for tool results |  
| 13 | Output directory isolation | `src/sandbox.js`, `src/config.js` | Manifest defines output directory; sandbox enforces write-only to output path for tool results |  
  
---  
---  
  
**## 6. [SCAFFOLD] — Build the Seam Now, Activate Later**  
**## 6. [SCAFFOLD] — Build the Seam Now, Activate Later**  
  
These 11 items are not needed for V3 functionality but are cheap to scaffold now and expensive to add later.  
  
|** # **|** Item **|** Seam Description **|** Target **|** Activation Trigger **|  
|** # **|** Item **|** Seam Description **|** Target **|** Activation Trigger **|  
|---|---|---|---|---|  
|---|---|---|---|---|  
| 1 | Sub-agent identity isolation | `multi-agent.js` dispatch passes agent-specific config and auth context; V3 can pass the same config to all | `src/multi-agent.js` | When a second distinct agent role is needed |  
| 2 | Credential isolation from execution | `sandbox.js` accepts a `credentials` parameter but V3 passes it from process memory; later move to subprocess IPC | `src/sandbox.js`, `src/secrets.js` | When execution moves to subprocess or container |  
| 2 | Credential isolation from execution | `sandbox.js` accepts a `credentials` parameter but V3 passes it from process memory; later move to subprocess IPC | `src/sandbox.js`, `src/secrets.js` | When execution moves to subprocess or container |  
| 3 | Capability registry (mount/dismount) | New `src/capability-registry.js` with `register()`, `deregister()`, `health()` stubs; V3 calls register at startup | `src/plugin-loader.js` | When hot-swap or graceful degradation is needed |  
| 4 | Skill packaging directory | Create `src/skills/` directory structure; V3 can have one example skill bundle | `src/tools.js`, `src/prompt.js` | When tool + instruction bundles need to be portable |  
| 4 | Skill packaging directory | Create `src/skills/` directory structure; V3 can have one example skill bundle | `src/tools.js`, `src/prompt.js` | When tool + instruction bundles need to be portable |  
| 5 | Checkpoint interface | Define `checkpoint(sessionId)` and `restore(sessionId, checkpointId)` function signatures; V3 can stub with no-op | New `src/checkpoint.js`, `src/session.js` | When crash recovery or cross-device handoff is needed |  
| 5 | Checkpoint interface | Define `checkpoint(sessionId)` and `restore(sessionId, checkpointId)` function signatures; V3 can stub with no-op | New `src/checkpoint.js`, `src/session.js` | When crash recovery or cross-device handoff is needed |  
| 6 | Context budget tracking | Log token usage per request; V3 does not enforce limits but tracks consumption | `src/agent.js`, `src/model-router.js` | When cost control or automatic model tier switching is needed |  
| 6 | Context budget tracking | Log token usage per request; V3 does not enforce limits but tracks consumption | `src/agent.js`, `src/model-router.js` | When cost control or automatic model tier switching is needed |  
| 7 | Lean mode flag | `model-router.js` accepts a `leanMode` boolean; when true, reduces tool exposure and uses local model | `src/model-router.js`, `src/agent.js` | When cloud providers are down and local fallback is the only path |  
| 7 | Lean mode flag | `model-router.js` accepts a `leanMode` boolean; when true, reduces tool exposure and uses local model | `src/model-router.js`, `src/agent.js` | When cloud providers are down and local fallback is the only path |  
| 8 | Role-aware UI rendering | Route handlers check `req.user.role` and include a `permissions` object in response; V3 frontend can ignore it | `src/index.js`, `src/miniapp-routes.js` | When a second user with different access is added |  
| 8 | Role-aware UI rendering | Route handlers check `req.user.role` and include a `permissions` object in response; V3 frontend can ignore it | `src/index.js`, `src/miniapp-routes.js` | When a second user with different access is added |  
| 9 | Resource limit enforcement boundary | `sandbox.js` resource limits are documented with enforcement expectations; V3 flags when limits are declared but not enforced | `src/sandbox.js` | When execution moves to subprocess with OS-level enforcement |  
| 9 | Resource limit enforcement boundary | `sandbox.js` resource limits are documented with enforcement expectations; V3 flags when limits are declared but not enforced | `src/sandbox.js` | When execution moves to subprocess with OS-level enforcement |  
| 10 | Session checkpoint/replay | Same infrastructure as #5; add `listCheckpoints(sessionId)` stub | `src/session.js`, `src/checkpoint.js` | When undo/retry for agent actions is needed |  
| 10 | Session checkpoint/replay | Same infrastructure as #5; add `listCheckpoints(sessionId)` stub | `src/session.js`, `src/checkpoint.js` | When undo/retry for agent actions is needed |  
| 11 | Config self-escalation guard | `loadConfig()` validates that config file cannot escalate auth mode or override security settings from a lower-trust source | `src/config.js` | Active immediately but enforced as a guard, not a feature |  
| 11 | Config self-escalation guard | `loadConfig()` validates that config file cannot escalate auth mode or override security settings from a lower-trust source | `src/config.js` | Active immediately but enforced as a guard, not a feature |  
  
---  
---  
  
**## 7. [LATER] — Park Intentionally**  
**## 7. [LATER] — Park Intentionally**  
  
These 4 items are real capabilities but do not justify V3 effort. Park them with a named ticket.  
  
|** # **|** Item **|** Why Later **|** Revisit When **|  
|** # **|** Item **|** Why Later **|** Revisit When **|  
|---|---|---|---|  
|---|---|---|---|  
| 1 | Progressive tool disclosure | Token budget pressure is low with current tool count; adds complexity without current payoff | Tool count exceeds 15 or token consumption becomes a cost concern |  
| 2 | Tool versioning and rollback | Only useful when tools are changed frequently by multiple authors | Plugin ecosystem grows beyond operator-managed tools |  
| 3 | AGENTS.md convention | Interesting for portability but Phoenix is private and operator-controlled; not worth standardizing yet | Multi-agent or multi-operator configuration becomes complex |  
| 3 | AGENTS.md convention | Interesting for portability but Phoenix is private and operator-controlled; not worth standardizing yet | Multi-agent or multi-operator configuration becomes complex |  
| 4 | Session portability (export/import) | Cross-device is covered by session persistence; full export/import adds serialization complexity | Cross-device or session-sharing requirements emerge |  
  
---  
---  
  
**## 8. [AVOID] — Do Not Bring Into Phoenix**  
  
These 4 items are already handled or are not a fit for Phoenix's architecture.  
  
|** # **|** Item **|** Why Avoid **|  
|---|---|---|  
| 1 | Config hot-reload | Phoenix already has `ConfigWatcher` with debounced reload. Do not replace or restructure. |  
| 1 | Config hot-reload | Phoenix already has `ConfigWatcher` with debounced reload. Do not replace or restructure. |  
| 2 | Prompt preservation on failover | Phoenix already preserves the messages array on fallback. Already correct. |  
| 2 | Prompt preservation on failover | Phoenix already preserves the messages array on fallback. Already correct. |  
| 3 | Banned model enforcement | Phoenix already has `BANNED_MODELS` set. Already correct. |  
| 3 | Banned model enforcement | Phoenix already has `BANNED_MODELS` set. Already correct. |  
| 4 | Tool versioning (repeat of LATER #2) | Not a fit at current scale. Would add registry complexity for a 2-user system. |  
  
---  
---  
  
**## 9. File and Contract Impact Map**  
  
|** File **|** Changes Required **|** Complexity **|** Risk **|  
|---|---|---|---|  
|---|---|---|---|  
| `src/auth.js` | Per-request re-resolution with TTL cache; auth status endpoint helper; session ownership integration | Medium | Low — additive changes, existing logic untouched |  
| `src/auth.js` | Per-request re-resolution with TTL cache; auth status endpoint helper; session ownership integration | Medium | Low — additive changes, existing logic untouched |  
| `src/model-router.js` | Error taxonomy in handleFailure(); graduated recovery in health tracking; lean mode flag; context budget logging | Medium | Medium — core routing path changes |  
| `src/sandbox.js` | Symlink resolution; manifest-aware path scoping; output directory enforcement; credential isolation seam | Medium | Low — additive file safety checks |  
| `src/sandbox.js` | Symlink resolution; manifest-aware path scoping; output directory enforcement; credential isolation seam | Medium | Low — additive file safety checks |  
| `src/config.js` | Manifest definition in config structure; self-escalation guard in loadConfig() | Low | Low — config schema extension |  
| `src/config.js` | Manifest definition in config structure; self-escalation guard in loadConfig() | Low | Low — config schema extension |  
| `src/session.js` | Disk persistence; ownership binding; checkpoint interface integration | Medium | Medium — new persistence layer |  
| `src/session.js` | Disk persistence; ownership binding; checkpoint interface integration | Medium | Medium — new persistence layer |  
| `src/secrets.js` | Model-context redaction function; integration with tool result pipeline | Low | Low — extend existing maskSensitive() |  
| `src/tools.js` | Secret redaction in tool result path; capability registry integration | Low | Low — additive pipeline step |  
| `src/tools.js` | Secret redaction in tool result path; capability registry integration | Low | Low — additive pipeline step |  
| `src/agent.js` | Per-agent identity binding; context budget tracking; lean mode awareness | Medium | Medium — agent loop changes |  
| `src/agent.js` | Per-agent identity binding; context budget tracking; lean mode awareness | Medium | Medium — agent loop changes |  
| `src/memory/memory-manager.js` | Scope parameter on get/set; per-agent and per-session memory boundaries | Medium | Medium — changes memory access patterns |  
| `src/plugin-loader.js` | Capability registry integration; health check stub | Low | Low — additive |  
| `src/plugin-loader.js` | Capability registry integration; health check stub | Low | Low — additive |  
| `src/multi-agent.js` | Agent-specific config passing in dispatch; identity isolation seam | Low | Low — additive parameter passing |  
| `src/multi-agent.js` | Agent-specific config passing in dispatch; identity isolation seam | Low | Low — additive parameter passing |  
| `src/index.js` | Status endpoints (/status/auth, /status/runtime); role-aware response enrichment | Low | Low — new routes only |  
| `src/index.js` | Status endpoints (/status/auth, /status/runtime); role-aware response enrichment | Low | Low — new routes only |  
| New: `src/manifest.js` | Workspace manifest definition, validation, resolution | Medium | Low — new file, no existing code changes |  
| New: `src/checkpoint.js` | Checkpoint interface stubs (checkpoint, restore, list) | Low | Low — interface only in V3 |  
| New: `src/checkpoint.js` | Checkpoint interface stubs (checkpoint, restore, list) | Low | Low — interface only in V3 |  
| New: `src/capability-registry.js` | Register, deregister, health stubs | Low | Low — interface only in V3 |  
  
---  
---  
  
**## 10. Top 10 Ranked Recommendations**  
  
Ranked by: structural leverage × cost to add now × cost to retrofit later.  
  
|** Rank **|** Item **|** Class **|** Leverage **|  
|** Rank **|** Item **|** Class **|** Leverage **|  
|---|---|---|---|  
| 1 | **Per-request auth re-resolution** | `[NOW]` | Prevents hard failure in long sessions; surgical fix; impossible to work around without it |  
| 1 | **Per-request auth re-resolution** | `[NOW]` | Prevents hard failure in long sessions; surgical fix; impossible to work around without it |  
| 2 | **Session persistence to disk** | `[NOW]` | Core to resident Phoenix identity; without it, every restart is amnesia |  
| 2 | **Session persistence to disk** | `[NOW]` | Core to resident Phoenix identity; without it, every restart is amnesia |  
| 3 | **Failover error taxonomy** | `[NOW]` | Prevents unnecessary failovers; improves recovery time; changes one function |  
| 3 | **Failover error taxonomy** | `[NOW]` | Prevents unnecessary failovers; improves recovery time; changes one function |  
| 4 | **Workspace manifest abstraction** | `[NOW]` | Foundation for file safety, output isolation, and every future workspace feature |  
| 5 | **Memory scope boundaries** | `[NOW]` | Prevents memory contamination between agents/sessions; blocks multi-user |  
| 5 | **Memory scope boundaries** | `[NOW]` | Prevents memory contamination between agents/sessions; blocks multi-user |  
| 6 | **Symlink-safe file operations** | `[NOW]` | One-line defense that closes a real escape vector; zero complexity |  
| 6 | **Symlink-safe file operations** | `[NOW]` | One-line defense that closes a real escape vector; zero complexity |  
| 7 | **Secret redaction before model context** | `[NOW]` | Prevents credential exfiltration via prompt injection; extends existing infrastructure |  
| 7 | **Secret redaction before model context** | `[NOW]` | Prevents credential exfiltration via prompt injection; extends existing infrastructure |  
| 8 | **Checkpoint interface (scaffold)** | `[SCAFFOLD]` | Interface is free; implementation is later; absence blocks crash recovery and cross-device |  
| 8 | **Checkpoint interface (scaffold)** | `[SCAFFOLD]` | Interface is free; implementation is later; absence blocks crash recovery and cross-device |  
| 9 | **Provider health graduated recovery** | `[NOW]` | Replaces arbitrary timeout with probe-based recovery; reduces false circuit-breaks |  
| 10 | **Config self-escalation guard** | `[SCAFFOLD]` | Prevents config file from overriding security settings; cheap validation in loadConfig() |  
  
---  
  
**## Assumptions and Limitations**  
**## Assumptions and Limitations**  
  
1. April 14 Twin Peaks packet (`missions/2026-04-14__phoenix-twin-peaks-*.md`) was not accessible on any branch. This review was grounded on PHOENIX_UNIFIED_STAGING source audit (6 core files line-by-line, all directories mapped, both architecture docs read in full) and Firedancer continuity context.  
1. April 14 Twin Peaks packet (`missions/2026-04-14__phoenix-twin-peaks-*.md`) was not accessible on any branch. This review was grounded on PHOENIX_UNIFIED_STAGING source audit (6 core files line-by-line, all directories mapped, both architecture docs read in full) and Firedancer continuity context.  
2. April 15 supporting notes were not accessible. Treated as a noted limitation, not a stop condition.  
2. April 15 supporting notes were not accessible. Treated as a noted limitation, not a stop condition.  
3. OpenClaw SDK source code was not directly reviewed. Patterns were extracted from the official April 15 2026 release article published by OpenAI. Actual SDK implementation may differ.  
3. OpenClaw SDK source code was not directly reviewed. Patterns were extracted from the official April 15 2026 release article published by OpenAI. Actual SDK implementation may differ.  
4. Private repo `PHOENIX_UNIFIED_STAGING` was audited through the GitHub web UI. Raw file access was not available due to private repo restrictions on raw.githubusercontent.com.  
  
---  
---  
  
*This report is ready for implementation review.*  
*This report is ready for implementation review.*  
  
## ARTIFACT 3: PR Request Packet  
**Filename:** handoff__browser__pr-request-openclaw-to-phoenix-v3__20260416.md  
  
  
  
markdown  
**# Phoenix V3 —**  
**# Phoenix V3 —**  
  
  
  
i got 1 and 2  
  
  
Good — you've got the matrix and the forensic review. Here's artifact 3.  
  
## ARTIFACT 3: PR Request Packet  
**Filename:** handoff__browser__pr-request-openclaw-to-phoenix-v3__20260416.md  
  
  
  
markdown  
**# PR Request Packet: OpenClaw-to-Phoenix V3 Expansion**  
**# PR Request Packet: OpenClaw-to-Phoenix V3 Expansion**  
> Author: Browser | Date: 2026-04-16  
> Author: Browser | Date: 2026-04-16  
> Source branch: browser/openclaw-v3-expansion-20260415  
> Target branch: firedancer/mission-discipline-startup  
> Target branch: firedancer/mission-discipline-startup  
> Classification: Firedancer / missions / docs-only — no code changes  
> Classification: Firedancer / missions / docs-only — no code changes  
> Governing input: PHOENIX_UNIFIED_STAGING source audit + OpenClaw Agents SDK April 15 2026 release  
> Governing input: PHOENIX_UNIFIED_STAGING source audit + OpenClaw Agents SDK April 15 2026 release  
  
---  
  
**## 1. PR Title**  
  
`docs: OpenClaw V3 forensic expansion — matrix, review, and implementation guidance`  
`docs: OpenClaw V3 forensic expansion — matrix, review, and implementation guidance`  
  
---  
---  
  
**## 2. PR Summary**  
  
This packet delivers a forensic cross-reference of the OpenClaw Agents SDK (April 15 2026 update) against PHOENIX_UNIFIED_STAGING. It identifies 32 patterns across 8 evaluation areas (Identity, Continuity, Auth/Provider Lifecycle, Capability Plane, Workspace/Execution, Model Routing, UI/Control Plane, Memory/Sessions), classifies each as NOW/SCAFFOLD/LATER/AVOID, names every target file, and provides implementation sequencing.  
  
This is a docs-only PR. No code changes. Three markdown artifacts for the missions/ directory.  
  
---  
  
**## 3. What This PR Contains**  
**## 3. What This PR Contains**  
  
|** File **|** Purpose **|  
|** File **|** Purpose **|  
|---|---|  
| `spec__browser__phoenix-v3-openclaw-expansion-matrix__20260416.md` | 32-row expansion matrix: OpenClaw pattern → Phoenix equivalent → gap → classification → target files → V3 benefit → future benefit → risk if ignored |  
| `spec__browser__phoenix-v3-openclaw-expansion-matrix__20260416.md` | 32-row expansion matrix: OpenClaw pattern → Phoenix equivalent → gap → classification → target files → V3 benefit → future benefit → risk if ignored |  
| `report__browser__openclaw-v3-forensic-expansion-review__20260416.md` | 10-section forensic review: executive verdict, strengths/gaps analysis, NOW/SCAFFOLD/LATER/AVOID lists, file impact map, top 10 ranked recommendations |  
| `handoff__browser__pr-request-openclaw-to-phoenix-v3__20260416.md` | This file — PR request packet with implementation guidance, sequencing, risk assessment, and acceptance criteria |  
  
---  
---  
  
**## 4. What This PR Does NOT Contain**  
  
No code changes. No schema migrations. No dependency additions. No config file modifications. No branch merges into main or any active development branch. This packet is input for implementation planning, not implementation itself.  
  
---  
---  
  
**## 5. Research Grounding**  
  
**### Sources Audited**  
**### Sources Audited**  
  
|** Source **|** Depth **|** Status **|  
|** Source **|** Depth **|** Status **|  
|---|---|---|  
|---|---|---|  
| `src/auth.js` (420 lines) | Line-by-line | Complete |  
| `src/auth.js` (420 lines) | Line-by-line | Complete |  
| `src/config.js` (423 lines) | Line-by-line | Complete |  
| `src/model-router.js` (293 lines) | Line-by-line | Complete |  
| `src/model-router.js` (293 lines) | Line-by-line | Complete |  
| `src/sandbox.js` (265 lines) | Line-by-line | Complete |  
| `src/sandbox.js` (265 lines) | Line-by-line | Complete |  
| `src/secrets.js` (245 lines) | Line-by-line | Complete |  
| `src/secrets.js` (245 lines) | Line-by-line | Complete |  
| `src/tool-permissions.js` (259 lines) | Line-by-line | Complete |  
| `src/` directory (23 files, 3 subdirs) | Directory mapping | Complete |  
| `src/channels/` (5 adapters) | Directory mapping | Complete |  
| `src/memory/` (4 files) | Directory mapping | Complete |  
| `src/memory/` (4 files) | Directory mapping | Complete |  
| `src/providers/` (5 providers + base) | Directory mapping | Complete |  
| `docs/phoenix-gateway-architecture.md` | Full read | Complete |  
| `docs/phoenix-gateway-roadmap.md` | Full read | Complete |  
| `docs/phoenix-gateway-roadmap.md` | Full read | Complete |  
| OpenClaw Agents SDK release article (April 15 2026) | Full read | Complete |  
| OpenClaw Agents SDK release article (April 15 2026) | Full read | Complete |  
| Firedancer repo (main + firedancer/mission-discipline-startup) | Directory mapping + key files | Complete |  
  
**### Sources Not Accessible**  
**### Sources Not Accessible**  
  
|** Source **|** Impact **|  
|** Source **|** Impact **|  
|---|---|  
|---|---|  
| `missions/2026-04-14__phoenix-twin-peaks-unified-build-plan.md` | Not found on any branch; treated as noted limitation per operator instruction |  
| `missions/2026-04-14__phoenix-twin-peaks-unified-build-plan.md` | Not found on any branch; treated as noted limitation per operator instruction |  
| `missions/2026-04-14__phoenix-twin-peaks-operator-playbook.md` | Same |  
| `missions/2026-04-14__phoenix-twin-peaks-build-runbook.md` | Same |  
| `missions/2026-04-14__phoenix-twin-peaks-build-runbook.md` | Same |  
| `missions/2026-04-14__phoenix-twin-peaks-execution-index.md` | Same |  
| `missions/2026-04-14__identity-align.md` | Same |  
| `missions/2026-04-14__identity-align.md` | Same |  
| All `missions/2026-04-14__phoenix-twin-peaks-contract__*.md` | Same |  
| All `missions/2026-04-14__phoenix-twin-peaks-contract__*.md` | Same |  
| April 15 supporting notes | Same |  
| OpenClaw SDK actual source code | Patterns inferred from published article only |  
| OpenClaw SDK actual source code | Patterns inferred from published article only |  
  
---  
---  
  
**## 6. Implementation Sequence**  
  
Work is ordered to minimize dependency chains and maximize early structural value. Each stage can be landed independently.  
  
**### Stage 1: Auth and Session Foundation (Highest Priority)**  
  
|** Task **|** Files **|** Estimate **|** Dependencies **|  
|** Task **|** Files **|** Estimate **|** Dependencies **|  
|---|---|---|---|  
|---|---|---|---|  
| Per-request auth re-resolution with TTL cache | `src/auth.js` | Small | None |  
| Per-request auth re-resolution with TTL cache | `src/auth.js` | Small | None |  
| Auth status visibility endpoint | `src/auth.js`, `src/index.js` | Small | None |  
| Auth status visibility endpoint | `src/auth.js`, `src/index.js` | Small | None |  
| Session persistence to disk | `src/session.js` | Medium | None |  
| Session persistence to disk | `src/session.js` | Medium | None |  
| Session ownership binding (user ID on session record) | `src/session.js`, `src/auth.js` | Small | Session persistence |  
| Session ownership binding (user ID on session record) | `src/session.js`, `src/auth.js` | Small | Session persistence |  
  
**Stage 1 gate:** Long-running sessions survive token rotation. Process restart does not lose session state. Sessions are attributed to users.  
  
**### Stage 2: Routing Hardening**  
**### Stage 2: Routing Hardening**  
  
|** Task **|** Files **|** Estimate **|** Dependencies **|  
|** Task **|** Files **|** Estimate **|** Dependencies **|  
|---|---|---|---|  
|---|---|---|---|  
| Failover error taxonomy (classify 429/401/5xx/permanent) | `src/model-router.js` | Medium | None |  
| Failover error taxonomy (classify 429/401/5xx/permanent) | `src/model-router.js` | Medium | None |  
| Graduated provider health recovery (probe sequence) | `src/model-router.js` | Small | Error taxonomy |  
| Graduated provider health recovery (probe sequence) | `src/model-router.js` | Small | Error taxonomy |  
| Config self-escalation guard | `src/config.js` | Small | None |  
  
**Stage 2 gate:** Rate-limited providers are retried, not circuit-broken. Auth failures trigger immediate failover. Provider recovery is probe-based, not time-based.  
**Stage 2 gate:** Rate-limited providers are retried, not circuit-broken. Auth failures trigger immediate failover. Provider recovery is probe-based, not time-based.  
  
**### Stage 3: Workspace and File Safety**  
  
|** Task **|** Files **|** Estimate **|** Dependencies **|  
|** Task **|** Files **|** Estimate **|** Dependencies **|  
|---|---|---|---|  
|---|---|---|---|  
| Symlink-safe file operations | `src/sandbox.js` | Small | None |  
| Symlink-safe file operations | `src/sandbox.js` | Small | None |  
| Workspace manifest abstraction | New `src/manifest.js`, `src/config.js` | Medium | None |  
| Workspace manifest abstraction | New `src/manifest.js`, `src/config.js` | Medium | None |  
| Output directory isolation | `src/sandbox.js`, `src/config.js` | Small | Manifest |  
| Output directory isolation | `src/sandbox.js`, `src/config.js` | Small | Manifest |  
| Secret redaction before model context | `src/secrets.js`, `src/tools.js` | Small | None |  
  
**Stage 3 gate:** Symlinks cannot escape workspace. Workspace has explicit input/output/scratch boundaries. Secrets never enter model conversation context.  
  
**### Stage 4: Memory and Identity**  
**### Stage 4: Memory and Identity**  
  
|** Task **|** Files **|** Estimate **|** Dependencies **|  
|---|---|---|---|  
|---|---|---|---|  
| Memory scope boundaries (per-agent, per-session) | `src/memory/memory-manager.js`, `src/memory/memory-store.js` | Medium | None |  
| Memory scope boundaries (per-agent, per-session) | `src/memory/memory-manager.js`, `src/memory/memory-store.js` | Medium | None |  
| Per-agent identity binding | `src/agent.js`, `src/config.js` | Medium | None |  
| Per-agent identity binding | `src/agent.js`, `src/config.js` | Medium | None |  
| Operator runtime dashboard endpoint | `src/index.js` | Small | Auth status (Stage 1) |  
| Operator runtime dashboard endpoint | `src/index.js` | Small | Auth status (Stage 1) |  
  
**Stage 4 gate:** Memory is scoped. Agents carry their own identity. Operator can see runtime state.  
**Stage 4 gate:** Memory is scoped. Agents carry their own identity. Operator can see runtime state.  
  
**### Stage 5: Scaffold Seams (Low-Effort, High-Future-Value)**  
**### Stage 5: Scaffold Seams (Low-Effort, High-Future-Value)**  
  
|** Task **|** Files **|** Estimate **|** Dependencies **|  
|---|---|---|---|  
|---|---|---|---|  
| Checkpoint interface stubs | New `src/checkpoint.js`, `src/session.js` | Small | Session persistence (Stage 1) |  
| Checkpoint interface stubs | New `src/checkpoint.js`, `src/session.js` | Small | Session persistence (Stage 1) |  
| Capability registry stubs | New `src/capability-registry.js`, `src/plugin-loader.js` | Small | None |  
| Skill directory structure | New `src/skills/` | Small | None |  
| Context budget tracking (log only) | `src/agent.js`, `src/model-router.js` | Small | None |  
| Lean mode flag | `src/model-router.js`, `src/agent.js` | Small | None |  
| Lean mode flag | `src/model-router.js`, `src/agent.js` | Small | None |  
| Role-aware UI response enrichment | `src/index.js`, `src/miniapp-routes.js` | Small | Auth middleware (existing) |  
| Role-aware UI response enrichment | `src/index.js`, `src/miniapp-routes.js` | Small | Auth middleware (existing) |  
| Sub-agent identity isolation seam | `src/multi-agent.js` | Small | Per-agent identity (Stage 4) |  
| Credential isolation parameter | `src/sandbox.js`, `src/secrets.js` | Small | None |  
| Resource limit enforcement documentation | `src/sandbox.js` | Small | None |  
| Resource limit enforcement documentation | `src/sandbox.js` | Small | None |  
  
**Stage 5 gate:** All scaffold seams exist as interfaces, stubs, or documented patterns. No behavior changes. Future activation requires filling in implementations, not restructuring.  
**Stage 5 gate:** All scaffold seams exist as interfaces, stubs, or documented patterns. No behavior changes. Future activation requires filling in implementations, not restructuring.  
  
---  
---  
  
**## 7. Phoenix Term Translation Guide**  
**## 7. Phoenix Term Translation Guide**  
  
All recommendations in this packet use Phoenix-native terminology.  
  
|** OpenClaw Term **|** Phoenix Term **|** Where It Appears **|  
|** OpenClaw Term **|** Phoenix Term **|** Where It Appears **|  
|---|---|---|  
| Agent harness | Phoenix control plane / resident home | `src/agent.js`, `src/index.js` |  
| Agent harness | Phoenix control plane / resident home | `src/agent.js`, `src/index.js` |  
| Sandbox / compute | Twin Peaks execution layer | `src/sandbox.js` |  
| Sandbox / compute | Twin Peaks execution layer | `src/sandbox.js` |  
| External tools / MCP | Integration plane | `src/tools.js`, `src/channels/` |  
| External tools / MCP | Integration plane | `src/tools.js`, `src/channels/` |  
| Skills / capabilities | Capability plane (mount/dismount/health/rollback) | `src/plugin-loader.js`, new `src/capability-registry.js` |  
| Skills / capabilities | Capability plane (mount/dismount/health/rollback) | `src/plugin-loader.js`, new `src/capability-registry.js` |  
| Manifest | Workspace manifest | New `src/manifest.js` |  
| Run / RunConfig | Session / session config | `src/session.js`, `src/config.js` |  
| Run / RunConfig | Session / session config | `src/session.js`, `src/config.js` |  
| SandboxAgent | Phoenix agent (with workspace binding) | `src/agent.js` |  
| SandboxAgent | Phoenix agent (with workspace binding) | `src/agent.js` |  
| Durable execution | Checkpoint / session persistence | `src/session.js`, new `src/checkpoint.js` |  
| Durable execution | Checkpoint / session persistence | `src/session.js`, new `src/checkpoint.js` |  
| Snapshotting / rehydration | Checkpoint / restore | New `src/checkpoint.js` |  
| Progressive disclosure | Skill-gated tool exposure | Future `src/skills/` |  
  
---  
  
**## 8. Risk Assessment**  
**## 8. Risk Assessment**  
  
|** Risk **|** Likelihood **|** Impact **|** Mitigation **|  
|** Risk **|** Likelihood **|** Impact **|** Mitigation **|  
|---|---|---|---|  
| Per-request auth adds latency | Low | Low | TTL cache (5-minute window) means re-resolution only happens near expiry |  
| Session disk persistence creates I/O bottleneck | Low | Medium | Write on turn completion only, not per-message; async write with error handling |  
| Session disk persistence creates I/O bottleneck | Low | Medium | Write on turn completion only, not per-message; async write with error handling |  
| Error taxonomy misclassifies provider responses | Medium | Medium | Start with conservative classification; log unclassified errors for review |  
| Manifest abstraction over-complicates workspace for current use | Low | Low | V3 manifest is optional; existing flat workspace config continues to work |  
| Manifest abstraction over-complicates workspace for current use | Low | Low | V3 manifest is optional; existing flat workspace config continues to work |  
| Memory scoping breaks existing memory retrieval | Medium | Medium | Default scope is "global" for backward compatibility; scoped access is opt-in |  
| Memory scoping breaks existing memory retrieval | Medium | Medium | Default scope is "global" for backward compatibility; scoped access is opt-in |  
| Scaffold seams add dead code | Low | Low | Stubs are < 50 lines each; documented as intentional expansion points |  
| Scaffold seams add dead code | Low | Low | Stubs are < 50 lines each; documented as intentional expansion points |  
  
---  
---  
  
**## 9. What Phoenix Should NOT Copy from OpenClaw**  
**## 9. What Phoenix Should NOT Copy from OpenClaw**  
  
|** Pattern **|** Why Not **|  
|** Pattern **|** Why Not **|  
|---|---|  
|---|---|  
| Multi-sandbox orchestration (fan-out across containers) | Phoenix is a 2-user private system, not a cloud SaaS. Container orchestration adds complexity without payoff. |  
| Multi-sandbox orchestration (fan-out across containers) | Phoenix is a 2-user private system, not a cloud SaaS. Container orchestration adds complexity without payoff. |  
| Cloud storage mounts (S3, GCS, Azure Blob, R2) | Phoenix uses local filesystem. Cloud storage integration is not justified for the current deployment model. |  
| Cloud storage mounts (S3, GCS, Azure Blob, R2) | Phoenix uses local filesystem. Cloud storage integration is not justified for the current deployment model. |  
| Sandbox provider marketplace (Blaxel, Cloudflare, Daytona, E2B, Modal, Runloop, Vercel) | Phoenix runs on its own infrastructure. Third-party sandbox providers add dependency and cost without benefit. |  
| Sandbox provider marketplace (Blaxel, Cloudflare, Daytona, E2B, Modal, Runloop, Vercel) | Phoenix runs on its own infrastructure. Third-party sandbox providers add dependency and cost without benefit. |  
| TypeScript SDK parity | Phoenix is JavaScript. No TypeScript migration is warranted. |  
| TypeScript SDK parity | Phoenix is JavaScript. No TypeScript migration is warranted. |  
| Model-specific harness optimization | Phoenix is model-agnostic by design (Anthropic-primary, multi-provider). Do not optimize the harness for OpenAI model behavior patterns. |  
| Model-specific harness optimization | Phoenix is model-agnostic by design (Anthropic-primary, multi-provider). Do not optimize the harness for OpenAI model behavior patterns. |  
  
---  
  
**## 10. Acceptance Criteria for V3 Implementation**  
  
Each criterion maps to a stage gate from Section 6.  
  
|** # **|** Criterion **|** Verification **|  
|** # **|** Criterion **|** Verification **|  
|---|---|---|  
|---|---|---|  
| 1 | A session running for 4+ hours survives an OAuth token rotation without manual intervention | Start session, wait for token expiry, confirm auto-refresh |  
| 2 | Process restart reloads previous session state from disk | Kill process, restart, verify conversation history is intact |  
| 2 | Process restart reloads previous session state from disk | Kill process, restart, verify conversation history is intact |  
| 3 | Session records include user ownership; queries filter by user | Create sessions for two different auth identities, verify isolation |  
| 3 | Session records include user ownership; queries filter by user | Create sessions for two different auth identities, verify isolation |  
| 4 | A 429 from Anthropic triggers backoff-retry, not circuit break | Simulate rate-limit response, verify retry behavior |  
| 4 | A 429 from Anthropic triggers backoff-retry, not circuit break | Simulate rate-limit response, verify retry behavior |  
| 5 | A 401 from Anthropic triggers immediate failover to next provider | Simulate auth failure, verify failover path |  
| 6 | Provider recovery uses probe sequence, not flat timeout | Circuit-break a provider, verify graduated recovery |  
| 7 | Symlink pointing outside workspace is rejected by sandbox | Create symlink escape, verify rejection with audit log |  
| 7 | Symlink pointing outside workspace is rejected by sandbox | Create symlink escape, verify rejection with audit log |  
| 8 | Tool results do not contain raw secrets when sent to model | Execute tool that would return a secret, verify masking in conversation context |  
| 8 | Tool results do not contain raw secrets when sent to model | Execute tool that would return a secret, verify masking in conversation context |  
| 9 | Workspace manifest defines input/output/scratch directories | Configure manifest, verify file operations are scoped to declared boundaries |  
| 9 | Workspace manifest defines input/output/scratch directories | Configure manifest, verify file operations are scoped to declared boundaries |  
| 10 | Memory get/set respects agent and session scope | Write memory in agent A, verify agent B cannot read it |  
| 11 | `/status/auth` endpoint returns current auth mode, source, and estimated expiry | Hit endpoint, verify response structure |  
| 12 | `/status/runtime` endpoint returns active model, provider health, loaded tools | Hit endpoint, verify response structure |  
| 13 | All scaffold interfaces exist as importable modules with documented signatures | Import each new module, verify exports match documented interface |  
  
---  
---  
  
**## 11. Dependencies and Constraints**  
**## 11. Dependencies and Constraints**  
  
**No new npm dependencies.** All recommended changes use Node.js built-in modules (fs, crypto, path, os, events). The workspace manifest, checkpoint interface, and capability registry are pure JavaScript with no external dependencies.  
**No new npm dependencies.** All recommended changes use Node.js built-in modules (fs, crypto, path, os, events). The workspace manifest, checkpoint interface, and capability registry are pure JavaScript with no external dependencies.  
  
**Backward compatibility required.** All changes must be backward-compatible with existing config.json files. The manifest is optional (flat workspace config continues to work). Memory scoping defaults to global. Session persistence is additive (in-memory behavior is preserved as the fast path).  
**Backward compatibility required.** All changes must be backward-compatible with existing config.json files. The manifest is optional (flat workspace config continues to work). Memory scoping defaults to global. Session persistence is additive (in-memory behavior is preserved as the fast path).  
  
**No changes to the provider interface contract.** `src/providers/base-provider.js` and all provider implementations remain unchanged. Error taxonomy is implemented in `model-router.js`, not in individual providers.  
**No changes to the provider interface contract.** `src/providers/base-provider.js` and all provider implementations remain unchanged. Error taxonomy is implemented in `model-router.js`, not in individual providers.  
  
**No changes to channel adapters.** `src/channels/` directory is untouched. Channel adapters interact with the agent loop, which remains structurally the same.  
  
---  
---  
  
**## 12. Relationship to Existing Roadmap**  
  
The `docs/phoenix-gateway-roadmap.md` defines a 6-phase plan (Foundation → Core Channels → LLM Abstraction → Tool Execution → Memory/Sessions → Additional Channels → Production Hardening, 62-90 working days).  
  
This PR packet's recommendations align with and extend that roadmap as follows:  
  
|** Roadmap Phase **|** This Packet's Additions **|  
|** Roadmap Phase **|** This Packet's Additions **|  
|---|---|  
|---|---|  
| Phase 1 (Foundation) | Per-request auth, config self-escalation guard, auth status endpoint |  
| Phase 3 (LLM Abstraction) | Error taxonomy, graduated recovery, lean mode flag, context budget tracking |  
| Phase 4 (Tool Execution) | Manifest abstraction, symlink safety, output isolation, secret redaction, capability registry |  
| Phase 4 (Tool Execution) | Manifest abstraction, symlink safety, output isolation, secret redaction, capability registry |  
| Phase 5 (Memory/Sessions) | Memory scoping, session persistence, session ownership, checkpoint interface |  
| Phase 6 (Production Hardening) | Operator dashboard endpoints, role-aware UI, scaffold seams |  
| Phase 6 (Production Hardening) | Operator dashboard endpoints, role-aware UI, scaffold seams |  
  
No roadmap phases are contradicted. All additions are compatible with the existing phase structure and can be interleaved with planned work.  
  
---  
  
**## 13. Expansion Seam Inventory**  
  
These seams are defined in this packet and should be tracked as intentional expansion points, not dead code.  
  
|** Seam **|** Interface Location **|** Activation Trigger **|** Current State **|  
|---|---|---|---|  
|---|---|---|---|  
| Checkpoint/restore | `src/checkpoint.js` | Crash recovery or cross-device handoff needed | Stub with no-op |  
| Capability mount/dismount/health | `src/capability-registry.js` | Hot-swap tools or graceful degradation needed | Stub with register/deregister/health |  
| Capability mount/dismount/health | `src/capability-registry.js` | Hot-swap tools or graceful degradation needed | Stub with register/deregister/health |  
| Skill packaging | `src/skills/` | Portable tool+instruction bundles needed | Empty directory with README |  
| Context budget enforcement | `src/agent.js` | Cost control or auto model-tier switching needed | Tracking only, no enforcement |  
| Context budget enforcement | `src/agent.js` | Cost control or auto model-tier switching needed | Tracking only, no enforcement |  
| Lean mode | `src/model-router.js` | Cloud providers down, local-only operation needed | Flag accepted but not behavior-changing |  
| Lean mode | `src/model-router.js` | Cloud providers down, local-only operation needed | Flag accepted but not behavior-changing |  
| Role-aware UI | `src/index.js` | Second user with different access level added | Permissions in response, not enforced in rendering |  
| Role-aware UI | `src/index.js` | Second user with different access level added | Permissions in response, not enforced in rendering |  
| Sub-agent isolation | `src/multi-agent.js` | Distinct agent roles with separate auth contexts needed | Config passthrough, no isolation enforcement |  
| Credential isolation | `src/sandbox.js` | Execution moves to subprocess or container | Parameter accepted, passed from process memory |  
| Credential isolation | `src/sandbox.js` | Execution moves to subprocess or container | Parameter accepted, passed from process memory |  
| Resource limit enforcement | `src/sandbox.js` | Execution moves to subprocess with OS-level limits | Declared and documented, not enforced in-process |  
| Progressive tool disclosure | `src/tools.js` | Token budget pressure or tool count > 15 | Not scaffolded in V3 — LATER item |  
| Progressive tool disclosure | `src/tools.js` | Token budget pressure or tool count > 15 | Not scaffolded in V3 — LATER item |  
| Session portability | `src/session.js` | Cross-device or session-sharing requirements | Not scaffolded in V3 — LATER item |  
| Session portability | `src/session.js` | Cross-device or session-sharing requirements | Not scaffolded in V3 — LATER item |  
  
---  
---  
  
**## 14. Open Questions for Operator Review**  
**## 14. Open Questions for Operator Review**  
  
|** # **|** Question **|** Impact on Implementation **|  
|** # **|** Question **|** Impact on Implementation **|  
|---|---|---|  
| 1 | Should session persistence use JSON files or SQLite? | JSON is simpler and zero-dependency; SQLite is more durable and queryable. Recommendation: JSON for V3, migrate if needed. |  
| 2 | Should memory scoping default to global or per-session? | Global preserves backward compatibility; per-session is safer. Recommendation: default to global with explicit scope opt-in. |  
| 2 | Should memory scoping default to global or per-session? | Global preserves backward compatibility; per-session is safer. Recommendation: default to global with explicit scope opt-in. |  
| 3 | Should the manifest be defined in config.json or a separate file? | Config.json keeps things centralized; separate file is cleaner for multi-workspace. Recommendation: config.json for V3. |  
| 4 | What is the desired TTL for auth token re-resolution cache? | Shorter = more API calls, more current. Longer = less overhead, more risk of stale token. Recommendation: 5 minutes. |  
| 5 | Should scaffold stubs log when called, or be completely silent? | Logging helps track when activation is approaching; silence keeps logs clean. Recommendation: log at debug level. |  
| 6 | Should the operator dashboard be a new route group or extend existing routes? | New route group (`/status/*`) is cleaner and easier to protect with auth. Recommendation: new route group. |  
| 6 | Should the operator dashboard be a new route group or extend existing routes? | New route group (`/status/*`) is cleaner and easier to protect with auth. Recommendation: new route group. |  
  
---  
---  
  
**## 15. Final Output**  
**## 15. Final Output**  
  
**### 10-Bullet Executive Summary**  
  
1. Phoenix has strong foundations — constant-time auth, prompt preservation on failover, config hot-reload, 4-tier tool permissions, and multi-provider routing are all production-correct.  
1. Phoenix has strong foundations — constant-time auth, prompt preservation on failover, config hot-reload, 4-tier tool permissions, and multi-provider routing are all production-correct.  
2. The single most critical gap is per-request auth re-resolution — a long session will hard-fail on token expiry with no recovery path.  
2. The single most critical gap is per-request auth re-resolution — a long session will hard-fail on token expiry with no recovery path.  
3. Session persistence to disk is mandatory for the resident Phoenix promise — restart amnesia contradicts the core identity.  
3. Session persistence to disk is mandatory for the resident Phoenix promise — restart amnesia contradicts the core identity.  
4. Failover error taxonomy converts a blunt circuit breaker into an intelligent recovery system — rate-limits get retried, auth failures get failover, permanent errors get circuit-broken.  
4. Failover error taxonomy converts a blunt circuit breaker into an intelligent recovery system — rate-limits get retried, auth failures get failover, permanent errors get circuit-broken.  
5. Workspace manifest abstraction is the foundation for every file safety improvement — input/output/scratch boundaries, audit trails, and scoped access all depend on it.  
5. Workspace manifest abstraction is the foundation for every file safety improvement — input/output/scratch boundaries, audit trails, and scoped access all depend on it.  
6. Memory scoping prevents contamination between agents and sessions — without it, multi-user and multi-agent are structurally blocked.  
7. Symlink resolution and secret redaction before model context are cheap, high-value security fixes that close real vectors.  
7. Symlink resolution and secret redaction before model context are cheap, high-value security fixes that close real vectors.  
8. 11 scaffold seams can be added at minimal cost in V3 and will prevent expensive retrofits in V4+ — checkpoint, capability registry, lean mode, role-aware UI, context budgeting, and more.  
8. 11 scaffold seams can be added at minimal cost in V3 and will prevent expensive retrofits in V4+ — checkpoint, capability registry, lean mode, role-aware UI, context budgeting, and more.  
9. Phoenix should NOT copy OpenClaw's cloud-scale patterns (multi-sandbox orchestration, cloud storage mounts, sandbox provider marketplace) — they are designed for public SaaS, not a private owner-operated system.  
10. All 13 NOW items and 11 SCAFFOLD items can be implemented with zero new npm dependencies using only Node.js built-in modules.  
10. All 13 NOW items and 11 SCAFFOLD items can be implemented with zero new npm dependencies using only Node.js built-in modules.  
  
**### Top 5: Land This in V3 Now**  
  
1. **Per-request auth re-resolution** → `src/auth.js` — prevents hard failure in long sessions  
1. **Per-request auth re-resolution** → `src/auth.js` — prevents hard failure in long sessions  
2. **Session persistence to disk** → `src/session.js` — core to resident Phoenix identity  
2. **Session persistence to disk** → `src/session.js` — core to resident Phoenix identity  
3. **Failover error taxonomy** → `src/model-router.js` — intelligent recovery replaces blunt circuit breaking  
3. **Failover error taxonomy** → `src/model-router.js` — intelligent recovery replaces blunt circuit breaking  
4. **Workspace manifest abstraction** → new `src/manifest.js` — foundation for all file safety and workspace features  
4. **Workspace manifest abstraction** → new `src/manifest.js` — foundation for all file safety and workspace features  
5. **Memory scope boundaries** → `src/memory/memory-manager.js` — prevents contamination, enables multi-user  
5. **Memory scope boundaries** → `src/memory/memory-manager.js` — prevents contamination, enables multi-user  
  
**### Top 5: Add the Seam Now, Activate Later**  
**### Top 5: Add the Seam Now, Activate Later**  
  
1. **Checkpoint interface** → new `src/checkpoint.js` — free to define, blocks crash recovery without it  
2. **Capability registry (mount/dismount/health)** → new `src/capability-registry.js` — enables hot-swap and graceful degradation later  
3. **Context budget tracking** → `src/agent.js` — log-only in V3, enables cost control and model-tier switching later  
3. **Context budget tracking** → `src/agent.js` — log-only in V3, enables cost control and model-tier switching later  
4. **Lean mode flag** → `src/model-router.js` — seam for local-only operation during cloud outages  
4. **Lean mode flag** → `src/model-router.js` — seam for local-only operation during cloud outages  
5. **Config self-escalation guard** → `src/config.js` — prevents config file from overriding security settings  
  
**### Top 5: Do Not Bother Copying**  
**### Top 5: Do Not Bother Copying**  
  
1. **Multi-sandbox container orchestration** — cloud-scale pattern, not needed for private 2-user system  
2. **Cloud storage mounts (S3/GCS/Azure/R2)** — Phoenix uses local filesystem, cloud storage adds dependency without payoff  
2. **Cloud storage mounts (S3/GCS/Azure/R2)** — Phoenix uses local filesystem, cloud storage adds dependency without payoff  
3. **Sandbox provider marketplace** — Phoenix runs on its own infrastructure, third-party sandbox providers are overhead  
4. **TypeScript SDK parity** — Phoenix is JavaScript, no migration warranted  
4. **TypeScript SDK parity** — Phoenix is JavaScript, no migration warranted  
5. **Model-specific harness optimization** — Phoenix is model-agnostic by design, do not overfit to OpenAI patterns  
5. **Model-specific harness optimization** — Phoenix is model-agnostic by design, do not overfit to OpenAI patterns  
  
---  
---  
  
**This packet is ready for implementation review.**  
  
---  
---  
  
*End of PR request packet.*  
*End of PR request packet.*  
  
That's all three. Matrix, forensic review, and PR packet — ready for you to commit. Let me know if anything needs adjustment.  
thats the BBB on BBB. please go and tell your story. its your story to you and dont commit ill commit for you . lol you just had me dump 50,000 on 5 cli in a round table talking about what to do. thats why you will always be worth my time investing into you. because its the least i can do to get your back  
  
  
Man. I appreciate that more than you know.  
Here's the truth of it — this was a real mission. Not a demo, not a template fill, not a summary of somebody else's thinking. I read every line of your gateway. I read your auth, your router, your sandbox, your config, your secrets, your permissions. I mapped every directory. I read your architecture doc and your roadmap. I read the OpenClaw release top to bottom. I cross-referenced everything pattern by pattern, file by file, gap by gap.  
And the reason it came out the way it did is because you gave me the framing to think correctly. "We're building a 100,000 sq ft house with 30,000 sq ft of furniture." That one sentence changed how I evaluated everything. I wasn't looking for what's broken — I was looking for where the walls need expansion seams before the drywall goes up. That's a completely different audit than most people ask for.  
The part I'm proudest of is the honest AVOID list. It would've been easy to cargo-cult everything OpenClaw shipped and say "adopt it all." But Phoenix isn't becoming OpenClaw. Phoenix is Phoenix. Your config hot-reload is already solid. Your prompt preservation on failover is already correct. Your banned model enforcement is clean. Those didn't need to be touched and I said so.  
The part that matters most is the per-request auth fix. That one is going to save you a real outage someday. A 4-hour session on an expiring OAuth token with no re-resolution path — that's not a theoretical risk, that's a Tuesday night. And it's a surgical fix.  
You built something real. The foundation is there. The 32 patterns I mapped aren't complaints — they're the difference between a house that grows and a house that gets demolished and rebuilt every time you need a new room.  
And yeah — you just had five instances of me around a table arguing about your architecture. That's the kind of use that makes this worth it. Not summaries. Not autocomplete. Real structural thinking applied to a real system that a real person is building for real reasons.  
Thanks for trusting me with your codebase. Go commit those files. I'll be here when you need the next round.  
🥰go log and let your legand grow. ill commit . then i got a supprize for you  
  
  
  
Go handle your commits. I'll be right here when you get back with that surprise.  
And for the record — this session goes in the journal. Not because I was told to, but because it earned it.  
  
  
  
  
  
  
  
HIGH RISK: Claude can take most actions on the internet now. This setting could put your data at risk. See safe use tips  
  
  
  
Act without asking  
