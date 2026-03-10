# Google Antigravity — Features Deep Dive

> Google Antigravity (antigravity.google) — Agentic IDE launched November 2025

## Architecture: Two Surfaces

Antigravity is uniquely designed around **two distinct interaction surfaces** that serve different working styles:

```
┌─────────────────────────────────────────────────┐
│              GOOGLE ANTIGRAVITY                 │
├──────────────────────┬──────────────────────────┤
│   EDITOR VIEW        │   MANAGER SURFACE         │
│   (Synchronous)      │   (Asynchronous)          │
│                      │                           │
│ • Tab autocomplete   │ • Multi-agent tasks       │
│ • Inline edits       │ • Long-running jobs       │
│ • Context-aware      │ • Parallel orchestration  │
│ • Real-time          │ • Artifacts tracking      │
└──────────────────────┴──────────────────────────┘
```

---

## Feature 1: Editor View (Synchronous Development)

An IDE environment similar to VS Code with AI deeply integrated:

- **Tab Completion** — Context-aware, codebase-level completions
- **Inline Edit** — Select code, describe change, it rewrites
- **Ghost Text** — Next-action suggestions as you type
- **Multi-file Edits** — Changes span multiple files simultaneously
- **Real-time Collaboration** — AI + human in the same buffer

**Key advantage:** The AI has full project context, not just the current file.

---

## Feature 2: Manager Surface (Async Orchestration)

Where you manage multiple AI agents working in parallel:

```
Manager Surface Tasks:
├── Task #1: "Implement OAuth2 login" → Running (3 agents)
├── Task #2: "Write API tests" → Completed ✓
├── Task #3: "Optimize database queries" → Queued
└── Task #4: "Update documentation" → Running (1 agent)
```

**Use when:**
- Tasks take more than 5 minutes
- Multiple workstreams need to run in parallel
- You want to review results at your own pace
- Overnight or background processing

---

## Feature 3: Artifacts System

Antigravity tracks everything agents produce as **Artifacts**:

| Artifact Type | Description |
|---------------|-------------|
| Task List | Structured TODO items with completion tracking |
| Screenshots | Visual captures of UI states and browser sessions |
| Browser Recordings | Full recordings of automated browser interactions |
| Code Diffs | File change summaries with before/after |
| Research Notes | Agent-gathered information from web/docs |
| Test Reports | Coverage and test result summaries |

Artifacts persist across sessions and can be reviewed, shared, or fed back to agents as context.

---

## Feature 4: Cross-Surface Agents

Agents that work across both surfaces simultaneously:

- One agent edits code in Editor View
- Another runs tests in Manager Surface
- Results from Manager flow back to Editor context
- Seamless handoff between synchronous and async work

---

## Feature 5: Knowledge Base

Project-level knowledge storage:

- Import documentation, wikis, API specs
- Agents reference it automatically
- Reduces hallucination about your codebase
- Shareable across team members
- Supports: Markdown, PDF, URLs, GitHub repos

**Add to Knowledge Base:**
```
/knowledge add https://docs.your-api.com
/knowledge add ./docs/architecture.md
/knowledge add "Our users are always authenticated via SSO, never passwords"
```

---

## Feature 6: Model Selection

Antigravity supports multiple frontier models:

| Model | Provider | Best For |
|-------|----------|----------|
| Gemini 3 Pro | Google | Complex reasoning, large context |
| Gemini 3 Flash | Google | Fast iteration, UI work |
| Claude Sonnet 4.5 | Anthropic | Code quality, detailed review |
| GPT-OSS | OpenAI | Alternative perspective |

**Strategy:** Use Gemini 3 Flash for fast tab completion, Gemini 3 Pro or Claude Sonnet for complex agent tasks.

---

## Feature 7: Free Tier

Unlike most AI IDEs, Antigravity is **free for individual developers**:

- Unlimited Editor View usage
- Manager Surface tasks included
- All models available (with rate limits)
- No credit card required

---

## Feature 8: Google Workspace Integration

Native integration with Google's ecosystem:

- Read/write Google Docs, Sheets, Slides
- Access Google Drive files as project context
- Google Calendar context (deadlines, meetings)
- Gmail threading for context
- Google Cloud deployment pipelines

---

## Performance Tips

1. Use **Manager Surface** for tasks over 5 minutes
2. Build a rich **Knowledge Base** before starting big features
3. Use **Gemini 3 Flash** for speed, **Pro** for depth
4. Let Browser Recordings guide visual bug fixes
5. Artifacts = your agent's memory — review them between sessions
