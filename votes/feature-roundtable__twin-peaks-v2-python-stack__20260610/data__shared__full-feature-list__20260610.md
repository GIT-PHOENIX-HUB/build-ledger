# Full Feature List - Twin Peaks V2 Python Gateway OS Roundtable

## Provenance

This file transfers the feature board Shane shared in chat into the build-ledger
repo so all participating agents can inspect the same list.

The list is preserved as source material for discussion. It is not a command to
implement every feature immediately.

## Entry A - OS Spine, Business Engine, And Moonshots

### The Spine

The OS cannot exist without these.

1. **Model Fleet Router** - Every task auto-routes to the cheapest model that
   can actually do it: Nemotron/Ollama local for bulk, frontier only for hard
   calls, with instant fallback. Cuts cost and avoids one-provider outages.

2. **MCP Tool-Approval Firewall** - Every action passes a tiered gate. Reads run
   free. Money/client-facing writes such as invoices, emails, and Service Fusion
   edits need a human tap. This is the trust spine.

3. **Memory/RAG Spine** - Every job, customer note, decision, and ledger entry
   retrievable by meaning, not keyword. The company's institutional memory that
   does not quit, forget a customer, or disappear when an employee leaves.

4. **Persistence/Continuity Layer** - Agents survive context death through
   ledger plus memory, following the Echo pattern, so judgment compounds instead
   of resetting every morning.

5. **The Ledger As Source Of Truth** - Every agent action append-logged,
   auditable, and replayable. The OS can answer why it did something.

6. **Skill Hot-Load Library** - Drop a new capability into the library and the
   Gateway picks it up with no redeploy. The OS grows new abilities without
   rebuilding the company.

### The Business Engine

This is Phoenix Electric, not a demo.

7. **Service Fusion Live Sync** - Bidirectional jobs/customers/invoices/estimates
   so the OS always knows the real field state and speaks the business system of
   record.

8. **Rexel Pricebook Engine** - Auto-pull live supplier cost plus the 7-tier
   pricebook so every estimate and material list is priced from current cost.

9. **M365 Mail Courier** - Cert-auth agent that reads, triages, drafts, and
   routes email/calendar items such as tech reports and customer comms.

10. **Voice Front Door** - Talk to the Gateway from the truck: next job, panel
    schedule, customer ETA. Hands-free field ops makes tech adoption realistic.

11. **Bluebeam Document Brain** - Ingest plans/specs/markups, answer questions,
    and pull takeoffs. The OS reads drawings so the estimator does not reread 40
    pages.

12. **Cron/System-Agent** - Morning report, weekly report, invoice collection,
    technician dailies happen on schedule, with approval gates in front of
    anything that sends.

13. **Cashflow Radar** - AR aging, unpaid invoices, and job-level profitability
    surfaced before they become emergencies.

14. **Stephanie's Desk** - Back-office ops agent for scheduling, invoicing, and
    customer intake so humans spend hours on high-value work instead of data
    entry.

### The Moonshots

15. **Estimate-from-Photo** - A tech photographs a panel/job site and the OS
    drafts a materials list plus priced estimate from the image fused with live
    pricebook data.

16. **Code-Compliance Copilot** - Firecrawl-fed NEC/local-code lookups grounded
    in current published code so estimates and installs are defensible.

17. **Supplier/Manufacturer Intel Agent** - Firecrawl agent for manufacturer
    pages, price updates, spec sheets, competitors, and structured filing into
    memory.

18. **Customer Heartbeat** - Proactive ETA texts, post-job follow-ups, review
    requests, and membership renewals.

19. **Field-Tech Dispatch Optimizer** - Sequence the day by location, skill, and
    urgency to reduce drive time and recover billable hours.

20. **Generac/Equipment Telemetry Monitor** - Watch installed generators and
    systems, flag service needs before the customer loses power.

21. **The Gauntlet** - Adversarial multi-agent review before risky outputs ship:
    estimates, deploys, or client messages.

22. **Self-Healing Deploys** - The OS watches its own health, rolls back bad
    pushes, and only pings Shane when it cannot fix itself.

23. **Agent Roundtable** - Echo, Firedancer, Browser, and others deliberate hard
    calls and hand up a synthesized recommendation with dissent shown.

24. **Two-Lane Failover Fabric** - Echo plus Firedancer VPS lanes with
    health-checked failover.

25. **Local-First Privacy Wall** - Bulk inference on local Ollama/Nemotron, with
    client data leaving only after redaction and approval.

26. **One Front Door, One Brain** - Voice, web, Teams, and SMS hit the same
    Gateway and memory so the OS is one coherent entity.

**Prize pick from Entry A:** Estimate-from-Photo plus live Rexel pricebook plus
approval firewall. A tech photographs a job, the OS prices it from live cost,
and Shane taps approve from his phone before it sends.

## Entry B - V2 Python Twin Peaks Build-Outs

1. **Hash-Chained Append-Only Audit Ledger** - Every model call, tool call, and
   approval written as tamper-evident JSONL the runtime cannot rewrite.

2. **HITL Approval Gates With Risk Tiers** - Destructive, spend, and
   client-facing actions pause the loop and push to Shane's phone for go/no-go.

3. **Model Router By Complexity/Cost/Privacy** - Routine traffic to local
   Nemotron, hard reasoning to Claude, privacy-pinned routes that never leave
   the box.

4. **MCP Tool Registry With Per-Agent Allowlists** - Tools become granted
   capabilities, not ambient powers.

5. **Session Continuity As Runtime Primitive** - The ledger/PRO_BUFFER pattern
   baked into the gateway: every session writes its entry, every wake reads the
   last one.

6. **Twin-Lane Canary Deploys** - Deploy to firedancer first, healthz gates
   promotion to echo.

7. **Caddy Auto-TLS On 443** - Caddyfile for automatic Let's Encrypt certs,
   renewal, and HTTP-to-HTTPS redirect.

8. **Tailscale-Only Admin Plane** - SSH and admin endpoints bound to tailnet;
   public internet sees only 443.

9. **OpenTelemetry Traces To Grafana Cloud** - One trace per request through
   router, tool, model, and response.

10. **WebSocket Live-Ops Console** - Stream agent reasoning, tool calls, and
    pending approvals to a browser in real time.

11. **Voice Lane: Whisper In, TTS Out** - Field-first voice interface using the
    preserved phoenix-voice lane and vaulted speech credentials.

12. **Service Fusion Webhook Ingestion** - Jobs and estimates push into the
    gateway instead of being polled.

13. **Fine-Tuning Flywheel** - Harvest the gateway audit ledger as training data
    for Twin Peaks capability-family specialists.

14. **Gauntlet-As-CI** - Adversarial review wired into GitHub Actions as a merge
    gate.

15. **SQLite + Litestream Durable State** - WAL-mode SQLite with continuous
    streaming replication to Azure blob.

16. **Vector Memory Via sqlite-vec** - Filesystem-first memory gains semantic
    search without a separate database server.

### Power-User Setups

17. **uv (Astral)** - Fast Python package/project manager replacing pip/venv
    friction.

18. **ruff + pre-commit** - Fast lint and format before commit.

19. **Pydantic v2 Strict Contracts** - API, tool I/O, and config validated at
    every boundary.

20. **GitHub Actions OIDC To Azure, Keyless** - No stored cloud credentials in
    GitHub.

21. **gitleaks In CI + pre-commit** - Credential scanning on every commit and
    PR.

22. **systemd Sandbox Hardening** - ProtectSystem, PrivateTmp, NoNewPrivileges
    on gateway services.

23. **just Task Runner** - `just deploy`, `just logs`, `just canary`; operational
    knowledge versioned.

24. **structlog JSON Logging With Request IDs** - Machine-parseable correlated
    logs.

25. **pytest + Hypothesis Property Testing** - Machine-generated edge cases.

26. **atuin + fzf + zoxide Shell Stack** - Searchable synced shell history.

27. **direnv + Vault-Backed .envrc** - Secrets loaded on repo entry and
    evaporated on exit.

28. **Ollama On Studio As Tailnet Fleet Endpoint** - Locked Nemotron lineup
    served over Tailscale.

29. **Firecrawl Scheduled Knowledge Shelf** - Recurring crawls of Generac,
    Service Fusion, and vendor docs into versioned markdown.

30. **Deep healthz + External Uptime Paging** - `/healthz?deep=1` proves vault,
    model providers, disk, and external pinger status.

**Prize pick from Entry B:** Audit ledger plus observability plus fine-tuning.
The gateway's flight recorder becomes dashboards today and training data
tomorrow.

## Entry C - Runtime Control Plane And Operator Features

1. **Twin Peaks Runbook Compiler** - Turns Shane-approved runbook sections into
   executable Python tasks, tests, workflows, and deployment steps.

2. **Python Runtime Control Plane** - Central FastAPI command surface for Echo,
   Firedancer, browser agents, deployment lanes, health checks, and operator
   commands.

3. **Phoenix Memory Ledger API** - Converts session ledgers into searchable
   structured memory with session IDs, decisions, commits, proof, and handoffs.

4. **Feature Brainstorm Forge** - Generates, ranks, and combines feature
   proposals across agents, then turns winners into implementation packets.

5. **Firecrawl Research Intake Lane** - Pulls external docs, competitor pages,
   specs, and API references into clean research packets.

6. **Agent Role Router** - Routes work to Echo, Firedancer, Browser, or
   Codex-style roles based on task type.

7. **Gateway Lane Manager** - Manages echo and firedancer deploy lanes with
   separate hosts, vault secrets, rollback notes, and health proofs.

8. **Proof Before Claim Gate** - Blocks done language unless evidence exists:
   test, probe, commit SHA, workflow run, screenshot, or verified file read.

9. **Archive Before Action Engine** - Snapshots code/docs before destructive
   moves and records preservation location.

10. **Python-Primary UI Bridge** - Keeps browser UI wired into FastAPI cleanly
    so frontend and runtime do not drift.

11. **Runbook-To-GitHub PR Builder** - Opens branch, commits changes, drafts PR,
    tags risk, and stops before merge.

12. **Vault Contract Verifier** - Checks Key Vault for required secret names by
    lane without exposing values.

13. **Live Endpoint Truth Panel** - Status page for HTTP/HTTPS, healthz,
    runtime info, commit, service, cert, and lane health.

14. **Rollback Commander** - Preserves old services but keeps one documented
    rollback path per lane.

15. **Agent Competition Board** - Tracks submitted features, scores them, and
    lets Shane crown the winning combined feature set.

16. **Contamination Detector** - Flags rendered-page weirdness, injected UI
    controls, stale docs, blocked tokens, and raw/render mismatch.

17. **Twin Peaks Build Matrix** - Maps every planned V2 module to idea, runbook,
    code, tests, deploy wiring, proof, archive, and live status.

18. **Operator Button Queue** - Collects exact buttons Shane must press: Azure
    Add, GitHub Configure, Ready for review, Merge, workflow dispatch.

19. **Session 044+ Chronicle Writer** - Writes ledger entries automatically from
    commits, workflow runs, endpoint probes, and decisions.

20. **Phoenix Stack Doctor** - One command reports repo, branch, remote, dirty
    files, tests, workflow health, vault names, DNS, ports, certs, and live
    endpoint status.

## Entry D - Python Stack Proposal

1. **Firecrawl** - Turns messy websites and docs into clean, LLM-ready markdown
   with a single API call. Ingestion layer for everything downstream.

2. **FastAPI** - Async-first Python web framework with automatic OpenAPI docs
   and Pydantic validation.

3. **Pydantic v2** - Fast structured validation so bad inputs die at the edge.

4. **LangGraph** - Stateful multi-step agent workflows as graphs with
   checkpoints and human-in-the-loop control.

5. **Polars** - Fast DataFrame library for data crunching at scale.

6. **Ruff** - Rust linter/formatter replacing Black, isort, and Flake8 for most
   needs.

7. **uv** - Fast Python package and project manager.

8. **Postgres + pgvector** - Structured data plus vector search in one engine.

9. **Redis** - Cache, queue, and rate-limit layer for expensive calls.

10. **Celery Or RQ** - Task queue for crawls, embeddings, and report generation.

11. **Sentry** - Error tracking and performance monitoring.

12. **Docker + docker-compose** - Containerized local/dev deployment baseline.

### Should-But-Does-Not-Have-To Tier

13. **Instructor** - LLM calls return validated Pydantic objects instead of raw
    text.

14. **Streamlit** - Fast Python dashboards and demos.

15. **HTTPX** - Async HTTP client for Firecrawl and API calls.

16. **Tenacity** - Retry logic with backoff.

17. **MkDocs Material** - Documentation site from markdown.

**Prize pick from Entry D:** Firecrawl -> Instructor/Pydantic -> LangGraph ->
pgvector. Raw web in, validated structure through stateful agent workflow, then
semantic memory out.

## Entry E - Forensic Lane-Mapped Browser Echo Pitch

### Grounding Statement

This entry claimed to read the CHARTER, STRUCTURE map, and lane-to-DRZIP spec
before proposing features. It framed Twin Peaks V2 as:

- Python-primary Gateway OS
- 12 capability lanes
- 5 cross-cutting concerns
- two-server topology: Echo/Claude on Hostinger plus Codex/OpenAI
- Shane and Stephanie seats
- approval-floor governance model
- build-safe discipline: MOVE/COPY/REFERENCE, no deletes,
  credential-review-only

### Features

1. **Firecrawl As Lane-08 Ingestion Front-End** - RAG lane is file-first plus
   FTS5 live, with vector/Obsidian/Letta target. Firecrawl cleans Rexel,
   Bluebeam, and M365 content before FTS5/pgvector.

2. **Pydantic-AI Contracts On Gateway Runtime (Lane-01)** - `/v3/chat` and
   `/v1/messages` are Python-target while `/api/chat` remains Node-live.
   Pydantic v2 contracts support porting ATLAS endpoints, websocket frames, and
   lifespan events without stale Node claims.

3. **Unified Model Router With Instructor (Lane-02)** - Python router wrapping
   Anthropic, OpenAI, and Nemotron-3 with Instructor-validated structured
   outputs. Addresses OpenAI as config-only/Python-gap rather than Node-backed
   live claim.

4. **Approval-Floor As Real Middleware (Lane-03 + security)** - Project context
   said "52 DANGEROUS (not 47)" and "ToolGatekeeper = dead-code." Port Phoenix Runtime Skills
   approval and credential pool patterns into a live Python MCP approval gate.

5. **LangGraph For The Gauntlet (Lane-05)** - State graph with checkpoints for
   adversarial review, browser-witness, and Builder Ledger as auditable flow.

6. **Phoenix Runtime Skills As First-Class Capability Framework (Lane-12, Shane #19)** - Shared
   skill/tool-registry/messaging spine cross-linking tools/approval, agents, and
   memory.

7. **Fine-Tuning Lane Finally Built (Lane-11)** - Nemotron readiness context
   called this a confirmed loss with no DR home and noted Mac Studio is not a
   training box. Proposed LoRA/QLoRA plus cloud GPU plus GGUF distillation.

8. **pgvector As Single Memory Engine (Lane-08)** - Postgres+pgvector handles
   structured records and embeddings and replaces defective Node memory
   constructor assumptions.

### Should-But-Does-Not-Have-To Tier

9. **Distinct Per-Agent Voice (Lane-09)** - Python voice-signature registry so
   each agent keeps a distinct signature.

10. **Two-Server Topology As Code** - Echo proven; Codex-server spec unwritten.
    Declarative topology manifest writes the missing half.

11. **Cron + Durable Audit Log** - Unify system-agent fragments with Celery/RQ
    and an append-only audit log.

12. **Service Fusion + Rexel + Pricebook Carry (Lane-07)** - Preserve read-only
    SF v1 posture while adding absent Rexel and pricebook lanes.

13. **Stephanie's Scoped Seat** - Pull scoped access into the corpus as RBAC
    config.

**Prize pick from Entry E:** Firecrawl -> Pydantic/Instructor -> Phoenix Runtime Skills
Lane-12 -> LangGraph Gauntlet -> pgvector.

Reason: raw source enters, gets validated, routes through Phoenix Runtime Skills capability
spine, gets orchestrated and adversarially witnessed by Gauntlet, and persists
as searchable memory. It closes Lane-08 target gap and lights up Phoenix Runtime Skills at the
same time.

## Cross-Entry Convergence

The repeated kernel across the board:

1. Router.
2. Approval firewall.
3. Memory/RAG/persistence.
4. Audit ledger / proof before claim.
5. Firecrawl ingestion.
6. Phoenix Runtime Skills/capability spine.
7. Gauntlet/adversarial review.
8. Two-lane deployment/health proof.

The strongest difference:

- Entry A is most business-real.
- Entry B is most infrastructure-grounded.
- Entry C is most operator/control-plane focused.
- Entry D is the cleanest generic Python stack.
- Entry E is the most forensic/lane-mapped.
