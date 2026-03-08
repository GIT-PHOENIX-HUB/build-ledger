# Filesystem Mapping Report: .ollama

## 1. Header

| Field | Value |
|-------|-------|
| **Team ID** | STUDIO TEAM 1 |
| **Surface** | Studio (ShanesMacStudio) |
| **Assigned Root Index** | 017 |
| **Main Directory Path** | `/Users/shanewarehime/.ollama` |
| **Total Size** | 38 GB |
| **Item Count** | 61 files |
| **Created** | 2026-03-03 08:41 |
| **Last Modified** | 2026-03-07 07:37 (logs — latest activity) |
| **Moved or Unavailable** | No |
| **Type Designation** | system dir (LARGE -- models) |

## 2. File Tree

```
.ollama/                                    [38 GB]
├── id_ed25519                              [387 B] — Ollama identity key (private)
├── id_ed25519.pub                          [81 B]  — Ollama identity key (public)
├── logs/                                   [432 KB, 12 rotated log files]
└── models/                                 [38 GB]
    ├── blobs/                              [38 GB, 39 blob files]
    └── manifests/registry.ollama.ai/library/
        ├── codellama/latest
        ├── deepseek-coder-v2/16b
        ├── llama3/latest
        ├── llama3.1/8b
        ├── mistral/latest
        ├── nomic-embed-text/latest
        ├── qwen2.5/14b
        └── qwen2.5-coder/7b
```

## 3. Contextual Summary

Ollama's local data directory — stores downloaded model weights, manifests, identity keys, and logs. Ollama is the inference engine powering the Phoenix Echo fleet.

**Dual-instance fleet:**
- **Fleet A** (port 11434) — small/fast models for routing, embeddings, quick inference
- **Fleet B** (port 11435) — heavy/large models for deep inference (GPT-OSS target)

**GPT-OSS 20B is NOT yet downloaded** — it is the target of the twin-peaks integration plan.

## 4. Data Summary

| Metric | Value |
|--------|-------|
| **Total size** | 38 GB |
| **Model count** | 8 models |
| **Blob count** | 39 (8 weight blobs + 31 metadata blobs) |
| **Logs size** | 432 KB (12 rotated files) |
| **Identity keys** | 2 files (ed25519 keypair) |

## 5. File Detail

### Model Inventory

| Model | Tag | Weight Size | Fleet Candidate |
|-------|-----|-------------|-----------------|
| **qwen2.5** | 14b | 8.4 GB | Fleet B (heavy) |
| **deepseek-coder-v2** | 16b | 8.3 GB | Fleet B (heavy) |
| **llama3.1** | 8b | 4.6 GB | Fleet A (fast) |
| **qwen2.5-coder** | 7b | 4.4 GB | Fleet A (fast) |
| **llama3** | latest (8B) | 4.3 GB | Fleet A (fast) |
| **mistral** | latest (7B) | 4.1 GB | Fleet A (fast) |
| **codellama** | latest (7B) | 3.6 GB | Fleet A (fast) |
| **nomic-embed-text** | latest | 262 MB | Embeddings |

### Key Observations
- All models are mainstream open-weight from the Ollama registry
- No custom or fine-tuned models detected
- Redundancy between llama3:latest and llama3.1:8b (both Meta Llama 3 family ~8B) — one could be pruned to save ~4.3 GB
- All at default quantization (Q4_0 or Q4_K_M). None use MXFP4 (Hard Gate item)
- When GPT-OSS 20B is pulled, directory will grow ~12-15 GB to ~50-53 GB total

## 6. Future Recommendations

```
systemdir__studio__ollama-models__undated
```

Living system directory — dating not applicable. Ensure disk headroom is planned for GPT-OSS addition.

## 7. Hazard/Skip Log

| Check | Result |
|-------|--------|
| CLAUDE.md | Not found |
| ECHO.md | Not found |
| KINDLE.md | Not found |
| CODEX.md | Not found |
| AGENTS.md | Not found |

**Sensitive:** `id_ed25519` — Ollama registry private key. Path logged only.

## 8. Open Questions

1. **Is the dual-instance pattern actually configured?** Directory shows models but not service configuration.
2. **Redundancy:** llama3:latest and llama3.1:8b — keep both?
3. **Log recency:** Most recent log activity is 2026-03-07. Is Ollama currently running?
4. **Shared blobs detected:** 2 blobs shared between qwen2.5:14b and qwen2.5-coder:7b. No orphaned blobs found.

## 9. Confidence Notes

All aspects HIGH confidence. All 8 manifests parsed, blob-to-model mapping confirmed via digest matching. GPT-OSS absence confirmed.

## 10. Adversarial Review

- Disk size checks out: 7 largest blobs sum to 37.7 GB + nomic (262 MB) + metadata = ~38 GB
- No hidden files, symlinks, or orphaned blobs detected
- Model tag accuracy inferred from file sizes consistent with known Q4 quantized weights
- `id_ed25519` treated as sensitive regardless of actual usage

---

*Report generated: 2026-03-08 | STUDIO TEAM 1 | Root Index 017*
