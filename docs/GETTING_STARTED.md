# Getting Started with Google Antigravity

## What is Antigravity?

Google Antigravity (antigravity.google) is Google's agentic IDE — a full development environment where AI works alongside you. Launched November 2025. **Free for individual developers.**

---

## Setup

```bash
# Option 1: Web app (no install needed)
# Visit: https://antigravity.google
# Sign in with Google account

# Option 2: Desktop app
# Download from: https://antigravity.google/download
```

---

## First Steps

### 1. Open a Project
```
New Project → Choose template or empty
Import → Connect GitHub repo
Open → Existing folder (Desktop app)
```

### 2. Build Your Knowledge Base (do this first!)

```
/knowledge add README.md
/knowledge add docs/architecture.md
/knowledge add "We use PostgreSQL with Prisma ORM"
/knowledge add https://docs.your-api.com
```

### 3. Choose Your Working Mode

- **Editor View** — Real-time coding (like VS Code with AI)
- **Manager Surface** — Long async tasks, run in background

---

## Editor View

The synchronous, real-time coding surface:

| Shortcut | Action |
|----------|--------|
| `Tab` | Accept autocomplete |
| `Ctrl+K` | Inline edit selected code |
| `Ctrl+Enter` | Send chat message |
| `Alt+\` | Toggle AI suggestions |

**First task:**
```
Select code → Ctrl+K → "Add TypeScript types to this function"
```

---

## Manager Surface

For tasks over 5 minutes, use Manager Surface:

```
1. Click "New Task"
2. Describe the full task:
   "Refactor auth module:
    - Extract to separate service
    - Add refresh token support
    - Write comprehensive tests
    - Update docs"
3. Press Enter — agents start working
4. Do other work
5. Come back to review Artifacts
```

---

## Model Selection

| Scenario | Model |
|----------|-------|
| Fast edits, UI | Gemini 3 Flash |
| Complex refactoring | Gemini 3 Pro |
| Code quality review | Claude Sonnet 4.5 |
| Research | Gemini 3 Pro |

---

## Understanding Artifacts

Everything agents produce is tracked as an Artifact:

```
Task: "Implement OAuth2"
Artifacts:
├── Plan.md (task breakdown)
├── code-diff.patch (changes made)
├── test-results.txt (test output)
└── screenshot-01.png (UI captures)
```

Review at: Manager Surface → [Task Name] → Artifacts tab

---

## Common Workflows

### Build a feature:
```
1. Add context to Knowledge Base
2. Editor View → Ctrl+K → describe feature
3. Review changes
4. Manager Surface → "Write tests for the feature I just built"
```

### Debug production issue:
```
1. Manager Surface → New Task
2. Paste stack trace
3. Agent reproduces bug (BrowserRecording artifact)
4. Agent creates fix diff (review and apply)
```

---

## Next Steps

- Read [FEATURES.md](FEATURES.md) — deep dive on all features
- Read [WORKFLOWS.md](WORKFLOWS.md) — real workflows
- Try Manager Surface for one long task
