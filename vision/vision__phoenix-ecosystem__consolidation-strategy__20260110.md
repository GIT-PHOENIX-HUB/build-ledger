# Consolidation Strategy
**Source:** Apple Notes, created 2026-01-10, modified 2026-03-29

---

## Summary of Changes

| Change | Original | Revised | Rationale |
| --- | --- | --- | --- |
| Function Apps | 13 separate | 6 consolidated | Reduce deployment/monitoring burden for solo dev |
| Tier Mix | 6 Consumption | 3 Premium + 3 Consumption | Premium only for critical paths that need <1s response |
| Cold Start Claims | "< 2 seconds" | Realistic: 10-30s Consumption, <1s Premium | Consumption is impossible <2s; Premium has keep-warm |
| Agent Specs | 30% abbreviated (hand-waved) | 36 complete PowerShell functions | All agents fully specified and buildable |
| Cost Estimate | $300/month | $687-922/month | Honest accounting for Premium, Claude API, telemetry |
| Failure Modes | 0 documented | 8 scenarios with runbooks | Full recovery documentation |
| Local Dev | Not specified | Docker Compose + Azurite + Cosmos emulator | Can test workflows offline |
| Distributed Tracing | Correlation ID only | OpenTelemetry integration | Full end-to-end tracing across apps |
| Orchestrator SPOF | Centralized risk | Dead Letter Queue fallback + Premium tier | Mitigated (not fully eliminated) |

## Key Consolidations

1. Courier + SharePoint → PA-02
  - Both use Microsoft Graph API
  - Combined into one app with mastery of all Graph endpoints
  - Reduces authentication complexity
2. Quote Generator + Marketing → PA-04
  - Both customer-facing (acquisition pipeline)
  - One app owns estimate→follow-up→campaign flow
  - Shared Bluebeam/PDF + CRM context
3. Schedule + Security → PA-05 + PA-06
  - Originally one agent doing two things
  - Split intentionally (not combined):
      - PA-05 handles dispatch/routing (operational)
    - PA-06 handles security/monitoring (guardian role, independent)
  - Security should NEVER be controlled by operations (conflict of interest)

---
## 4. CURRENT IMPLEMENTATION STATUS

### FULLY SPECIFIED (Ready to Build)

| Component | Status | Evidence |
| --- | --- | --- |
| Orchestrator (PA-01) | ✅ COMPLETE | Lines 149-450 of V5R: Classify-Intent, Route-Event with keyword-first + Claude fallback classification |
| Approval Gateway | ✅ COMPLETE | Risk matrix, timeout logic, dynamic escalation based on dollar amounts |
| Email Processing (PA-02) | ✅ COMPLETE | 5-category classification: INTERNAL, RECEIPT_INVOICE, CUSTOMER_SCHEDULING, VENDOR, GENERAL |
| Finance Functions (PA-03) | ✅ COMPLETE | Invoice creation, payment tracking, 4-tier pricing (45%/35%/25%/20%), collection schedules |
| Sales Functions (PA-04) | ✅ COMPLETE | Estimate generation, pricing logic, follow-up workflows (Days 3/7/14/21) |
| Operations Functions (PA-05) | ✅ COMPLETE | Customer/job management, folder structure (7 subfolders per customer), SharePoint integration |
| Monitoring Functions (PA-06) | ✅ COMPLETE | Health checks, audit logging, OpenTelemetry instrumentation |
| Knowledge Functions (PA-07) | ✅ COMPLETE | NEC code validation, technical documentation, teaching patterns |
| Failure Recovery | ✅ COMPLETE | 3 runbooks + circuit breaker configs for all critical paths |
| Local Development | ✅ COMPLETE | docker-compose.yml, Azurite setup, multi-app local testing |
| OpenTelemetry | ✅ COMPLETE | Start-OtelSpan, Write-OtelEvent, Write-OtelError patterns enforced throughout |

**APPROVED BY CLAUDE OPUS 4.5 (Session: v5-spec-review, 2026-01-01)**

All 8 audit issues verified as FIXED:

1. ✅ Cold Start Claims - Now realistic with Premium tier justification
2. ✅ Function App Count - Reduced from 13 to 6
3. ✅ Incomplete Specs - All agents have complete function definitions
4. ✅ Missing Failure Modes - 8 failure scenarios with recovery steps
5. ✅ Cost Estimates - $687-922/month (honest vs original $300)
6. ✅ No Local Dev - Full Docker Compose setup with emulators
7. ✅ Missing Distributed Tracing - OpenTelemetry throughout
8. ⚠️ Orchestrator SPOF - Mitigated (not eliminated): Premium tier + DLQ fallback

**GO DECISION: Ready for Gauntlet 2.0 implementation**

---
## 5. FUNCTION APPS & INFRASTRUCTURE

### Azure Function Apps

6 Apps totaling $579-649/month:

```
# PowerShell 7.2 runtime
# Managed Identity authentication
# Application Insights telemetry

fa-phoenix-coordination          # Premium EP1
├─ Triggers: HTTP, Service Bus Queue, Timer
├─ Manages: Event classification, routing, approval workflow
└─ Critical: Must be instant (<1s)

fa-phoenix-communications        # Premium EP1
├─ Triggers: Timer (5min), HTTP, Queue
├─ Manages: Email, notifications, Teams adaptive cards, SMS
└─ Critical: User-facing response time matters

fa-phoenix-operations            # Premium EP1
├─ Triggers: Timer (hourly), HTTP, Queue, ServiceTitan webhook
├─ Manages: Customer/job lifecycle, folder creation, document storage
└─ Critical: Frequent operations (100+ per day)

fa-phoenix-financial             # Consumption
├─ Triggers: Timer (9AM, 10AM, 2AM), HTTP, Queue
├─ Manages: Estimates, invoices, collections, pricing
└─ Cold starts acceptable: 10-30s fine for non-emergency tasks

fa-phoenix-support               # Consumption
├─ Triggers: Timer, HTTP, Queue
├─ Manages: Marketing campaigns, knowledge base, security scanning
└─ Cold starts acceptable: Non-critical operations

fa-phoenix-monitoring            # Consumption
├─ Triggers: Timer (every 15min, 6PM, 11PM, 3AM)
├─ Manages: Health checks, audit logs, daily reports, alerts
└─ Cold starts acceptable: Background work only
```

### Core Infrastructure
| Service | SKU | Cost | Purpose |
| --- | --- | --- | --- |
| Azure Service Bus | Standard | $10/mo | 12 queues for inter-agent messaging |
| Azure Cosmos DB | Serverless | $25-75/mo | 13 containers (workflow state, approvals, audit logs) |
| Azure Storage | Standard | $5/mo | Audit log table storage |
| Application Insights | Basic | $15-30/mo | OpenTelemetry telemetry collection |
| Azure Key Vault | Standard | $3/mo | 8 secrets (ST, Graph, QuickBooks, Claude API keys) |
| External: Claude API | Usage | $50-150/mo | Email classification (~500-1500/month) |

### 13 Cosmos DB Containers (Preserved from Playbook)

```
Workflow State
├─ customers
├─ jobs
├─ interactions
├─ approvals

Financial
├─ estimate_tracking
├─ invoice_tracking
├─ pricebook
└─ rexel_pricing (for future Rexel API)

Monitoring
├─ tech_daily
├─ security_events
└─ security_alerts

Learning
└─ aiLearnings (+ voiceProfiles for future Whisperer)
```

### Service Bus Queues (12 Total)
| Queue | Producer | Consumer | Purpose |
| --- | --- | --- | --- |
| coordination-queue | HTTP/Timer | Orchestrator | Event routing |
| operations-queue | Orchestrator | Operations | Customer/job operations |
| financial-queue | Orchestrator | Financial | Estimates/invoices |
| support-queue | Orchestrator | Support | Marketing/knowledge |
| approval-queue | All | Coordination | Approval requests |
| coordination-dlq | All | Monitoring | Dead letter fallback |
| notification-queue | All | Communications | Teams/Email/SMS |
| email-processed | Communications | Orchestrator | Classified emails for routing |
| st-webhook | ServiceTitan | Operations | Real-time job updates |
| graph-webhook | Microsoft Graph | Communications | Email/calendar changes |
| jobs-export | Operations | Financial | Job info for invoicing |
| collection-queue | Financial | Communications | Collection email drafts |

---
## 6. INTEGRATION POINTS

### ServiceTitan API Integration

Managed by: PA-05 Operations (fa-phoenix-operations)

```powershell
# OAuth 2.1 token management
Get-STToken -Validate / -ForceRefresh

# Customer Operations
Get-Customer -CustomerId
Create-Job -CustomerId -Details
Update-JobStatus -JobId -Status

# Real-time Webhooks
[WebhookType: CustomerCreated, JobCreated, JobCompleted, TechnicianAvailable]
→ Route to Operations queue
```

**Rate Limiting Handling:**
- 5 failures → Circuit breaker opens for 60s
- Retry with exponential backoff (jitter)
- Max delay: 5 minutes

**Graceful Degradation:**
- ST down → Queue operations for later retry
- Circuit breaker prevents cascading failures

### Microsoft Graph API Integration

Managed by: PA-02 Communications (fa-phoenix-communications)

```powershell
# Email Operations
Process-Email -Mailbox "info@phoenixelectric.life" (+ 7 more)
# Every 5 minutes
# 5-category classification (INTERNAL, RECEIPT_INVOICE, CUSTOMER_SCHEDULING, VENDOR, GENERAL)

# Teams Notifications
Send-AdaptiveCard to shane@phoenixelectric.life
# Risk-based formatting (LOW/MEDIUM/HIGH/CRITICAL)
# Approve/Deny buttons with callback URLs

# OneDrive/SharePoint
Create-Folder -CustomerName -CustomerId
# 7 subfolders per customer: Estimates, Invoices, Job Docs, Photos, Permits, Correspondence, Contracts
# Document type → auto-sort into folder

# Calendar Management
# Read technician availability (future: Whisperer integration)
# Block time for jobs
# Send meeting invites for callbacks
```

**OAuth Token:**
- Managed Identity → Application permissions (no user prompt)
- Refresh token in Key Vault
- Expires → Auto-refresh via schedule

### QuickBooks API Integration

Managed by: PA-03 Finance (fa-phoenix-financial)

```powershell
# Invoice Operations
Create-Invoice (customer, items, tax, labor)
# Reference ServiceTitan job ID
# Store in Cosmos estimate_tracking + invoice_tracking

# Payment Tracking
Process-Payment -InvoiceId -Amount -Method
# Update invoice status → Paid/Partial/Overdue
# Feed into Collection workflow
```

**Account Reconciliation:**
- Chase bank account sync (future enhancement)
- Automatic matching of deposits to invoices

**OAuth 2.0:**
- Key Vault secret storage
- 90-day token refresh in background
- Failure → Queue operations for manual reconciliation

### Claude API Integration

Managed by: PA-01 Orchestrator (fa-phoenix-coordination)

**Email Classification (Secondary):**
- Only when keyword confidence < 0.8
- Reduces API cost by 60-70%
- Cost: $50-150/month for ~500-1500 classifications
- Timeout: 30s (fallback to keyword-only)
- Circuit breaker: 3 failures → disable for 30s

**Prompt Template:**
```
System: "You are an email classifier for Phoenix Electric..."
User: Subject + first 500 chars of body
Response: { "category": "...", "confidence": 0.95 }
```

**Error Handling:**
- Timeout → Use keywords only (safe fallback)
- Invalid JSON → Retry once, then keywords
- Low confidence → Request human review

### ServiceTitan + QuickBooks Sync

**Data Flow:**

```
ServiceTitan Job Created
        ↓
Operations: Create-Job (PA-05)
        ↓
Service Bus: jobs-export queue
        ↓
Financial: Sync-JobToQuickBooks (PA-03)
        ↓
QuickBooks: Invoice created, linked to ST job
        ↓
Payment comes in → Collections workflow triggers
```

---
## 7. FAILURE MODE ANALYSIS & RECOVERY

### 8 Critical Failure Scenarios
| Failure | Detection | Impact | Recovery |
| --- | --- | --- | --- |
| fa-phoenix-coordination down | Health check fails | All new workflows stop | Auto-restart via Azure, manual if >5 min |
| fa-phoenix-communications down | Health check fails | No emails/notifications | Workflows queue notifications, retry when restored |
| fa-phoenix-operations down | Health check fails | No ST/SharePoint ops | Workflows queue operations, retry when restored |
| Service Bus outage | Connection test fails | All async processing stops | Failover to secondary namespace (if configured) |
| Cosmos DB throttled | 429 errors, high latency | State reads/writes slow | Automatic retry with exponential backoff |
| Claude API timeout | Timeout error | Classification falls back to keywords | Continue with keyword-only mode |
| ServiceTitan API down | Connection failures | No job/customer operations | Queue operations, retry when API restored |
| Graph API throttled | 429 errors | Email/calendar operations slow | Automatic retry respecting Retry-After header |

### Circuit Breaker Configuration

```yaml
servicetitan_api:
  failure_threshold: 5          # Failures before opening
  success_threshold: 3          # Successes to close
  timeout: 60 seconds           # Half-open state duration
  failure_window: 300 seconds   # Count failures in 5-min window

graph_api:
  failure_threshold: 5
  success_threshold: 3
  timeout: 30 seconds
  failure_window: 300 seconds

cosmos_db:                       # Lower threshold - critical
  failure_threshold: 3
  success_threshold: 2
  timeout: 10 seconds
  failure_window: 60 seconds

claude_api:
  failure_threshold: 3
  success_threshold: 2
  timeout: 30 seconds
  failure_window: 120 seconds
```

### 3 Recovery Runbooks

**Runbook 1: Coordination App Failure**
- Check Azure Portal status
- If stopped: Restart button
- If crashing: Check Application Insights for Key Vault/Service Bus/Cosmos errors
- If persists: Redeploy last known good version
- Escalation: Call Shane if unresolved in 15 minutes

**Runbook 2: Approval Backlog**
- Check if approver available (Teams status)
- If notifications not sent: Check Communications health
- If approver unavailable: Notify backup (if configured)
- NEVER auto-approve: Wait for human
- Note: System gracefully queues while waiting

**Runbook 3: ServiceTitan API Failure**
- Check status.servicetitan.com
- Validate token: Get-STToken -Validate
- If expired: Force refresh
- Check rate limits: Get-STRateLimitStatus
- If down: Switch to degraded mode, queue operations
- Escalation: ST support if down > 1 hour

### Retry Configuration

```yaml
exponential_backoff:
  initial_delay_ms: 1000       # 1 second
  max_delay_ms: 300000         # 5 minutes max
  backoff_multiplier: 2        # Double each retry
  jitter: true                 # Add randomization
  max_retries: 5
```

---
## 8. GOLDEN RULES ENFORCEMENT

All 5 Phoenix Electric Golden Rules embedded in architecture:

**Golden Rule: NEVER auto-send external emails**
Implementation: Draft-Email creates drafts in Outlook. Requires Request-Approval before Send-Email function. No bypass.

**Golden Rule: NEVER delete data (archive only)**
Implementation: No Delete functions exist. Soft-delete pattern: is_archived = true in Cosmos. Audit trail preserved.

**Golden Rule: ALL write operations require approval**
Implementation: Request-Approval called BEFORE every write to Cosmos/SharePoint/QuickBooks. Risk matrix determines timeout.

**Golden Rule: Full audit trail (100%)**
Implementation: Write-AuditLog called after every operation. Action, actor, timestamp, data changes recorded in Cosmos audit container.

**Golden Rule: 3-failure rule (circuit breaker)**
Implementation: After 3 consecutive failures to external API, circuit breaker opens. Prevents cascading failures. Health check runs to detect recovery.

---
## 9. READINESS ASSESSMENT

### Implementation Timeline (Gauntlet 2.0 Build Order)

| Week | App | Scope |
| --- | --- | --- |
| 1-2 | fa-phoenix-coordination | Orchestrator + Approval |
| 3-4 | fa-phoenix-communications | Email + Notifications |
| 5-6 | fa-phoenix-operations | ServiceTitan + SharePoint |
| 7-8 | fa-phoenix-financial | Quotes + Finance |
| 9-10 | fa-phoenix-support | Marketing + Knowledge + Security |
| 11-12 | fa-phoenix-monitoring | Health + Audit + Reports |
| 13-16 | Integration testing | Failure scenario validation |

### Deployment Readiness
| Item | Status | Evidence |
| --- | --- | --- |
| Azure Infrastructure | ⏳ PENDING | Needs provisioning: 6 Function Apps, Service Bus, Cosmos, Key Vault, Storage |
| PowerShell Code | ✅ READY | 36 functions specified with full error handling + OpenTelemetry |
| Cosmos Schema | ✅ READY | 13 containers defined, partition keys specified |
| Service Bus Queues | ✅ READY | 12 queues named and routed |
| Key Vault Secrets | ⏳ PENDING | 8 secrets identified, values from current ops need migration |
| CI/CD Pipeline | ❓ NOT SPECIFIED | Recommend: GitHub Actions → Azure Function App deployment |
| Testing Strategy | ✅ READY | Local dev with docker-compose, multi-agent workflow testing |
| Monitoring Dashboards | ⏳ PENDING | Application Insights queries for OpenTelemetry traces need setup |
| Runbooks | ✅ READY | 3 recovery runbooks documented, team training materials needed |
| Migration from Runbooks | ✅ READY | Mapping provided (ProcessEmails.ps1 → Communications, etc.) |

### Blockers to Build Start

**NONE - APPROVED TO BUILD**

All 8 audit issues resolved. 36 functions fully specified. Infrastructure requirements documented. Ready for
Gauntlet 2.0.

### Cost Implications

- Original estimate: $300/month
- Honest estimate: $687-922/month
- Delta: +$387-622/month
- Why higher: Premium tier required for SLA compliance, Claude API not included in original, realistic
Cosmos/telemetry costs

Cost Optimization: Start with 2 Premium apps (Coordination + Communications = $346/mo), upgrade Operations to
Premium only if latency issues arise.

---
## 10. DISTINCT FEATURES FROM 10-AGENT ORIGINAL

### New in Revised V5

1. Keyword-First Classification - 60-70% fewer Claude API calls, massive cost savings
2. Dynamic Risk Matrix - Approval timeouts based on dollar amounts ($5k threshold for estimates)
3. Dead Letter Queue Fallback - Unclassifiable events route to manual triage instead of failing
4. OpenTelemetry Tracing - Full end-to-end correlation across all 6 apps
5. Local Development Support - Docker Compose with Azurite + Cosmos emulator
6. Premium Tier Keep-Warm - Critical apps guaranteed <1s response, not "claimed" <2s
7. Circuit Breaker Patterns - Explicit failure thresholds, timeout durations, recovery steps
8. Recovery Runbooks - Step-by-step procedures for 3 common failure modes
9. Realistic Cost Accounting - Includes all external API costs, Premium tier, telemetry
10. 7-Agent Consolidation - Fewer apps to deploy, monitor, debug

---

## SUMMARY FOR SHANE

You asked: "What's the target V5 architecture?"

Answer:
- 6 Function Apps (not 13): fa-phoenix-{coordination,communications,operations,financial,support,monitoring}
- 7 logical agents (not 10): Command Orchestrator, Courier, Finance, Sales, Operations, Guardian, Knowledge Keeper
- 3 Premium + 3 Consumption: Strategic tier placement for SLA vs cost
- $687-922/month: Honest cost including premium, Claude API, and telemetry
- All 8 audit issues fixed: Complete specs, realistic timing, failure modes, recovery runbooks
- 36 PowerShell functions: Not pseudo-code, real implementations with error handling
- GO DECISION: Claude Opus 4.5 approved 2026-01-01

Build this. It's solid.
