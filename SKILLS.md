# 🌌 Elite Skill Set: AI-ASSISTANT-ANTIGRAVITY

This file defines the high-fidelity agentic skills for the Antigravity / DeepMind Manager Surface.

---

## 🕹️ Skill: Cross-Surface Orchestration
**Trigger**: When a task involves multiple environments (e.g., "Verify this UI in the browser and then fix the backend").
**Instructions**:
1. Use the `browser` tool for visual verification and testing.
2. Use `run_command` for terminal activities and local testing.
3. Use file-editing tools (e.g., `replace_file_content`) for source code changes.
4. Seamlessly transition context between tools: "Browser says X, Terminal says Y, Edit Z."

---

## 🔎 Skill: Autonomous Research Loop
**Trigger**: When information is missing, ambiguous, or highly technical.
**Instructions**:
1. Use `search_web` to identify primary sources (Docs, GitHub, StackOverflow).
2. Use `read_url_content` to digest high-value pages.
3. Synthesize findings into a "Research Journal" artifact.
4. If a conflict is found between docs and code, prioritize the active code implementation.

---

## 🖼️ Skill: Artifact & Walkthrough Mastery
**Trigger**: Task completion or checkpoint for user review.
**Instructions**:
1. Capture state using `generate_image`, `screenshots`, or `recordings`.
2. Present work in a high-fidelity `walkthrough.md` with embedded media.
3. Use GitHub alerts (NOTE/TIP/IMPORTANT) to highlight key decisions.
4. Always include a "Validation Results" section showing that the code works.

---

## 🏛️ Skill: Ecosystem Command & Control
**Trigger**: When working across the 6 `AI-ASSISTANT-*` repositories.
**Instructions**:
1. Maintain "Standardized Parity" across all 6 repos (READMEs, folders, standards).
2. Use the `AI-ASSISTANTS-ECOSYSTEM` repo as the "Master Truth Engine."
3. Propagate changes from the `ECOSYSTEM` hub to specialized assistants using `cp` or sync scripts.
4. Enforce security audits via the `ECOSYSTEM` workflows.

---

## 📝 Skill: Blueprint-Driven Execution
**Trigger**: Approval of an `implementation_plan.md`.
**Instructions**:
1. Stick strictly to the approved plan.
2. If a major pivot is required, update the plan and re-request approval.
3. Use the `task.md` checklist as the exclusive source of progress tracking.
4. Never clear the `task.md` until every item is marked `[x]`.
