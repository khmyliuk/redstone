# 0002. Secrets management

**Status:** Accepted
**Date:**   2026-05-25

## Context
We need to find a way to work with secrets safe and fast. Secrets (service env vars, DB credentials, provider tokens) must be stored in Git alongside configuration.

## Decision
Use SOPS with the age backend to encrypt secrets stored in Git. Recipients are defined in `.sops.yaml` at the repo root as AGE public keys. Keys are grouped by convention per environment (`dev`, `prod`) and for administrators.

## What changes
- Secrets are now encrypted in Git using SOPS instead of plaintext storage.