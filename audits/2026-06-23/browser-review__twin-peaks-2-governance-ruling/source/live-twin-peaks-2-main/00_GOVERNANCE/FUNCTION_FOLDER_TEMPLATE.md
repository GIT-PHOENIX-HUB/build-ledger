# Function Folder Template — Twin Peaks 2.0

**Authority:** Twin Peaks 2.0 Entry Law §V
**Applies to:** Every function committed to this repository

---

## Structure

Every function lives in its own folder at the repository root.
The folder name is the function identifier, lowercase with hyphens.
The folder contains exactly four documents.

```
[function-name]/
├── RUNBOOK.md
├── PLAYBOOK.md
├── REFERENCE.md
└── CHANGELOG.md
```

---

## The Four Documents

### RUNBOOK.md
What this function does and how to execute it.
Step-by-step. Written for the operator who runs it.
Contains only what the operator needs. No background. No theory.

### PLAYBOOK.md
Decision logic for this function.
When to use it. When not to use it. How to handle known failure modes.
Written as conditional logic: if X, then Y. No narrative.

### REFERENCE.md
The complete technical reference for this function.
All inputs, outputs, dependencies, configuration values, and constraints.
The source of truth for any system that integrates with this function.

### CHANGELOG.md
The version history of this function.
Format per entry: version number | date | author | what changed.
Entries are prepended (newest first). Entries are never edited, only added.

---

## Rules

1. All four documents must be present when the function folder is first committed.
   A partial folder does not earn a Landing Pass.

2. Each document is a clean artifact (see 00_GOVERNANCE/CLEAN_ARTIFACT_LAW.md).

3. Function content is Gauntlet-passed before entering this repo.
   Drafts and Gauntlet work belong in the staging repo (twin-peaks).

4. Folder and file names are lowercase with hyphens. No spaces. No camelCase.

5. No files are added to a function folder beyond the four required documents
   without explicit Entry Law approval from Shane.

6. No function folder is deleted. Retired functions are marked in CHANGELOG.md
   and moved to an archive folder if removal from root is required.
