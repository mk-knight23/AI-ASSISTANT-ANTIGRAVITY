#!/bin/bash
# Google Antigravity Setup Script
# Run: chmod +x setup.sh && ./setup.sh

set -e
echo "🚀 Setting up Google Antigravity IDE..."

echo "📦 Antigravity IDE is available at: https://antigravity.google"
echo "   It's free for individual developers — sign in with your Google account."
echo ""

# Install skills for Antigravity (uses same skill format as Claude Code)
echo "🎯 Installing Antigravity Awesome Skills..."
npx antigravity-awesome-skills

# Verify skills location
SKILLS_DIR="${HOME}/.agent/skills"
if [ -d "$SKILLS_DIR" ]; then
  echo "✅ Skills installed at: $SKILLS_DIR"
  echo "   Total skills: $(find $SKILLS_DIR -name '*.md' | wc -l | tr -d ' ')"
else
  echo "⚠️  Skills directory not found. Trying alternate path..."
  SKILLS_DIR="${HOME}/.antigravity/skills"
fi

echo ""
echo "✨ Antigravity is ready!"
echo ""
echo "Quick Start:"
echo "  1. Open https://antigravity.google"
echo "  2. Editor View: Tab autocomplete (like Cursor/Copilot)"
echo "  3. Manager Surface: Multi-agent async tasks"
echo "     - Create a task like: 'Refactor this entire authentication module'"
echo "     - Antigravity spawns parallel agents automatically"
echo "  4. Invoke skills in chat: '@skill-name' or /skill-name"
echo ""
echo "Key Concepts:"
echo "  - Editor View = synchronous pair programming"
echo "  - Manager Surface = async multi-agent orchestration"
echo "  - Artifacts = task lists, screenshots, browser recordings"
echo "  - Knowledge Base = custom project context"
echo "  - Models: Gemini 3 Pro, Gemini 3 Flash, Claude Sonnet 4.5"
