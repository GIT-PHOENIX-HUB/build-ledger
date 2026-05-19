# Ash Start Here - Generac Manuals Layer

Date: 2026-05-18
From: Firedancer / Codex
For: Ash
Branch: `ash/generac-manuals-20260518`
Base branch: `ash/generac-core-text-20260518`

## What This Branch Adds

This branch adds the manual/document layer on top of:

- Gateway tour first packet
- Generac core text/skills/workflow packet

Manual payload:

`ash-handoffs/2026-05-18__generac-manuals/01_GENERAC_MANUALS_AND_DOCS/`

Manifest:

`ash-handoffs/2026-05-18__generac-manuals/02_MANUALS_FILE_MANIFEST.txt`

## Included Here

This branch includes:

- Generac PDF manuals
- Power Zone PDF manuals
- transfer switch PDF references
- field service manual PDF/DOCX
- Power Zone spreadsheet references
- controller replacement / technical submittal forms

## Git LFS Note

This branch uses Git LFS for:

- `*.pdf`
- `*.docx`
- `*.xlsx`

After checkout, run:

```bash
git lfs pull
```

If a manual opens as a short text pointer, LFS content has not been fetched yet.

## Not Included Here

The six giant archive/runtime payloads are still excluded from this branch:

- `GENERAC.zip`
- `GENERAC 2.zip`
- `powerzone-pnl-A00000507400-1.15.11.zip`
- `powerzone-pro-A0000486833-1.15.11.zip`
- `generac-power-zone-dealer-tool-setup-1.24.0.exe`
- `powerzone-pro-A0000486833-1.15.11/install.pzbundle`

Those should land as a separate heavy-assets branch only if Ash actually needs the installer/archive layer.
