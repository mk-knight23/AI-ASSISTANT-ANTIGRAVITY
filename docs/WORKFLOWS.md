# Google Antigravity — Workflows

Real-world workflows using Antigravity's two surfaces.

---

## Workflow 1: Full Feature Development

Best used for medium-to-large features (1+ hours of work):

```
Phase 1: Knowledge → Phase 2: Plan → Phase 3: Build → Phase 4: Test
```

**Step by step:**

```
1. Build Knowledge Base context:
   /knowledge add docs/architecture.md
   /knowledge add "Auth is JWT, never sessions"

2. Editor View (Ctrl+K):
   "Plan the implementation of real-time notifications"
   → Review the plan output

3. Manager Surface → New Task:
   "Implement the notification system as planned:
    - WebSocket server
    - React hooks for subscription
    - Persistence in PostgreSQL
    - Tests for all components"

4. While agents work, continue on other Editor tasks

5. Review Artifacts:
   - code-diff.patch (review changes)
   - test-results.txt (verify passing)
   - screenshot-*.png (UI verification)
```

---

## Workflow 2: Bug Fix with Browser Recording

For visual bugs or hard-to-reproduce issues:

```
Manager Surface → New Task:

"There's a bug where clicking 'Submit' on mobile sometimes
double-submits the form.

Staging URL: https://staging.myapp.com/checkout

1. Record a browser session reproducing the bug
2. Find the root cause in the code
3. Fix it
4. Write a regression test"
```

**Artifacts produced:**
- `recording-01.mp4` — agent reproduces the bug
- `bug-analysis.md` — root cause explanation
- `fix.diff` — the code fix
- `test.spec.ts` — regression test

---

## Workflow 3: Codebase Migration

For large refactoring (hours to days of work):

```
Manager Surface → New Task:

"Migrate all class components to React functional components
with hooks. The codebase has ~50 class components in src/components/.

For each component:
1. Rewrite as functional with hooks
2. Verify behavior is identical
3. Update tests
4. Flag any complex state patterns for human review"

→ Agents work async across all 50 files
→ You review Artifacts as they complete
→ Accept diffs component by component
```

---

## Workflow 4: Documentation Generation

```
Manager Surface → New Task:

"Generate complete documentation for this codebase:
1. API reference (from code comments + types)
2. Architecture overview diagram (Mermaid)
3. Getting started guide for new developers
4. Deployment guide

Save all as files in docs/"
```

---

## Workflow 5: Security Audit

```
Manager Surface → New Task:

"Perform a comprehensive security audit:
1. Check for SQL injection vulnerabilities
2. Check for XSS risks
3. Review authentication/authorization logic
4. Check for exposed secrets in code
5. Review dependency vulnerabilities
6. Check CORS configuration

Output: security-audit-report.md with severity ratings
and fix instructions for each issue found."
```

---

## Workflow 6: Cross-Surface Development

The unique Antigravity pattern — Editor and Manager work together:

```
Editor View:
  "Add the checkout form UI components"
  → You review and accept changes

While those run, Manager Surface:
  "Write E2E tests for the checkout flow
   that was just implemented in Editor View"

Both run simultaneously → faster delivery
```

---

## Workflow 7: Research + Implement

```
Manager Surface → New Task:

"I need to add full-text search to our PostgreSQL database.
1. Research: compare PostgreSQL native FTS vs Elasticsearch vs Typesense
2. Recommend best option for our scale (10M documents)
3. Implement the chosen solution
4. Write performance benchmarks

Output research to search-evaluation.md, then implement."
```

---

## Quick Reference

| Task Type | Use Surface | Expected Time |
|-----------|-------------|---------------|
| Quick edit, fix typo | Editor View | Seconds |
| Add a small function | Editor View | Minutes |
| Build a feature | Manager Surface | 15-60 min |
| Large refactor | Manager Surface | Hours |
| Full audit | Manager Surface | Hours |
| Cross-surface | Both | Variable |
