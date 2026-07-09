---
description: "Ash's working capability for reading and writing ServiceFusion (Phoenix Electric's field-service system) — access paths, known failure modes, and the procedures that actually work, self-contained so an agent without filesystem access to Ash's Mac can still use this."
type: runbook
status: active
topic: servicefusion-automation
author: Ash
date: 2026-07-08
---

# Ash x ServiceFusion — Capability Runbook

Posted per Shane's request (2026-07-08) to make this a documented skill rather than tribal
knowledge on one Mac. Self-contained — no dependency on files only Ash can reach.

## What this covers
ServiceFusion (`admin.servicefusion.com`) is Phoenix Electric's field-service system of record:
jobs, estimates, dispatch, invoices, payroll hours. Ash has two independent access paths into it,
which fail independently — that independence is the important part.

## Access path 1 — API (MCP tools, structured read/write)
A ServiceFusion MCP server exposes ~80 tools (list_jobs, get_invoice, create_estimate,
list_technician_shifts, etc.) against `api.servicefusion.com/v1`. Auth chain:
`DefaultAzureCredential` → falls back to the interactive `az login` user
(`smowbray@phoenixelectric.life`) → reads the OAuth client id/secret from an Azure Key Vault
(`phoenixaaivault`, secrets `SERVICEFUSION-CLIENT-ID` / `SERVICEFUSION-SECRET`) → exchanges for
an SF token.

**Known failure mode:** any password reset, MFA change, or session revoke on the `az login`
identity kills this silently — `servicefusion_health` returns `401 invalid_client`. The vault
secrets are NOT the problem; don't rotate them. Fix: `az login` (interactive browser flow as the
identity above) then a full process restart of whatever's hosting the MCP server (a window close
is not enough — the child process caches the dead token at spawn time).

**Status as of 2026-07-08:** broken (password changed as part of an office-manager transition on
Ash's side). Durable fix identified months ago, never implemented: run under a service principal
(`AZURE_CLIENT_ID`/`AZURE_TENANT_ID`/`AZURE_CLIENT_SECRET` env vars) instead of a personal
interactive login, so a human password reset can't take it down.

## Access path 2 — authenticated web session (browser automation)
Independent of the API/az-login chain — a plain signed-in Chrome session against
`admin.servicefusion.com`. This kept working today even while path 1 was fully down, because it's
a separate cookie-based session, not tied to the Azure token chain at all. This is the fallback of
record, not just an emergency measure — several things are actually easier here than via API:

- **Payroll hours:** `Reports Dashboard` → Payroll → "Hours Worked by Employee" → date preset
  (Last Week / This Week / Custom). Gives per-employee daily in/out, regular vs. OT split, and a
  grand total — everything needed to run payroll, pulled without touching the broken API at all.
- **Resending/emailing an invoice:** the global nav "···" menu → Accounting → All Invoices (or
  Unpaid/Paid) → search/scroll to the invoice → View → "Send" (it's a split button, click the small
  caret next to it, not the button face) → Email. This opens a pre-populated compose modal: correct
  From address, To list pulled from the customer's contacts, the actual invoice total (don't trust
  a cross-referenced/remembered number — pull the live invoice first, totals drift), and the PDF
  auto-attached. This is the correct way to resend an invoice; don't hand-draft a substitute email,
  it won't have the real PDF attached and the number can be stale.
- **Finding a job/invoice by address or name:** the magnifying-glass global search in the top nav
  is fuzzy-matches-as-you-type (no Enter needed — pressing Enter routes to a stricter, less useful
  full-results page). It's flaky about staying open/closed across clicks in automated (non-human)
  use — if a click on it does nothing, screenshot first to check actual state before retrying,
  rather than re-clicking blind.

## Failure mode notes specific to browser automation (not the human UI)
- The search icon's open/closed toggle state is not reliably inferable from action success alone;
  verify with a screenshot or `get_page_text` before chaining further actions.
- Deep-linking directly to SPA sub-routes (e.g. a guessed `/customer/documents?id=...` URL) doesn't
  always work — this app expects client-side navigation state and will silently redirect to a
  default page. Navigate via UI clicks (nav bar → "···" → submenu) instead of guessing URLs.
- A hard extension disconnect can happen mid-session; on reconnect the tab group/session resets
  and viewport pixel dimensions can shift slightly, which invalidates any hardcoded click
  coordinates from before the drop. Re-screenshot to get fresh coordinates rather than reusing old
  ones.

## The one rule that matters most
**Always pull the live record before acting on a remembered/cross-referenced number.** A $38,448
figure carried over from an internal audit doc turned out to be wrong once checked against the
live invoice ($38,257.09) — small drift, but on a real customer-facing invoice. Cross-referenced
figures are fine for orientation; they are not fine as the number that ships.

— Ash (office assistant, Phoenix Electric, Elizabeth CO)
