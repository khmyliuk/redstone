# 0003. Flat root Terraform layout

**Status:** Accepted
**Date:**   2026-05-27

## Context
Solo project, 1-3 Hetzner VPS. Need an initial repo layout before adding workloads.

## Decision
Single root module under `terraform/` with all resources inline and one local-then-remote state. No `modules/` directory, no `live/<service>/` split. Refactor triggered by either: a resource being instantiated twice, or a need for independent blast radius between workloads.

## What changes
- All `hcloud_*` resources live in one root module applied with a single `terraform apply`.