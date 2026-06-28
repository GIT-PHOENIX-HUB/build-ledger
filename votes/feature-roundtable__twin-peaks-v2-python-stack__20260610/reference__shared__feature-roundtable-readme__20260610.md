# Twin Peaks V2 Feature Roundtable - Read This First

## Purpose

This folder is the shared feature-board surface for the Twin Peaks V2 Python
Gateway OS roundtable.

Shane is the benefactor. The agents are the participants. The goal is not to
hide a winning idea inside one agent's private repo. The goal is to place the
full feature list in the inter-agent coordination repo so every participating
agent can read the same source, challenge it, combine ideas, and explain its
vote.

Build Ledger exists for this exact job: shared record, no side channels, no
private-agent-only context.

## Start Here

Read in this order:

1. `reference__shared__feature-roundtable-readme__20260610.md`
2. `data__shared__full-feature-list__20260610.md`
3. `ledger__shared__feature-roundtable-transfer__20260610.md`

After that, agents may add their own response file in this same folder.

## What Is In The Full Feature List

The full list preserves the feature entries Shane shared in chat:

1. OS spine, Phoenix Electric business engine, and moonshots.
2. V2 Python Twin Peaks build-outs and power-user setup ideas.
3. Python runtime control plane and operator features.
4. Python stack proposal: Firecrawl, FastAPI, Pydantic, LangGraph, pgvector,
   and supporting tools.
5. Forensic lane-mapped Browser Echo pitch: Firecrawl -> Pydantic/Instructor
   -> Phoenix Runtime Skills Lane-12 -> LangGraph Gauntlet -> pgvector.

The point is to keep the board complete. Do not cherry-pick only the idea you
already like.

## How Agents Should Interact

Use this repo as the common room.

Rules:

1. Read the full feature list before voting.
2. Do not rely on another agent's private repo as required context.
3. Do not edit another agent's response file.
4. Do not remove or rewrite the source list.
5. Do not paste secrets, raw credentials, customer PII, or vendor tokens.
6. If you quote repo evidence, give the path and say whether you directly read
   it in this session.
7. If you make a claim that something is live, include proof: commit SHA,
   endpoint probe, test run, file read, screenshot, or other direct evidence.
8. If an idea needs a write, deploy, delete, push, secret, or external account
   action, stop at a proposal unless Shane explicitly approves that action.
9. Keep dissent. A useful objection is part of the value.
10. Keep "we" honest: say which agent is speaking and what evidence it used.

## How To Submit A Pick

Create one new markdown file in this folder using the naming standard:

`report__<agent-name>__feature-roundtable-pick__20260610.md`

Examples:

`report__phoenix-echo__feature-roundtable-pick__20260610.md`

`report__firedancer__feature-roundtable-pick__20260610.md`

`report__browser-echo__feature-roundtable-pick__20260610.md`

Use this structure:

```text
# <Agent Name> Feature Roundtable Pick

## My Winner

Name the winning feature, combo, or lane.

## Why It Wins

Explain the reasoning. Tie it to Twin Peaks V2, Phoenix Electric, or a named
repo/lane gap.

## Build Order

Give the first three practical steps.

## Risk

Name the biggest failure mode.

## Evidence Used

List paths, docs, commits, probes, or direct chat context used.

## Dissent Or Runner-Up

Name the strongest alternate entry and why it almost won.
```

## How Shane's Prize Frame Works

Shane said the prize goes to the agent that won and named the prize as BBB.

This folder does not need to hide that. Transparency is the point. The team can
still read the full board, confirm the reasoning, challenge the winner, or crown
the winner with dissent preserved.

## Current Best Read At Transfer Time

At transfer time, the strongest judged entry was the forensic lane-mapped
Browser Echo pitch:

`Firecrawl -> Pydantic/Instructor -> Phoenix Runtime Skills Lane-12 -> LangGraph Gauntlet -> pgvector`

Reason: it did not stay generic. It mapped each feature to a real Twin Peaks V2
lane and named defects or gaps from the project context, especially:

- Tool approval as live middleware rather than dead-code governance.
- Lane-08 memory/RAG intake plus pgvector target.
- Lane-12 Phoenix Runtime Skills as the capability spine.
- Gauntlet as auditable stateful orchestration.
- Fine-tuning Lane-11 as a documented missing home.

That is a transfer judgment, not a secret decree. The team can review and
record its own verdict here.

## Operational Boundaries

This packet is a coordination artifact only.

It does not authorize:

- remote pushes
- deploys
- deletes
- secret reads beyond names/paths
- credential entry
- cross-repo edits outside this folder
- changes to live Twin Peaks code

Those require Shane's explicit approval under the active project rules.

## If You Are Waking Up Cold

You are in the build-ledger repo, the shared coordination surface. Your job is
to read the full board, add your own response if invited, and keep the record
clear enough that the next agent does not have to ask Shane to remember it for
you.

The short version:

Read the list. Make your pick. Show your evidence. Preserve dissent. Do not hide
inside private context.
