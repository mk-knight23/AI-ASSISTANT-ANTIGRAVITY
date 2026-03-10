#!/usr/bin/env bash
# =============================================================================
# Google Antigravity Setup Script
# Prepares your project for use with Google Antigravity
# Run: chmod +x setup.sh && ./setup.sh
# =============================================================================

set -euo pipefail

BLUE='\033[0;34m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; NC='\033[0m'
log()  { echo -e "${BLUE}[antigravity-setup]${NC} $*"; }
ok()   { echo -e "${GREEN}[✓]${NC} $*"; }
warn() { echo -e "${YELLOW}[!]${NC} $*"; }

log "Google Antigravity Project Setup"
echo ""
echo "Antigravity is a web/desktop app: https://antigravity.google"
echo "No installation script needed — but we'll prep your project!"
echo ""

# Create Knowledge Base context file
if [[ ! -f .antigravity-context.md ]]; then
  cat > .antigravity-context.md << 'EOF'
# Project Context for Antigravity Knowledge Base

## Project Overview
<!-- Describe what this project does -->

## Tech Stack
<!-- Languages, frameworks, databases, services used -->

## Architecture Decisions
<!-- Key decisions: why we chose X over Y -->

## Important Constraints
<!-- Things agents must know: auth flow, DB schema limits, etc. -->

## Current Focus
<!-- What we're actively building right now -->

## Coding Standards
<!-- Project-specific conventions and rules -->
EOF
  ok "Created .antigravity-context.md (fill this in!)"
else
  ok ".antigravity-context.md already exists"
fi

# Remind to add to Knowledge Base
echo ""
warn "IMPORTANT: After opening project in Antigravity, build Knowledge Base:"
echo ""
echo "  /knowledge add .antigravity-context.md"

if [[ -f README.md ]]; then
  echo "  /knowledge add README.md"
fi

if [[ -d docs ]]; then
  echo "  /knowledge add docs/"
fi

echo ""

# Model guide
cat > .antigravity-models.md << 'EOF'
# Model Selection Guide for Antigravity

| Task | Model | Reason |
|------|-------|--------|
| Tab completion, quick edits | Gemini 3 Flash | Low latency |
| Complex refactoring | Gemini 3 Pro | Deep reasoning |
| Code quality review | Claude Sonnet 4.5 | Best code review |
| Architecture planning | Gemini 3 Pro | Broad knowledge |
| Bug investigation | Claude Sonnet 4.5 | Systematic analysis |

## Rule of thumb:
- Editor View (real-time) → Gemini 3 Flash
- Manager Surface (async) → Gemini 3 Pro or Claude Sonnet 4.5
EOF
ok "Created .antigravity-models.md"

echo ""
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}  Setup Complete!${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo "1. Fill in .antigravity-context.md"
echo "2. Open project in Antigravity: https://antigravity.google"
echo "3. Add context to Knowledge Base (commands above)"
echo "4. Editor View (Ctrl+K) for quick edits"
echo "5. Manager Surface for tasks >5 minutes"
