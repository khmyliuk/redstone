# 0001. Record architecture decisions

**Status:** Accepted
**Date:**   2026-05-23

## Context
We need a way to document the project's architectural decisions so that I can still understand the context in 6+ months.

## Decision
We use ADR format. Files are stored in `docs/adr/` and named `NNNN-kebab-case-title.md` with continuous 4-digit numbering.

Fields: 
- Title
- Status  
- Context 
- Decision
- Consequences

Statuses:
- Proposed
- Accepted
- Deprecated
- Superseded by ADR-NNNN

## What changes
- Every significant architectural decision requires an ADR.
- PRs introducing architectural changes without an ADR are
  considered incomplete.