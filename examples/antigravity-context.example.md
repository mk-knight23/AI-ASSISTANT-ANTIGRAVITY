# .antigravity-context.md — Knowledge Base File Example
# Place this in your project root and add it to Antigravity's Knowledge Base:
# /knowledge add .antigravity-context.md

## Project: [YOUR PROJECT NAME]

## Problem We're Solving
<!-- What user problem does this project solve? -->

## Tech Stack
- Frontend: React 18 + TypeScript + Tailwind CSS
- Backend: Node.js 20 + Express + TypeScript
- Database: PostgreSQL 16 + Prisma ORM
- Auth: JWT access tokens + refresh tokens
- Tests: Vitest + Playwright
- Deploy: Vercel (frontend) + Railway (backend)

## Architecture Overview
```
src/
├── api/           ← Express routes
├── services/      ← Business logic
├── repositories/  ← Database access
├── middleware/    ← Auth, validation, logging
└── utils/         ← Shared helpers
```

## Key Decisions
- We chose PostgreSQL over MongoDB for strong relational guarantees
- We use cursor-based pagination (not offset) for performance
- All auth is JWT; we never use server sessions
- We validate all input with Zod at API boundaries

## Current Focus
- Building the notification system
- Sprint ends Friday

## Constraints
- Never bypass authentication middleware on any route
- Database schema is append-only (no destructive migrations in production)
- All API responses must follow: { success, data, error } envelope
