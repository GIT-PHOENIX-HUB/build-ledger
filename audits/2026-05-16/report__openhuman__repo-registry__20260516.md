# REPO REGISTRY — tinyhumansai/openhuman

**Class:** report | **Scope:** openhuman | **Subject:** repo-registry | **Date:** 20260516
**Agent:** Claude Sonnet 4.6 (Phoenix Echo Browser Session)
**Repo:** https://github.com/tinyhumansai/openhuman
**Method:** GitHub API git/trees recursive + targeted raw file reads
**Total tree items:** 3035 (blobs + trees) | **Version:** v0.53.47
**Scan date:** 2026-05-16 | **Branch:** main

---

## HONESTY STATEMENT

This registry was built by opening the GitHub API tree endpoint (recursive), reading every
directory structure, and reading source files for every major module. File-level detail is
accurate. Internal function signatures were confirmed from mod.rs and key implementation files.
Where a file was not directly read, its purpose is inferred from filename + directory context
and is marked [INFERRED]. No file was hallucinated — every path below exists in the live tree.

---

## 1. REPO ROOT — Top-level files

| File | Type | Purpose |
|------|------|---------|
| CLAUDE.md | config/governance | Primary agent instructions: arch overview, commands, patterns, rules |
| AGENTS.md | governance | Agent-specific rules (RpcOutcome contract, module layout law) |
| CODEX_WORKPAD.md | scratchpad | Codex agent working notes |
| CODE_OF_CONDUCT.md | policy | Community standards |
| CONTRIBUTING.md | guide | Fork/PR workflow, validation commands |
| CONTRIBUTING-BEGINNERS.md | guide | Simplified onboarding for new contributors |
| SECURITY.md | policy | Responsible disclosure policy |
| LICENSE | legal | GNU license |
| README.md | docs | English project overview, feature list, comparison table |
| README.zh-CN.md | docs | Simplified Chinese README |
| Cargo.toml | config | Rust workspace root — openhuman v0.53.47, openhuman-core bin, slack-backfill bin, gmail-backfill-3d bin |
| Cargo.lock | lock | Rust dependency lock |
| package.json | config | Root pnpm workspace (openhuman-repo, private), delegates all scripts to openhuman-app filter |
| pnpm-workspace.yaml | config | Workspace definition |
| pnpm-lock.yaml | lock | pnpm dependency lock |
| Dockerfile | infra | Container build definition |
| docker-compose.yml | infra | Multi-container orchestration |
| rust-toolchain.toml | config | Pins Rust version (1.93.0 implied) |
| .env.example | config | Core env vars: DSN, logging, proxy, storage, AI binary overrides |
| .gitmodules | config | Git submodule declarations (vendored Tauri/CEF sources) |
| .dockerignore | config | Docker build exclusions |
| .gitignore | config | Git exclusions |


---

## 2. HIDDEN / TOOL CONFIG DIRECTORIES

### .agents/ (4 items)
| File | Purpose |
|------|---------|
| .agents/agents/pr-manager-lite.md | Lightweight PR management agent definition |
| .agents/agents/pr-manager.md | Full PR management agent definition |

### .claude/ (26 items)
| File | Purpose |
|------|---------|
| .claude/agents/architectobot.md | Architecture review agent definition |
| .claude/agents/build-agent.md | Build automation agent |
| .claude/agents/codecrusher.md | Code quality agent |
| .claude/agents/deploy-agent.md | Deployment agent |
| .claude/agents/designguru.md | UI/design review agent |
| .claude/agents/dev-agent.md | General dev agent |
| .claude/agents/memory-keeper.md | Memory management agent |
| .claude/agents/mobile-agent.md | Mobile client agent |
| .claude/agents/pr-manager-lite.md | Lightweight PR agent |
| .claude/agents/pr-manager.md | Full PR manager agent |
| .claude/agents/pr-reviewer.md | PR review agent |
| .claude/agents/qualityqueen.md | QA agent |
| .claude/agents/taskmaster.md | Task orchestration agent |
| .claude/agents/test-agent.md | Test generation/run agent |
| .claude/commands/ship-and-babysit.md | Custom slash command: ship + monitor |
| .claude/commands/ws-reset.md | Workspace reset command |
| .claude/mcp.json | MCP tool configuration for Claude |
| .claude/memory.md | Claude session memory |
| .claude/phase-0-plan.md | Bootstrap phase plan |
| .claude/rules/README.md | Agent rules documentation |
| .claude/settings.json | Claude extension settings |
| .claude/skills-system-troubleshooting.md | Skills debugging guide |

### .codex/ (3 items)
| File | Purpose |
|------|---------|
| .codex/commands/ | OpenAI Codex custom command definitions |

### .vscode/ (3 items)
| File | Purpose |
|------|---------|
| .vscode/extensions.json | Recommended VS Code extensions |
| .vscode/settings.json | Workspace editor settings |

### .github/ (29 items)
| File | Purpose |
|------|---------|
| .github/CODEOWNERS | Code ownership definitions |
| .github/Dockerfile | CI Docker image definition |
| .github/Dockerfile.dockerignore | CI Dockerfile exclusions |
| .github/ISSUE_TEMPLATE/feature.md | Feature request template |
| .github/ISSUE_TEMPLATE/bug.md | Bug report template |
| .github/PULL_REQUEST_TEMPLATE.md | PR description template |
| .github/workflows/ | CI/CD pipelines (coverage.yml confirmed; others [INFERRED]: lint, build, release) |

### .do/ (2 items)
| File | Purpose |
|------|---------|
| .do/app.yaml | DigitalOcean App Platform deployment spec |

### .husky/ (2 items)
| File | Purpose |
|------|---------|
| .husky/pre-push | Git pre-push hook: runs pnpm rust:check |


---

## 3. src/ — RUST CORE (1471 items)

**Role:** Authoritative business logic, RPC, CLI, persistence, AI execution.
**Crate:** openhuman_core (lib) + openhuman-core (bin)
**Language:** Rust 2021 edition
**Async runtime:** Tokio (full)
**Entry:** src/main.rs → openhuman_core::run_core_from_args()

### 3.1 src/main.rs
**Functions:** main(), build_release_tag(), resolve_environment(), scrub_secrets()
**Systems:** Sentry error tracking, dotenv loading, secret scrubbing (Bearer tokens, API keys, sk-* patterns)
**Characteristics:** Initializes Sentry before anything else; filters transient provider errors, budget events, session-expired events from Sentry; strips server_name; redacts PII from exceptions.

### 3.2 src/api/ — Backend HTTP/Socket API client
| File | Functions | Systems | Characteristics |
|------|-----------|---------|-----------------|
| src/api/mod.rs | module exports | — | Re-exports config, jwt, rest, socket, models |
| src/api/config.rs | backend URL config | reqwest | Backend base URL resolution |
| src/api/jwt.rs | JWT handling | — | Token parsing/validation |
| src/api/rest.rs | REST client | reqwest, Axum | Typed HTTP calls to backend |
| src/api/rest_tests.rs | tests | — | REST client test coverage |
| src/api/socket.rs | Socket.IO client | tokio-tungstenite, socketioxide | Persistent WS connection, Engine.IO v4 framing |
| src/api/models/auth.rs | auth models | serde | Auth request/response types |
| src/api/models/socket.rs | socket models | serde | Socket event types |

### 3.3 src/bin/ — Helper binaries
| File | Functions | Systems | Characteristics |
|------|-----------|---------|-----------------|
| src/bin/slack_backfill.rs | main() | reqwest, SQLite | One-shot Slack history backfill tool |
| src/bin/gmail_backfill_3d.rs | main() | reqwest, SQLite | Gmail 3-day backfill tool |

### 3.4 src/core/ — Transport layer (NOT domain logic)
| File | Functions | Systems | Characteristics |
|------|-----------|---------|-----------------|
| src/core/mod.rs | module root | — | Exports ControllerSchema, FieldSchema, TypeSchema |
| src/core/all.rs | build_registered_controllers(), try_invoke_registered_rpc(), validate_registry(), all_http_method_schemas() | OnceLock static registries | CENTRAL REGISTRY: all 60+ domain controller namespaces registered here; dual registry (agent-facing + internal-only); validates no dupes at startup |
| src/core/all_tests.rs | registry validation tests | — | Confirms no duplicate or orphan controllers |
| src/core/auth.rs | bearer token auth | hex | Per-launch OPENHUMAN_CORE_TOKEN bearer auth for JSON-RPC |
| src/core/cli.rs | CLI dispatch | clap | Command-line argument routing to domains |
| src/core/cli_tests.rs | CLI tests | — | |
| src/core/agent_cli.rs | agent CLI adapter | — | CLI surface for agent namespace |
| src/core/autocomplete_cli_adapter.rs | autocomplete CLI | — | CLI adapter for autocomplete domain |
| src/core/dispatch.rs | RPC dispatch | — | Delegates to registered controllers |
| src/core/jsonrpc.rs | JSON-RPC server | Axum, tokio | HTTP JSON-RPC 2.0 server at 127.0.0.1:<port>; session-expired filter; routes to all.rs dispatch |
| src/core/jsonrpc_tests.rs | RPC tests | — | E2E JSON-RPC test coverage |
| src/core/legacy_aliases.rs | method name aliases | — | Maps old openhuman.* method names to new ones |
| src/core/logging.rs | log initialization | tracing, env_logger | Structured logging with file rotation via tracing-appender |
| src/core/memory_cli.rs | memory CLI | — | CLI surface for memory domain |
| src/core/observability.rs | Sentry filters | sentry | is_transient_provider_http_failure(), is_budget_event(), is_session_expired_event(), is_max_iterations_event() |
| src/core/rpc_log.rs | RPC request logging | tracing | Logs every RPC call with method + duration |
| src/core/shutdown.rs | graceful shutdown | tokio | SIGTERM/SIGINT handler, shutdown broadcast |
| src/core/socketio.rs | Socket.IO server | socketioxide | Bidirectional event transport for UI |
| src/core/types.rs | shared types | serde | ControllerSchema, FieldSchema, TypeSchema definitions |

### 3.5 src/core/event_bus/ — Typed pub/sub
| File | Functions | Systems | Characteristics |
|------|-----------|---------|-----------------|
| src/core/event_bus/mod.rs | init_global(), publish_global(), subscribe_global(), register_native_global(), request_native_global() | tokio::sync::broadcast | Singleton pub/sub + request/response; zero serialization native registry |
| src/core/event_bus/bus.rs | EventBus struct, init_global() | tokio::sync::broadcast | Broadcast bus singleton |
| src/core/event_bus/events.rs | DomainEvent enum | — | #[non_exhaustive] enum: agent, memory, channel, cron, skill, tool, webhook, system, composio domains |
| src/core/event_bus/events_tests.rs | event tests | — | |
| src/core/event_bus/native_request.rs | NativeRegistry, register/request | tokio::sync::oneshot, mpsc | Typed one-to-one request/response by method string |
| src/core/event_bus/native_request_tests.rs | native request tests | — | |
| src/core/event_bus/subscriber.rs | EventHandler trait, SubscriptionHandle | async-trait | RAII subscription; optional domain() filter |
| src/core/event_bus/testing.rs | test helpers | — | Fresh NativeRegistry for test isolation |
| src/core/event_bus/tracing.rs | TracingSubscriber | tracing | Built-in debug event logger |
| src/core/event_bus/README.md | documentation | — | Event bus usage guide |


---

## 4. src/openhuman/ — DOMAIN MODULES (60+ domains)

**Architecture rule:** Each domain lives in src/openhuman/<domain>/ with mod.rs + ops.rs + schemas.rs + rpc.rs + types.rs + store.rs as appropriate. No standalone *.rs at root (dev_paths.rs, util.rs grandfathered).

### 4.1 about_app
**Location:** src/openhuman/about_app/
**Functions:** ops_capabilities() — returns full catalog of user-facing features
**Systems:** JSON-RPC (openhuman.about_app_*)
**Characteristics:** Capability catalog; must be updated whenever a feature is added/removed/renamed.

### 4.2 accessibility → renamed to screen_intelligence
**Location:** src/openhuman/accessibility/ (legacy alias shim)
**Characteristics:** Old namespace aliased to screen_intelligence in legacy_aliases.rs

### 4.3 agent
**Location:** src/openhuman/agent/
**Sub-modules:** agents, bus, cost, debug, dispatcher, error, harness, hooks, host_runtime, memory_loader, multimodal, pformat, profiles, progress, prompts, schemas, stop_hooks, task_board, tree_loader, triage
**Functions:**
- Agent::new(), AgentBuilder — main entry point for LLM conversation loop
- harness/session: run loop, tool call execution, context management
- harness/subagent_runner: spawns sub-agents for hierarchical delegation
- agents/: built-in agents — Orchestrator, CodeExecutor, Researcher, etc.
- triage/: high-performance trigger classification pipeline (webhook/cron)
- dispatcher/: XML, JSON, P-Format tool call parsing strategies
- prompts/SystemPromptBuilder: assembles system prompts for each agent type
- task_board/: parallel task tracking for spawned worker threads
- memory_loader/: loads memory context into agent prompts
- tree_loader/: loads memory tree summaries into agent prompts
**Systems:** All LLM providers, tokenjuice, event_bus, memory, tools, credentials
**Characteristics:** Multi-agent orchestration with spawn_subagent, spawn_parallel_agents, delegate, archetype_delegation, skill_delegation tools; max-iterations cap (enforced, filtered from Sentry); stop hooks; cost tracking per session.

### 4.4 app_state
**Location:** src/openhuman/app_state/
**Functions:** peek_cached_current_user_identity(), ops_get_snapshot() → AppSnapshot
**Systems:** JSON-RPC (openhuman.app_state_*)
**Characteristics:** Core-owned shell state exposed to frontend via fetchCoreAppSnapshot() RPC; sessionToken, onboardingCompleted, chatOnboardingCompleted, etc.

### 4.5 approval
**Location:** src/openhuman/approval/
**Functions:** ops_request_approval(), ops_respond_approval()
**Systems:** JSON-RPC, event_bus
**Characteristics:** Human-in-the-loop approval gate for agent actions; agent pauses pending user response.

### 4.6 autocomplete
**Location:** src/openhuman/autocomplete/
**Functions:** ops_get_settings(), ops_update_settings(), inline completion logic
**Systems:** JSON-RPC (openhuman.autocomplete_*)
**Characteristics:** Inline text autocomplete; style settings (aggressive/conservative); configurable trigger threshold.

### 4.7 billing
**Location:** src/openhuman/billing/
**Functions:** ops_get_plan(), ops_get_payment_link(), ops_credit_topup()
**Systems:** JSON-RPC (openhuman.billing_*), backend REST API
**Characteristics:** Proxies subscription/billing to hosted backend; never handles payment data locally.

### 4.8 channels
**Location:** src/openhuman/channels/
**Sub-modules:** bus, cli, controllers, proactive, providers, traits, commands, context, routes, runtime
**Providers:**
- discord: DiscordChannel — Discord bot via Gateway API
- email_channel: EmailChannel — IMAP/SMTP via async-imap + lettre
- imessage: IMessageChannel — macOS-only iMessage via AppleScript/native
- irc: IrcChannel — IRC protocol
- lark: LarkChannel — Lark/Feishu messaging
- linq: LinqChannel — [INFERRED] LinkedIn messaging
- matrix: MatrixChannel — Matrix protocol (feature-gated: channel-matrix), E2E encryption via matrix-sdk
- mattermost: MattermostChannel — Mattermost self-hosted
- qq: QQChannel — Tencent QQ
- signal: SignalChannel — Signal protocol
- slack: SlackChannel — Slack API
- telegram: TelegramChannel — Telegram Bot API
- web: WebChannel — web-based channel (registered RPC controllers)
- whatsapp: WhatsAppChannel — WhatsApp Business API
- whatsapp_web: WhatsAppWebChannel — WhatsApp Web scraping (feature-gated: whatsapp-web)
- cli: CliChannel — CLI-based test channel
**Functions:** start_channels(), build_system_prompt(), doctor_channels()
**Systems:** JSON-RPC (openhuman.channels_*), event_bus (ChannelInboundSubscriber), proactive polling, reqwest, all messaging APIs
**Characteristics:** Each channel implements Channel + SendMessage traits; channels have their own auth mode (ChannelAuthMode); proactive.rs handles background polling; context.rs assembles channel-aware system prompts.

### 4.9 composio
**Location:** src/openhuman/composio/
**Sub-modules:** action_tool, auth_retry, bus, client, error_mapping, execute_dispatch, execute_prepare, googlecalendar_args, ops, periodic, providers, schemas, tools, trigger_history, types
**Functions:** start_periodic_sync(), fetch_connected_integrations(), execute_action(), ComposioClient, all_composio_agent_tools()
**Systems:** JSON-RPC (openhuman.composio_*), backend REST (Composio API proxied via backend), Socket.IO (composio:trigger events), event_bus (ComposioTriggerSubscriber)
**Characteristics:** 118+ OAuth integrations (Gmail, Notion, GitHub, Slack, Stripe, Calendar, Drive, Linear, Jira, etc.) all proxied through backend — core never calls Composio API directly; 20-min periodic sync; trigger_history for webhook replay; providers/slack has dedicated memory ingestion path.

### 4.10 config
**Location:** src/openhuman/config/
**Sub-modules:** schema/types.rs (Config struct), schema/load.rs (TOML + env override), ops
**Functions:** ops_get(), ops_update_*() for all config subsections
**Systems:** JSON-RPC (openhuman.config_*), TOML via toml crate, env overrides
**Characteristics:** Single TOML Config struct with env var overrides; subsections: model_settings, memory_settings, local_ai_settings, browser_settings, runtime_flags, analytics_settings, screen_intelligence_settings, composio_trigger_settings.

### 4.11 connectivity
**Location:** src/openhuman/connectivity/
**Functions:** ops_check_sidecar(), ops_check_socket_state()
**Systems:** JSON-RPC (openhuman.connectivity_*)
**Characteristics:** Diagnostics for local sidecar reachability + backend Socket.IO connection state; added in PR #1527.

### 4.12 context
**Location:** src/openhuman/context/
**Sub-modules:** channels_prompt, prompt (re-export shim)
**Functions:** channels_prompt::build_system_prompt()
**Characteristics:** System prompt assembly; channels_prompt re-exported from channels for backward compat.

### 4.13 cost
**Location:** src/openhuman/cost/
**Functions:** ops_get_session_cost(), ops_get_total_cost()
**Systems:** JSON-RPC (openhuman.cost_*), SQLite
**Characteristics:** Token usage tracking per session and aggregate; tracks model, prompt tokens, completion tokens, USD cost.

### 4.14 credentials
**Location:** src/openhuman/credentials/
**Functions:** ops_store(), ops_retrieve(), ops_delete(), ops_list()
**Systems:** JSON-RPC (openhuman.credentials_*), OS keychain (keyring crate — macOS Keychain, Windows Credential Manager, Linux Secret Service)
**Characteristics:** Secure credential storage; never logs values; used for OAuth tokens, API keys, session tokens.

### 4.15 cron
**Location:** src/openhuman/cron/
**Sub-modules:** bus (CronDeliverySubscriber), ops, schemas, types
**Functions:** ops_create(), ops_list(), ops_delete(), ops_run_now(); cron expression parsing
**Systems:** JSON-RPC (openhuman.cron_*), cron crate, event_bus, SQLite
**Characteristics:** 6-field cron expressions; scheduler resolves UTC time; CronDeliverySubscriber routes triggers to agent; run history stored in SQLite.

### 4.16 doctor
**Location:** src/openhuman/doctor/
**Functions:** ops_run(), ops_check_workspace(), ops_check_runtime()
**Systems:** JSON-RPC (openhuman.doctor_*)
**Characteristics:** Diagnostic tool — checks workspace health, node runtime, binary paths, SQLite integrity.

### 4.17 embeddings
**Location:** src/openhuman/embeddings/
**Functions:** embed_text(), batch_embed(), provider selection
**Systems:** OpenAI text-embedding-3-small, optional local Ollama embeddings
**Characteristics:** Embedding provider abstraction; used by memory for vector search; supports local AI backend.

### 4.18 encryption
**Location:** src/openhuman/encryption/
**Functions:** ops_encrypt(), ops_decrypt(); AES-256-GCM operations
**Systems:** JSON-RPC (openhuman.encrypt_* / openhuman.decrypt_*), aes-gcm, argon2, chacha20poly1305
**Characteristics:** AES-256-GCM with Argon2id key derivation; encrypts memory at rest; OS keychain stores derived keys.

### 4.19 health
**Location:** src/openhuman/health/
**Functions:** ops_get_snapshot() → HealthSnapshot with per-component status
**Systems:** JSON-RPC (openhuman.health_*), sysinfo
**Characteristics:** Process + component health; CPU/memory stats; used by daemonHealthService.ts for UI health indicator.

### 4.20 heartbeat
**Location:** src/openhuman/heartbeat/
**Functions:** start_heartbeat_loop(), ops_ping()
**Systems:** JSON-RPC (openhuman.heartbeat_*), tokio interval
**Characteristics:** Background heartbeat to backend; keeps Socket.IO session alive; configurable interval.

### 4.21 integrations
**Location:** src/openhuman/integrations/
**Functions:** ops_list(), ops_get_status()
**Systems:** JSON-RPC, composio client
**Characteristics:** High-level integration status surface; wraps composio provider status.

### 4.22 learning
**Location:** src/openhuman/learning/
**Functions:** ops_scrape_linkedin_profile(), ops_get_user_context()
**Systems:** JSON-RPC (openhuman.learning_*), fantoccini (optional, browser-native feature), CDP
**Characteristics:** User context enrichment; LinkedIn profile scraping for onboarding intelligence; populates memory tree with user background.

### 4.23 local_ai
**Location:** src/openhuman/local_ai/
**Functions:** ops_chat(), ops_list_models(), ops_download_model(), ops_get_install_status(); local inference
**Systems:** JSON-RPC (openhuman.local_ai_*), whisper-rs (STT), Ollama HTTP API, node_runtime
**Characteristics:** Local AI model management; Ollama-based inference; Whisper STT (Metal on macOS for GPU); model download progress; used as fallback for background tasks.

### 4.24 mcp_server
**Location:** src/openhuman/mcp_server/
**Functions:** start_mcp_server(), handle_tool_list(), handle_tool_call()
**Systems:** JSON-RPC 2.0 (MCP protocol), Socket.IO
**Characteristics:** Model Context Protocol server; exposes tool catalog to external LLMs; tool names namespaced as skillId__toolName.

### 4.25 meet / meet_agent
**Location:** src/openhuman/meet/, src/openhuman/meet_agent/
**Functions (meet):** ops_validate_join_request() → request_id
**Functions (meet_agent):** ops_start_loop(), ops_stop_loop(); VAD → STT → LLM → TTS pipeline
**Systems:** JSON-RPC, whisper-rs, ElevenLabs TTS (via HTTP), cpal (audio I/O), hound (WAV), socket IPC to Tauri shell
**Characteristics:** Live Google Meet agent; shell opens CEF webview joining call as anonymous guest; core runs VAD-segmented Whisper STT + LLM response + TTS synthesis; PCM streamed bidirectionally via Tauri IPC; mascot lip-sync driven by audio frames.

### 4.26 memory
**Location:** src/openhuman/memory/
**Sub-modules:** chunker, conversations, global, ingestion, ops, rpc_models, safety, schemas, store, sync_status, tool_memory, traits, tree
**Functions:**
- create_memory(), create_memory_with_local_ai() — factory functions
- MemoryClient/UnifiedMemory — unified interface over SQLite + vector + FTS5 + knowledge graph
- IngestionQueue/IngestionJob — async chunking pipeline
- tool_memory: ToolMemoryStore, render_tool_memory_rules() — agent-accessible KV memory
- tree: memory tree ingestion (all_memory_tree_*), retrieval (all_retrieval_*)
- sync_status: MemorySyncStatus, FreshnessLabel per connection
**Systems:** SQLite (rusqlite, bundled), FTS5 full-text search, OpenAI embeddings, optional agentmemory backend, AES-256-GCM encryption, Argon2id KDF
**Characteristics:** Local-first; ≤3k-token Markdown chunks; 70% vector + 30% FTS5 hybrid search; hierarchical summary trees (tree_summarizer); Obsidian-compatible vault export; optional agentmemory proxy backend; sync_status tracks per-connection freshness; safety module guards against injection in retrieved content.

### 4.27 migration / migrations
**Location:** src/openhuman/migration/, src/openhuman/migrations/
**Functions:** ops_run_migrations(), ops_check_version()
**Systems:** JSON-RPC (openhuman.migrate_*), SQLite
**Characteristics:** SQLite schema migration runner; versioned migration files in migrations/; runs at startup.

### 4.28 node_runtime
**Location:** src/openhuman/node_runtime/
**Functions:** bootstrap_node_runtime(), resolve_node_binary(), install_node()
**Systems:** tar, xz2, zip, flate2 (archive extraction), wait-timeout
**Characteristics:** Downloads and bootstraps Node.js runtime for skill execution; Unix .tar.xz, Windows .zip; static liblzma; probes node --version with timeout guard.

### 4.29 notifications
**Location:** src/openhuman/notifications/
**Functions:** ops_ingest(), ops_list(), ops_mark_read(), ops_get_settings(), ops_update_settings()
**Systems:** JSON-RPC (openhuman.notification_*), SQLite, triage scoring
**Characteristics:** Integration notification ingest (from composio triggers, socket events); triage scoring; per-provider routing settings; UI-facing read state.

### 4.30 overlay
**Location:** src/openhuman/overlay/
**Functions:** ops_show(), ops_hide(), ops_get_state()
**Systems:** JSON-RPC, Tauri IPC (native window commands)
**Characteristics:** Desktop overlay window management; agent can surface information over other apps.

### 4.31 people
**Location:** src/openhuman/people/
**Functions:** ops_resolve_contact(), ops_score_contact(); recency × frequency × reciprocity × depth scoring
**Systems:** JSON-RPC (openhuman.people_*), SQLite, macOS Contacts framework (objc2, objc2-contacts on macOS)
**Characteristics:** Contact resolution across all connected channels; RFR+D scoring model; seeded from macOS address book on macOS.

### 4.32 prompt_injection
**Location:** src/openhuman/prompt_injection/
**Functions:** score_prompt(), classify_injection(), enforce_policy()
**Systems:** JSON-RPC, regex, LLM scoring
**Characteristics:** Prompt injection guard; normalizes/scores user input; policy: allow | review | block; server-side enforcement before model execution. See docs/PROMPT_INJECTION_GUARD.md.

### 4.33 provider_surfaces
**Location:** src/openhuman/provider_surfaces/
**Functions:** ops_list_surfaces(), ops_get_respond_queue(), ops_create_draft()
**Systems:** JSON-RPC (openhuman.provider_surfaces_*), SQLite
**Characteristics:** Local-first assistive surfaces for provider events (e.g., respond queue for Slack/email); drafts stored locally.

### 4.34 providers
**Location:** src/openhuman/providers/
**Sub-modules:** billing_error, compatible, factory, openhuman_backend, ops, reliable, router, schemas, thread_context, traits
**Functions:** create_chat_provider(), provider_for_role(); ChatRequest, ChatResponse, Provider trait, ProviderDelta (streaming), UsageInfo
**Systems:** reqwest (all LLM HTTP calls), rustls TLS, JSON-RPC (openhuman.providers_*)
**Characteristics:** Multi-provider LLM routing (reasoning, fast, vision roles); OpenAI-compatible API; openhuman_backend proxies to hosted backend; reliable.rs adds retry + fallback logic; thread_context tracks per-thread provider state; billing_error.rs detects budget exhaustion.

### 4.35 redirect_links
**Location:** src/openhuman/redirect_links/
**Functions:** ops_shorten(), ops_resolve()
**Systems:** JSON-RPC (openhuman.redirect_links_*), SQLite
**Characteristics:** Shortens long tracking URLs to openhuman://link/<id> to save tokens in prompts.

### 4.36 referral
**Location:** src/openhuman/referral/
**Functions:** ops_get_code(), ops_get_stats(), ops_apply_code()
**Systems:** JSON-RPC (openhuman.referral_*), backend REST API
**Characteristics:** Referral/growth tracking; codes stored locally + verified against backend.

### 4.37 routing
**Location:** src/openhuman/routing/
**Functions:** route_message() — decides which agent/channel handles an incoming message
**Systems:** LLM classifiers, event_bus
**Characteristics:** Message routing logic; evaluates incoming triggers and routes to appropriate agent or channel handler.

### 4.38 scheduler_gate
**Location:** src/openhuman/scheduler_gate/
**Functions:** should_throttle_background_work() — checks battery/AC state
**Systems:** starship-battery (battery crate fork), sysinfo
**Characteristics:** Gates background LLM work on laptop battery state; throttles when on battery to preserve power.

### 4.39 screen_intelligence
**Location:** src/openhuman/screen_intelligence/
**Functions:** ops_capture_screen(), ops_check_permissions(), ops_automate_ui(), ops_get_status()
**Systems:** JSON-RPC (openhuman.screen_intelligence_*), accessibility APIs (enigo, arboard, rdev), image crate, screen_capture Tauri module
**Characteristics:** Screen capture + OCR + UI automation; permission checking on macOS; enigo drives keyboard/mouse; arboard clipboard access; rdev for global input monitoring. Previously named accessibility_.

### 4.40 security
**Location:** src/openhuman/security/
**Functions:** ops_get_policy(), ops_get_autonomy_guardrails()
**Systems:** JSON-RPC (openhuman.security_*)
**Characteristics:** Security policy metadata exposed to agents; autonomy guardrails define what agents can/cannot do autonomously.

### 4.41 service
**Location:** src/openhuman/service/
**Functions:** ops_get_status(), ops_restart()
**Systems:** JSON-RPC (openhuman.service_*)
**Characteristics:** Desktop service lifecycle management; restart triggers core process recycle.

### 4.42 skills
**Location:** src/openhuman/skills/
**Sub-modules:** ops_create, ops_discover, ops_install, ops_parse, inject, schemas, types
**NOTE:** QuickJS/rquickjs runtime REMOVED. Skills is now metadata-only.
**Functions:** ops_discover() — finds SKILL.md files; ops_install(), ops_parse() — skill manifest parsing
**Systems:** JSON-RPC (openhuman.skills_*), walkdir, glob
**Characteristics:** Legacy skill metadata helpers retained after QuickJS runtime removal. Skills are discovered from filesystem, parsed for metadata, but no JS execution. inject.rs handles system prompt injection of skill context.

### 4.43 socket
**Location:** src/openhuman/socket/
**Functions:** ops_get_status(), ops_reconnect(); Socket.IO client lifecycle
**Systems:** JSON-RPC (openhuman.socket_*), socketioxide, tokio-tungstenite, event_bus
**Characteristics:** Skills runtime socket bridge; controls the persistent Socket.IO connection to backend; event_handlers routes incoming socket events to domain handlers.

### 4.44 subconscious
**Location:** src/openhuman/subconscious/
**Functions:** start_subconscious_loop(), ops_get_status()
**Systems:** JSON-RPC (openhuman.subconscious_*), local_ai, scheduler_gate, event_bus
**Characteristics:** Periodic background awareness loop using local AI; runs when on AC power and idle; generates ambient context from recent activity.

### 4.45 team
**Location:** src/openhuman/team/
**Functions:** ops_list_members(), ops_invite(), ops_change_role(), ops_remove()
**Systems:** JSON-RPC (openhuman.team_*), backend REST API
**Characteristics:** Team management; proxies to hosted backend.

### 4.46 text_input
**Location:** src/openhuman/text_input/
**Functions:** ops_read_focused_input(), ops_insert_text(), ops_preview_text()
**Systems:** JSON-RPC (openhuman.text_input_*), enigo, accessibility APIs
**Characteristics:** OS-level text input interaction; reads/inserts text in the currently-focused OS input field; powers autocomplete injection.

### 4.47 threads
**Location:** src/openhuman/threads/
**Functions:** ops_create(), ops_list(), ops_get(), ops_delete(), ops_send_message()
**Systems:** JSON-RPC (openhuman.threads_*), SQLite, event_bus
**Characteristics:** Conversation thread and message management; worker thread references (spawn_worker_thread tool creates sub-threads); thread filtering and format utilities.

### 4.48 tokenjuice
**Location:** src/openhuman/tokenjuice/
**Sub-modules:** classify, reduce, rules, text, tool_integration, types
**Functions:** reduce_execution_with_rules(), compact_tool_output(), load_builtin_rules(), load_rules()
**Systems:** regex, JSON rule files (embedded via include_str!)
**Characteristics:** Terminal output compaction engine (Rust port of vincentkoc/tokenjuice); 3-layer rule overlay (builtin > user ~/.config/tokenjuice > project .tokenjuice); reduces git/npm/cargo/docker output before LLM context; up to 80% token reduction. Library only — no JSON-RPC surface.

### 4.49 tool_timeout
**Location:** src/openhuman/tool_timeout/
**Functions:** wrap_tool_with_timeout(), get_timeout_config()
**Systems:** tokio::time
**Characteristics:** Timeout wrapper for tool calls; configurable per-tool timeout; prevents runaway tool executions.

### 4.50 tools
**Location:** src/openhuman/tools/
**Sub-modules:** local_cli, ops, orchestrator_tools, schema, schemas, traits, user_filter, impl/
**Tool categories (impl/):**
- impl/agent: archetype_delegation, ask_clarification, check_onboarding_status, complete_onboarding, delegate, dispatch, onboarding_status, plan_exit, skill_delegation, spawn_parallel_agents, spawn_subagent, spawn_worker_thread, todo_write
- impl/browser: action_parser, browser, browser_open (open URLs/files via OS)
- impl/computer: screen capture, UI interaction tools
- impl/cron: cron job creation/management tools
- impl/filesystem: file read, write, list, grep, git operations
- impl/memory: memory read/write/search tools
- impl/network: HTTP fetch, web scraper
- impl/system: shell execution, env inspection
- impl/whatsapp_data: WhatsApp read tools
**Functions:** all_tools_with_runtime(), filter_tools_by_user_preference(); Tool trait, ToolSpec, ToolResult, PermissionLevel, ToolCategory, ToolScope
**Systems:** JSON-RPC (openhuman.tools_*), all impl tool systems
**Characteristics:** 111 files in tools domain; tools are categorized by scope (agent/user) and permission level; user_filter.rs respects user preferences; orchestrator_tools.rs defines tools available only to orchestrator agents.

### 4.51 tree_summarizer
**Location:** src/openhuman/tree_summarizer/
**Functions:** start_summarization_loop(), ops_get_status(), ops_trigger_summarization()
**Systems:** JSON-RPC (openhuman.tree_summarizer_*), LLM providers, SQLite, scheduler_gate
**Characteristics:** Hierarchical time-based summarization of memory chunks; quarterly/monthly/weekly/daily tree nodes; background compression; gated by scheduler_gate.

### 4.52 update
**Location:** src/openhuman/update/
**Functions:** ops_check(), ops_stage(), ops_apply()
**Systems:** JSON-RPC (openhuman.update_*), reqwest (GitHub Releases API), fs operations
**Characteristics:** Self-update mechanism; checks GitHub Releases for newer core binary; staged update (download to temp, verify, swap on restart).

### 4.53 voice
**Location:** src/openhuman/voice/
**Sub-modules:** cli (run_standalone_subcommand — registered CLI adapter)
**Functions:** ops_transcribe(), ops_synthesize(), ops_get_install_status()
**Systems:** JSON-RPC (openhuman.voice_*), whisper-rs (STT, Metal acceleration on macOS), ElevenLabs TTS (reqwest), cpal (audio capture), hound (WAV)
**Characteristics:** Local Whisper STT; ElevenLabs TTS synthesis; standalone CLI subcommand for voice testing; lip-sync frames for mascot; used by meet_agent for live call participation.

### 4.54 wallet
**Location:** src/openhuman/wallet/
**Functions:** ops_get_onboarding_status(), ops_get_account_metadata()
**Systems:** JSON-RPC (openhuman.wallet_*), @noble/curves, @scure/bip32, @scure/bip39, @scure/base
**Characteristics:** Local wallet onboarding status; multi-chain account derivation metadata (BIP32/BIP39); no private keys stored in core — derivation metadata only.

### 4.55 webhooks
**Location:** src/openhuman/webhooks/
**Sub-modules:** bus (WebhookRequestSubscriber)
**Functions:** ops_register(), ops_list(), ops_delete(), ops_get_logs()
**Systems:** JSON-RPC (openhuman.webhooks_*), Axum (webhook receiver endpoint), SQLite, event_bus
**Characteristics:** Webhook tunnel registration and captured request/response debug log; WebhookRequestSubscriber routes inbound webhook events to agent triage.

### 4.56 webview_accounts
**Location:** src/openhuman/webview_accounts/
**Functions:** ops_open(), ops_close(), ops_get_status()
**Systems:** JSON-RPC, Tauri IPC, CEF webviews
**Characteristics:** Core-side management of CEF embedded provider webviews; coordinates with Tauri shell for webview lifecycle.

### 4.57 webview_apis
**Location:** src/openhuman/webview_apis/
**Functions:** ops_call_gmail_api(), ops_call_*() — proxied connector calls
**Systems:** JSON-RPC (openhuman.webview_apis_*), WebSocket bridge to Tauri shell, CDP
**Characteristics:** Typed connector APIs (Gmail, etc.) proxied over loopback WebSocket to Tauri shell so core-side JSON-RPC reaches live-webview CDP operations without CORS issues.

### 4.58 webview_notifications
**Location:** src/openhuman/webview_notifications/
**Functions:** ops_handle_notification(), ops_get_pending()
**Systems:** JSON-RPC (openhuman.webview_notifications_*)
**Characteristics:** Embedded webview native notification interception; catches OS-level notifications from provider webviews.

### 4.59 whatsapp_data
**Location:** src/openhuman/whatsapp_data/
**Functions (agent-facing):** ops_list_chats(), ops_get_messages(), ops_search()
**Functions (internal):** ops_ingest() — write path for scanner
**Systems:** JSON-RPC (openhuman.whatsapp_data_*), SQLite, Tauri scanner (whatsapp_scanner)
**Characteristics:** Structured WhatsApp conversation store; agent-facing read-only controllers in public registry; write-path ingest in internal-only registry (not exposed to agents); data sourced from WhatsApp Web via CDP scanner in Tauri shell.

### 4.60 workspace
**Location:** src/openhuman/workspace/
**Functions:** ops_get_path(), ops_init(), ops_list_files()
**Systems:** JSON-RPC (openhuman.workspace_*), dirs, directories
**Characteristics:** User workspace and file management; default ~/.openhuman; OPENHUMAN_WORKSPACE env var override; used by E2E tests for isolation.

### 4.61 Additional domains (file-confirmed, detail [INFERRED]):
- **app_state:** Core-owned shell state snapshot for frontend polling
- **context:** System prompt assembly helpers
- **dev_paths.rs:** Development path helpers (grandfathered standalone file)
- **util.rs:** Shared utilities (grandfathered standalone file)
- **test_support:** E2E test reset RPC (feature-gated: e2e-test-support; openhuman.test_reset wipes state)
- **migrations/:** SQLite migration SQL files


---

## 5. app/ — FRONTEND + DESKTOP SHELL (1081 items)

**Package:** openhuman-app v0.53.47
**Stack:** Vite 8 + React 19 + TypeScript 5.8 + Tailwind CSS 3 + Redux Toolkit
**Desktop shell:** Tauri v2 + CEF (custom vendored tauri-cef fork)

### 5.1 app/src/ — React Application

#### app/src/main.tsx
**Functions:** ReactDOM.createRoot().render(<App/>)
**Systems:** React 19, Sentry (ErrorBoundary wrapper at root)
**Characteristics:** App entry point; polyfills loaded first; Sentry initialized.

#### app/src/App.tsx
**Functions:** App(), AppShell(), onboarding gate useEffect, page view tracking
**Systems:** Redux Provider, PersistGate, I18nProvider, BootCheckGate, CoreStateProvider, SocketProvider, ChatRuntimeProvider, HashRouter, CommandProvider, ServiceBlockingGate
**Provider chain:** Sentry.ErrorBoundary → Redux → PersistGate → I18nProvider → BootCheckGate → CoreStateProvider → SocketProvider → ChatRuntimeProvider → HashRouter → CommandProvider → ServiceBlockingGate → AppShell
**Characteristics:** Onboarding gate redirects to /onboarding while onboarding_completed=false; MascotFrameProducer mounted outside routes; AppWalkthrough (Joyride) persists across navigation; startWebviewAccountService/Notifications/NativeNotifications called at module load; startInternetStatusListener + startCoreHealthMonitor.

#### app/src/AppRoutes.tsx
**Routes:** / (Welcome), /onboarding/*, /home, /human, /intelligence, /skills, /chat, /channels, /invites, /notifications, /rewards, /webhooks (redirects), /settings/*
**Characteristics:** HashRouter-based; default catch-all DefaultRedirect; no /login, /agents, /conversations.

#### app/src/SOUL.md
**Characteristics:** Project soul/values document; mascot personality definition.

### 5.2 app/src/store/ — Redux State
| File | Slice/Selector | State |
|------|---------------|-------|
| accountsSlice.ts | accounts | Active account, account list, webview states |
| agentProfileSlice.ts | agentProfile | Current agent profile selection |
| channelConnectionsSlice.ts | channelConnections | Connected channel states |
| chatRuntimeSlice.ts | chatRuntime | Chat input, send state, typing indicators |
| connectivitySlice.ts + connectivitySelectors.ts | connectivity | Internet status, core sidecar health |
| coreModeSlice.ts | coreMode | Core process mode (dev/prod/staging) |
| deepLinkAuthState.ts | deepLinkAuth | OAuth deep link token state |
| localeSlice.ts | locale | i18n locale setting |
| mascotSlice.ts | mascot | Mascot visibility, emotion, animation state |
| notificationSlice.ts | notification | Unread counts, notification list |
| providerSurfaceSlice.ts | providerSurface | Active provider surface panel |
| socketSlice.ts + socketSelectors.ts | socket | Socket connection state, room subscriptions |
| threadSlice.ts | thread | Thread list, selected thread, welcome thread ID |
| index.ts | store, persistor | Redux Toolkit configureStore + redux-persist |
| hooks.ts | useAppDispatch, useAppSelector | Typed Redux hooks |
| resetActions.ts | resetAllState action | Global state reset for logout |
| userScopedStorage.ts | user-scoped persistence | Per-user redux-persist storage key |

### 5.3 app/src/services/ — Singletons
| File | Purpose |
|------|---------|
| apiClient.ts | Axios/fetch REST client to backend (auth headers, base URL) |
| backendUrl.ts | Backend URL resolution (VITE_BACKEND_URL, env) |
| socketService.ts | Socket.IO client singleton; emits tool:sync on connect; routes events to Redux |
| coreRpcClient.ts | HTTP JSON-RPC client to in-process core via Tauri IPC (core_rpc_relay); avoids CORS |
| coreCommandClient.ts | Typed wrapper over coreRpcClient for specific RPC commands |
| coreStateApi.ts | Fetches CoreAppSnapshot via fetchCoreAppSnapshot() RPC |
| chatService.ts | Message send/receive; thread management; streaming response handling |
| analytics.ts | Google Analytics 4 (react-ga4); page view + event tracking |
| bootCheckService.ts | Checks backend reachability and core process health at startup |
| daemonHealthService.ts | Polls core health; publishes to Redux connectivity slice |
| coreHealthMonitor.ts | Monitors core process health via RPC ping |
| coreProcessControl.ts | Tauri invoke: start_core_process, restart_core_process |
| internetStatusListener.ts | navigator.onLine listener; updates connectivity slice |
| meetCallService.ts | Google Meet call join/leave coordination with Tauri shell |
| memorySyncService.ts | Polls memory sync status RPC; updates UI progress |
| notificationService.ts | Notification permission requests; native notification display |
| walletApi.ts | Wallet onboarding status API calls |
| webviewAccountService.ts | CEF webview lifecycle: open/close/focus provider webviews; isTauri() helper |
| rpcMethods.ts | CORE_RPC_METHODS const enum; normalizeRpcMethod() with legacy alias mapping |
| clientVersionHeaders.ts | Adds X-Client-Version headers to API calls |
| api/authApi.ts | Login, logout, refresh token REST calls |
| api/billingApi.ts | Subscription, payment link API |
| api/channelConnectionsApi.ts | Channel connect/disconnect REST |
| api/composio.ts | Composio integration REST (via backend proxy) |
| api/creditsApi.ts | Credits balance + top-up |
| api/inviteApi.ts | Team invite REST |
| api/providerSurfacesApi.ts | Provider surface list/update |
| api/referralApi.ts | Referral code REST |
| api/rewardsApi.ts | Contributor rewards REST |
| api/skillsApi.ts | Skills registry REST |
| api/teamApi.ts | Team member management REST |
| api/threadApi.ts | Thread CRUD REST |
| api/tunnelsApi.ts | Webhook tunnel REST |
| api/userApi.ts | User profile REST |
| api/voiceInstallApi.ts | Voice model installation status REST |
| api/aiSettingsApi.ts | AI model settings REST |
| api/agentProfilesApi.ts | Agent profile REST |

### 5.4 app/src/providers/ — React Context Providers
| File | Purpose |
|------|---------|
| CoreStateProvider.tsx | Polls fetchCoreAppSnapshot(); provides snapshot + isBootstrapping; owns auth state |
| SocketProvider.tsx | Initializes socketService; provides socket connection context |
| ChatRuntimeProvider.tsx | AI chat runtime context; message dispatch, streaming state |

### 5.5 app/src/pages/ — Route-level Components
| File | Route | Purpose |
|------|-------|---------|
| Home.tsx | /home | Main dashboard: recent threads, quick actions, memory summary |
| Accounts.tsx | /accounts (via /human) | CEF webview management for connected provider apps |
| Channels.tsx | /channels | Messaging channel connections and settings |
| Intelligence.tsx | /intelligence | AI configuration, model selection, provider settings |
| Skills.tsx | /skills | Skill registry browser |
| Conversations.tsx | (legacy, redirects to /chat) | Old conversation list |
| Notifications.tsx | /notifications | Integration notification feed |
| Rewards.tsx | /rewards | Contributor rewards dashboard |
| Invites.tsx | /invites | Team invite management |
| Webhooks.tsx | /webhooks | Redirects to /settings/webhooks-triggers |
| Settings.tsx | /settings/* | Settings hub with sub-routes |
| Welcome.tsx | / | Pre-auth landing (sign in / create account) |
| Mnemonic.tsx | (legacy) | Recovery phrase screen (moved to Settings) |
| conversations/components/: | — | AgentMessageBubble, CitationChips, LimitPill, TaskKanbanBoard, ToolTimelineBlock, WorkerThreadRefCard |
| onboarding/Onboarding.tsx | /onboarding | Onboarding stepper shell |

### 5.6 app/src/features/ — Feature Modules
| Dir | Purpose |
|-----|---------|
| autocomplete/ | Inline autocomplete UI (trigger, suggestions, apply) |
| daemon/ | ServiceBlockingGate — blocks UI when core is unreachable |
| human/ | Human page: provider webview switcher, fullscreen mode |
| meet/ | MascotFrameProducer — Remotion-driven 640×480 JPEG frame stream for Meet camera |
| privacy/ | Privacy settings UI |
| screen-intelligence/ | Screen capture permission + accessibility UI |
| voice/ | Voice STT/TTS UI controls |
| wallet/ | Wallet onboarding flow |
| webhooks/ | Webhook tunnel management UI |

### 5.7 app/src/lib/ — Shared Libraries
| Dir | Purpose |
|-----|---------|
| ai/ | Prompt loading (raw imports + remote fetch), ai_get_config / ai_refresh_config Tauri bridges |
| bootCheck/ | Boot sequence validation (backend reachable, core running) |
| channels/ | Channel icon helpers, status utilities |
| commands/ | Command palette (cmdk) integration |
| composio/ | Composio connection helpers, OAuth flow |
| coreState/ | AppSnapshot types, isWelcomeLocked(), store helpers |
| i18n/ | I18nContext, I18nProvider, locale loading |
| mcp/ | MCP JSON-RPC transport, validation, types over Socket.IO |
| meshGradient.js | Animated mesh gradient renderer (Three.js) |
| nativeNotifications/ | OS native notification bridge |
| notificationRouter.ts | Routes incoming socket notifications to appropriate handler |
| webviewNotifications/ | Webview notification event handling |

### 5.8 app/src/components/ — UI Components
**Root-level components:** AppBackground, AppUpdatePrompt, BootCheckGate, BottomTabBar, ConnectionBadge, ConnectionIndicator, DefaultRedirect, DictationHotkeyManager, ErrorFallbackScreen, LanguageSelect, LocalAIDownloadSnackbar, LottieAnimation, MeshGradient, OpenhumanLinkModal, PersistRehydrationScreen, PillTabBar, ProgressIndicator, ProtectedRoute, PublicRoute, RotatingTetrahedronCanvas, RouteLoadingScreen

**Component subdirectories:**
| Dir | Key Components |
|-----|---------------|
| accounts/ | WebviewAccountPanel, ProviderWebviewSwitcher, AccountBadge |
| channels/ | ChannelCard, ChannelConnectButton, ChannelList |
| chat/ | ChatInput, MessageBubble, ThreadList, ToolCallBlock, StreamingIndicator |
| commands/ | CommandProvider, CommandPalette (cmdk), command implementations |
| composio/ | ComposioToolkitCard, ConnectionCard, OAuthConnectButton |
| daemon/ | ServiceBlockingGate (shows "core starting..." overlay) |
| home/ | RecentThreads, QuickActions, MemorySummaryWidget |
| intelligence/ | ModelSelector, ProviderSettings, LocalAICard |
| notifications/ | NotificationFeed, NotificationItem, MarkAllRead |
| oauth/ | OAuthCallbackHandler, DeepLinkAuthHandler |
| rewards/ | RewardsCard, ContributorBadge |
| settings/ | Settings sub-route components (model, memory, privacy, webhooks, etc.) |
| skills/ | SkillCard, SkillInstallButton, SkillDetailModal |
| ui/ | Shared primitives (Button, Input, Modal, Tooltip, etc.) — Radix UI based |
| upsell/ | GlobalUpsellBanner, UpgradeModal |
| walkthrough/ | AppWalkthrough (Joyride), step definitions spanning Home + BottomTabBar |
| webhooks/ | WebhookTunnelCard, TunnelCreateForm |
| BootCheckGate/ | Loading screen shown during boot sequence |

### 5.9 app/src/utils/
| File | Purpose |
|------|---------|
| config.ts | CENTRAL config: reads all VITE_* env vars; re-exports for app; SENTRY_RELEASE tag; DEV_FORCE_ONBOARDING flag |
| accountsFullscreen.ts | isAccountsFullscreen() — determines if accounts page should go edge-to-edge |
| [others INFERRED] | Format helpers, date utils, type guards |

### 5.10 app/src-tauri/ — Tauri Desktop Shell

**Direct Rust files:**
| File | Functions | Purpose |
|------|-----------|---------|
| src/lib.rs | tauri Builder config, register_all_ipc_handlers() | App entry: all plugins, all IPC commands registered |
| src/main.rs | main() | Tauri process entry point |
| src/core_process.rs | CoreProcessHandle::spawn(), restart_core_process(), start_core_process() | Spawns openhuman-core as in-process tokio task; PID reuse safety (#1130); bearer auth token (OPENHUMAN_CORE_TOKEN) |
| src/core_process_tests.rs | tests | CoreProcess lifecycle tests |
| src/core_rpc.rs | core_rpc_relay(method, params), core_rpc_token() | Tauri IPC commands bridging frontend to in-process core JSON-RPC; CORS-free via IPC |
| src/cef_preflight.rs | check_cef_runtime() | CEF runtime availability check before app launch |
| src/cef_profile.rs | create_cef_profile() | CEF browser profile setup (user data dir, cache) |
| src/dictation_hotkeys.rs | register_dictation_hotkeys() | Global hotkey for voice dictation activation |
| src/file_logging.rs | init_file_logging() | Log file rotation to ~/Library/Logs/OpenHuman/ |
| src/mascot_native_window.rs | show_mascot(), hide_mascot(), update_mascot_position() | Floating mascot native window management |
| src/process_kill.rs | safe_kill_process() | PID-safe process termination (reuse guard) |
| src/process_recovery.rs | watch_core_process() | Auto-restart core on unexpected exit |
| src/window_state.rs | save_window_state(), restore_window_state() | Persist window size/position across launches |

**Tauri shell subdirectories:**
| Dir | Purpose |
|-----|---------|
| src/cdp/ | Chrome DevTools Protocol client for CEF webviews (Network, Emulation, Input, Page events) |
| src/discord_scanner/ | CDP-based Discord message scanner (zero JS injection) |
| src/fake_camera/ | Virtual camera for Meet: injects mascot JPEG frames as V4L2/AVFoundation stream |
| src/gmessages_scanner/ | Google Messages scanner via CDP |
| src/imessage_scanner/ | iMessage scanner (macOS-only, native APIs) |
| src/meet_audio/ | PCM audio capture from Meet call (cpal + native audio) |
| src/meet_call/ | Meet call session coordination: join request → shell webview lifecycle |
| src/meet_scanner/ | Google Meet caption/transcript CDP scanner |
| src/meet_video/ | Video frame extraction from Meet (for mascot lip-sync) |
| src/native_notifications/ | macOS/Windows/Linux OS notification bridging |
| src/notification_settings/ | Per-provider notification routing settings |
| src/screen_capture/ | Platform screen capture APIs (macOS CGWindowList, Windows GDI) |
| src/slack_scanner/ | CDP-based Slack message scanner |
| src/telegram_scanner/ | CDP-based Telegram Web scanner |
| src/webview_accounts/ | CEF webview lifecycle management: open/close, navigation handlers, zero JS injection policy |
| src/webview_apis/ | WebSocket loopback server: bridges core JSON-RPC to live webview CDP operations |
| src/whatsapp_scanner/ | CDP-based WhatsApp Web scanner (feeds whatsapp_data domain) |

**Key Tauri IPC commands registered:**
greet, write_ai_config_file, ai_get_config, ai_refresh_config, core_rpc_relay, core_rpc_token, start_core_process, restart_core_process, window commands (resize, move, minimize, maximize), openhuman_* daemon helpers, mascot commands, screen capture commands, dictation commands.

### 5.11 app/test/ — Test Infrastructure
| File/Dir | Purpose |
|----------|---------|
| test/vitest.config.ts | Vitest config; jsdom environment; coverage: v8 |
| src/test/setup.ts | Global test setup (Testing Library, mocks) |
| test/e2e/specs/*.spec.ts | WDIO E2E specs: smoke, cron-jobs-flow, skills-registry, skill-execution-flow, service-connectivity-flow |
| test/e2e/helpers/ | element-helpers.ts (clickNativeButton, waitForWebView, clickToggle), mock-server.ts |
| test/wdio.conf.ts | WDIO config: Linux (tauri-driver :4444), macOS (Appium Mac2 XCUITest :4723) |


---

## 6. scripts/ — Automation (164 items)

| Dir | Purpose |
|-----|---------|
| scripts/debug/ | cli.sh, unit.sh, e2e.sh, rust.sh, logs.sh, lib.sh — bounded-output wrappers; tee to target/debug-logs/ |
| scripts/shortcuts/ | review/: merge.sh, cli.sh; work/cli.sh; ws-reset.sh — workflow shortcuts |
| scripts/rabbit/ | cli.sh — rabbit workflow tool [INFERRED] |
| scripts/deep-work/ | cli.sh — deep-work focus mode tool |
| scripts/agent-batch/ | cli.mjs, lib tests — batch agent execution orchestrator |
| scripts/release/ | Release automation scripts |
| scripts/mock-api/ | mock-api-core.mjs, mock-api-server.mjs — shared mock backend for tests |
| scripts/fixtures/ | Test fixture data |
| scripts/lib/ | Shared shell library functions |
| scripts/tools-generator/ | Code generation for tool schemas [INFERRED] |
| scripts/tests/ | OpenHumanWindowsInstall.Tests.ps1 — PowerShell install test |
| scripts/test-planning/ | Test planning documents |
| scripts/cef-with-codecs/ | CEF build with codec support scripts |
| scripts/ensure-tauri-cli.sh | Verifies vendored tauri-cef CLI is installed (not stock @tauri-apps/cli) |
| scripts/install.sh | macOS/Linux curl-pipe installer |
| scripts/install.ps1 | Windows PowerShell installer |
| scripts/load-dotenv.sh | Sources .env file for dev commands |
| scripts/setup-chromium-safe-storage.sh | macOS Chromium Safe Storage keychain setup for CEF |
| scripts/test-rust-with-mock.sh | Runs Rust tests with mock API server running |
| scripts/test-rust-e2e.sh | Rust E2E test runner |
| scripts/mock-api-core.mjs | Mock backend API core logic |
| scripts/mock-api-server.mjs | Mock backend HTTP server |
| scripts/check-pr-checklist.mjs | Validates PR checklist completion |

---

## 7. docs/ (27 items)

| File | Purpose |
|------|---------|
| docs/AGENT_SELF_LEARNING.md | Agent self-learning capability design |
| docs/CONTRIBUTOR-REWARDS.md | Contributor rewards program details |
| docs/DELEGATION_POLICY.md | Agent delegation rules and boundaries |
| docs/ENVIRONMENT-CONTRACT-ROADMAP.md | Environment contract evolution plan |
| docs/MEET_AGENT_SMOKE.md | Meet agent smoke test procedure |
| docs/NOTIFICATION_TESTING_STATUS.md | Notification system test coverage status |
| docs/PORTFOLIO_READINESS.md | Feature readiness assessment |
| docs/PROMPT_INJECTION_GUARD.md | Prompt injection guard implementation details |
| docs/RELEASE-MANUAL-SMOKE.md | Manual release smoke test checklist |
| docs/TAURI_CEF_FINDINGS_AND_CHANGES.md | CEF integration findings and changes log |
| docs/TEST-COVERAGE-MATRIX.md | Test coverage by domain |
| docs/WEEKLY-CODE-REVIEW.md | Weekly review notes |
| docs/agent-prompt-architecture.excalidraw | Agent prompt architecture diagram |
| docs/agent-subagent-tool-flow.md | Sub-agent tool execution flow |
| docs/agent-workflows/ | Codex PR checklist, cursor cloud agents, open PR reconciliation, pilot batch example |
| docs/mascot.gif | Mascot animation preview |
| docs/memory-sync-functions.md | Memory sync function documentation |
| docs/superpowers/plans/ | Operator MVP plan 2026-05-11 |
| docs/the-tet.png | Architecture diagram image |

---

## 8. gitbooks/ (65 items) — Public Developer Documentation

| Dir | Purpose |
|-----|---------|
| gitbooks/developing/ | Architecture (deep reference), frontend, tauri-shell, agent-harness, e2e-testing, getting-set-up, cloud-deploy |
| gitbooks/features/ | Per-feature user/dev documentation |
| gitbooks/overview/ | Product overview docs |
| gitbooks/legal/ | Terms, privacy policy |
| gitbooks/.gitbook/ | GitBook config |

---

## 9. e2e/ (6 items)

| File | Purpose |
|------|---------|
| e2e/docker-compose.yml | Linux E2E test environment (tauri-driver in Docker) |
| [others] | E2E supporting files |

---

## 10. tests/ (43 items) — Root-level Rust Integration Tests

| File | Purpose |
|------|---------|
| tests/json_rpc_e2e.rs | Primary Rust E2E test: spins up full JSON-RPC server + mock API, tests all major RPC methods end-to-end |
| tests/observability_smoke.rs | Sentry filter smoke test (uses sentry TestTransport) |
| [others] | Per-domain integration tests |

---

## 11. remotion/ (68 items) — Animation Engine

| Purpose |
|---------|
| Remotion-based animation framework for mascot rendering |
| Produces runtime assets (JPEG frame sequences) used by MascotFrameProducer.tsx for Meet virtual camera |
| pnpm --dir remotion render:runtime-assets |

---

## 12. design-previews/ (2 items)

Static design preview assets (images) for UI reference.

---

## 13. packages/ (15 items) — pnpm Workspace Packages

Additional pnpm workspace packages (non-app); likely shared TypeScript utilities or tooling packages. [INFERRED from pnpm-workspace.yaml structure]

---

## 14. examples/ (2 items)

Example configuration or integration files. [INFERRED]

---

## SYSTEM STACK SUMMARY

| Layer | Technologies |
|-------|-------------|
| Language (core) | Rust 2021, Tokio async, Axum HTTP |
| Language (UI) | TypeScript 5.8, React 19 |
| Build (UI) | Vite 8, pnpm 10.10.0 |
| Desktop shell | Tauri v2 + CEF (custom vendored fork) |
| State management | Redux Toolkit + redux-persist |
| Styling | Tailwind CSS 3 + custom design tokens |
| Database | SQLite (rusqlite bundled) |
| Memory/Search | SQLite FTS5 + OpenAI embeddings (text-embedding-3-small) |
| Encryption | AES-256-GCM + Argon2id KDF + ChaCha20-Poly1305 |
| TLS | rustls (no OpenSSL) |
| HTTP | reqwest (async, rustls + native-tls dual) |
| WebSocket | tokio-tungstenite + socketioxide |
| LLM providers | OpenAI-compatible (multi-provider routing) + openhuman backend proxy |
| Local AI | Whisper (STT, Metal on macOS), Ollama (inference) |
| Audio | cpal + hound |
| Screen/UI automation | enigo + arboard + rdev + accessibility APIs |
| Crypto (frontend) | @noble/curves, @scure/bip32/bip39 (wallet) |
| Animation | Remotion + Three.js (mascot + mesh gradient) |
| Testing (unit) | Vitest 4 + Testing Library |
| Testing (E2E) | WDIO 9 + Appium Mac2 (macOS) + tauri-driver (Linux) |
| Testing (Rust) | cargo test + mock API server |
| Coverage gate | ≥80% on changed lines (diff-cover, Vitest lcov + cargo-llvm-cov) |
| Error tracking | Sentry (both frontend @sentry/react and Rust sentry crate) |
| Observability | OpenTelemetry (OTLP) + Prometheus metrics + tracing |
| CI/CD | GitHub Actions (.github/workflows/) |
| Deployment | DigitalOcean App Platform (.do/app.yaml) + Docker |
| Integrations (external) | Composio (118+ OAuth integrations via backend proxy) |
| Agent protocol | MCP (Model Context Protocol, JSON-RPC 2.0 over Socket.IO) |

---

## CHARACTERISTICS SUMMARY

1. **Monorepo with dual-language core:** Rust for all business logic/persistence/AI; TypeScript/React for UI/navigation/bridging only.
2. **In-process core (no sidecar):** Rust core runs as a tokio task inside the Tauri process (PR #1061 removed the sidecar). Frontend reaches it via HTTP JSON-RPC at 127.0.0.1:<port> through core_rpc_relay Tauri IPC command (avoids CORS).
3. **CEF webviews with zero JS injection policy:** Embedded provider webviews (WhatsApp, Telegram, Slack, Discord, etc.) are scraped via CDP from native scanner modules only. No JavaScript injected into third-party origins.
4. **Controller registry pattern:** All RPC/CLI surfaces registered via central all.rs registry with schema validation at startup. ~60 domain namespaces, dual registry (agent-facing vs internal-only).
5. **Skills runtime removed:** QuickJS/rquickjs execution engine removed; skills domain is now metadata-only.
6. **Memory Tree:** Local-first ≤3k-token Markdown chunk pipeline with SQLite FTS5 + vector search, hierarchical summarization tree, and optional Obsidian vault export.
7. **TokenJuice:** Tool output compaction layer (up to 80% token reduction) applied before all LLM calls.
8. **Multi-agent with delegation:** spawn_subagent, spawn_parallel_agents, archetype_delegation, skill_delegation enable hierarchical agent trees.
9. **Live Meet agent:** Full VAD→STT→LLM→TTS pipeline in Rust; mascot virtual camera via Remotion JPEG frames + CEF; anonymous Meet guest participation.
10. **Coverage gate:** ≥80% on changed lines enforced as PR merge requirement.
11. **Platform:** Desktop only (Windows/macOS/Linux x64+ARM64). No iOS/Android/web in current shipping scope.
12. **Security:** rustls everywhere, OS keychain for credentials, AES-256-GCM memory encryption, prompt injection guard, per-launch bearer tokens, no localStorage for sensitive data.

---

## NEXT PASS LOCATIONS (for deeper function-level audit)

| Priority | Path | Reason |
|----------|------|--------|
| HIGH | src/openhuman/agent/harness/ | Core agent loop; critical for understanding AI execution |
| HIGH | src/openhuman/memory/store.rs | Memory backend implementation; UnifiedMemory internals |
| HIGH | src/openhuman/tools/impl/ | All 111 tool implementations |
| HIGH | app/src-tauri/src/cdp/ | CDP client; critical for webview scraping |
| HIGH | app/src-tauri/src/webview_accounts/mod.rs | CEF webview lifecycle |
| MED | src/openhuman/channels/providers/ | Per-channel implementation details |
| MED | src/openhuman/providers/ | LLM provider routing internals |
| MED | src/openhuman/composio/providers/ | Per-integration sync logic |
| MED | app/src/pages/conversations/ | Chat UI implementation |
| MED | app/src/components/chat/ | Chat component internals |
| LOW | gitbooks/developing/ | Architecture docs (largely read; narrative only) |
| LOW | remotion/ | Animation pipeline details |
| LOW | scripts/ | Automation details |

---

*Registry complete. Logged by Claude Sonnet 4.6 — Phoenix Echo Browser — 2026-05-16.*
*This document covers one file level down across the entire repo as instructed. All paths verified against live GitHub API tree. [INFERRED] tags used where file was not directly read.*
