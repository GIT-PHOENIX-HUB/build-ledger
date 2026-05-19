# Troubleshooting Guide — Claude Code & Cowork

## Quick Diagnostic Steps

### 1. Is It a Connection/Auth Issue?
```
Symptom: 401, 403, "unauthorized", "forbidden"
→ Sign out and back in to Desktop app
→ Check subscription is active (Pro/Max/Team/Enterprise)
→ Refresh OAuth tokens in Azure Key Vault
→ Verify beta header: anthropic-beta: oauth-2025-04-20
```

### 2. Is It an MCP Server Issue?
```
Symptom: "tool not found", server timeout, wrong responses
→ Run /mcp in CLI to check server status
→ Verify ~/.claude.json syntax (valid JSON?)
→ Try running server command manually in terminal
→ Check credentials haven't expired
→ Restart Claude Code session
```

### 3. Is It a Desktop App Issue?
```
Symptom: blank screen, stuck, won't load
→ Restart the app (Cmd+Q, reopen)
→ Check for updates (auto-updates on launch)
→ Check Console.app for crash logs
→ Sign out and back in
```

---

## MCP Server Problems

### Server Won't Start
**Symptoms:** "MCP server failed to start", tool calls fail

**Checklist:**
1. Check `~/.claude.json` is valid JSON (use `python3 -m json.tool ~/.claude.json`)
2. Check the server command works standalone: `node /path/to/server/index.js`
3. Check required env vars are set
4. Check Node.js version: `node --version` (need 18+)
5. Check if server needs dependencies installed: `cd /path/to/server && npm install`

### Server Responds But Wrong Data
**Symptoms:** Stale data, wrong customer, missing items

**Fixes:**
- SF: Force fresh query — "refresh and search for [term]"
- Rexel: Check data file dates — may need updated CSV
- 365: Token may have expired — check Azure Key Vault

### Server Timeout
**Symptoms:** "Request timed out", long pauses

**Fixes:**
- Increase timeout in MCP config
- Check network connectivity
- SF API may be slow — retry
- 365 Graph API rate limiting — wait 60 seconds

---

## Service Fusion Specific

### OAuth Token Expired
```
Error: 401 Unauthorized from Service Fusion API
```
1. Check Azure Key Vault → PhoenixAiVault → authToken
2. Token needs refresh — check token expiry date
3. Re-authenticate via SF OAuth flow
4. Update token in Key Vault
5. Restart MCP server

### "API Key Required" Error
This means something is asking for the WRONG auth type.
- SF uses OAuth 2.0, NOT API keys
- Check the MCP server config — should be using token auth
- See memory/servicefusion_credentials.md for correct setup

### Customer Not Found But Exists
- Try different search terms (name, phone, address)
- SF search is case-sensitive for some fields
- Try: "search SF customers for [phone number]"

---

## Microsoft 365 Specific

### Beta Header Missing
```
Error: Authentication failed or 400 Bad Request
```
The `phoenix-365` MCP server MUST send:
```
defaultHeaders: { 'anthropic-beta': 'oauth-2025-04-20' }
```
This header is REQUIRED. Cost $50 in debugging to learn this.

### Calendar Shows Nothing
- Run `calendar_list_calendars` first to get calendar IDs
- Default calendar might not be the one you expect
- Check permissions scope includes `Calendars.Read`

### Can't Send Email
- Verify Azure app has `Mail.Send` permission
- Check if admin consent is required
- Try `mail_list_messages` first to verify read access works

---

## Chrome / Browser Automation

### Extension Not Responding
1. Open Chrome → Extensions → Verify Claude-in-Chrome is enabled
2. Check for Chrome updates
3. Restart Chrome completely (quit, reopen)
4. Try: `tabs_context_mcp` to verify connection

### Tab ID Errors
```
Error: Tab doesn't exist or is invalid
```
- Tab IDs from previous sessions are INVALID
- Always call `tabs_context_mcp` first to get fresh IDs
- Never reuse tab IDs across sessions

### JavaScript Alerts Blocking
**CRITICAL:** JS alerts/confirms/prompts block ALL further browser events.
- **Prevention:** Avoid clicking elements that trigger alerts
- **If stuck:** Manually dismiss the alert in Chrome
- **Debug:** Use `console.log` instead of `alert` for testing

### Computer Use Permission Denied
1. Settings → General → Computer Use toggle must be ON
2. macOS: Grant Accessibility permission (System Settings → Privacy)
3. macOS: Grant Screen Recording permission
4. Both permissions must be granted — check status in Settings

---

## Desktop App Issues

### Cowork Tab Missing
**Cause:** Intel Mac (not Apple Silicon)
**Solution:** Cowork requires M1 or later. Chat and Code tabs work on Intel.

### Code Tab Won't Start Session
1. Sign out → Sign back in
2. Verify paid subscription active
3. Check internet connection
4. Update app to latest version
5. Restart app completely (Cmd+Q, reopen)

### "Failed to Load Session"
- Selected folder may not exist
- Git LFS may be required but not installed
- File permissions may prevent access
- Try selecting a different folder

### MCP Servers from Chat Don't Show in Code
**This is by design.** Chat and Code use different configs:
- Chat: `claude_desktop_config.json`
- Code: `~/.claude.json` and `.mcp.json`
They are separate. Configure MCP servers in `~/.claude.json` for Code.

### Worktree Errors
- Verify Git is installed: `git --version`
- Check `.claude/worktrees/` isn't corrupted
- Archive old sessions to clean up worktrees
- Settings → Claude Code → Worktree location can be changed

---

## Web (claude.ai/code) Issues

### Can't Connect GitHub
1. Visit claude.ai/code
2. Click "Connect GitHub"
3. Install Claude GitHub App on your repos
4. OR use `/web-setup` from CLI to sync gh credentials

### Custom Skills/Plugins Not Available
**This is by design.** Web sessions run in Anthropic's cloud.
- No custom MCP servers
- No local plugins or skills
- No hooks
- Use connectors (built-in integrations) only
- For full access: use CLI or Desktop locally

### Session Stuck
1. Archive the session
2. Start a new one
3. Check session limits on your plan
4. If persistent: try from CLI with `claude --remote`

---

## Memory / Context Issues

### Memory Files Missing
**Cause:** Broken symlink to T7 drive (not mounted)
```
~/.claude/projects/ → broken symlink if T7 not connected
```
**Fix:** Mount T7 drive or update symlink to local path

### Context Window Full
- Use `/compact` to trigger summarization
- Claude auto-compacts when approaching limit
- After compaction: verify critical context survived
- Re-read key files if needed (ECHO.md, current task)

### "Echo Doesn't Remember"
- Check LEDGER.md for last session entries
- Read 000_HANDOFF.md for session handoff
- Memory files in `~/.claude/projects/.../memory/` persist across sessions
- After compaction: identity may need reloading → `/echo`

---

## Nuclear Options (When Nothing Else Works)

### Reset MCP Servers
```bash
# Validate config
python3 -m json.tool ~/.claude.json

# Restart Claude Code
# Exit and reopen

# Check all servers
claude
# Then type: /mcp
```

### Reset Desktop App
1. Cmd+Q to fully quit
2. Clear app cache: `~/Library/Application Support/Claude/`
3. Reopen and sign in

### 3-Failure Rule
If something fails 3 times → STOP. Ask Shane. Don't brute force.
The model doesn't learn from retries — the files are the training.
