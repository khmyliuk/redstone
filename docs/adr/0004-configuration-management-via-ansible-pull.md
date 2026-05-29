# 0004. Configuration management via ansible-pull

**Status:** Accepted
**Date:**   2026-05-29

## Context
Servers need configuration after provisioning; Terraform creates the host but does not configure software on it.

## Decision
Two models exist: push (`ansible-playbook` over SSH from a control node, the industry default) and pull (`ansible-pull` on the host). Choose pull via cloud-init's native `ansible` module - no control node, the host self-configures at boot. The host installs `ansible-core` from distro packages and applies a playbook from this repo against localhost. Repo URL and playbook path are Terraform variables; the pull ref is pinned, not HEAD.

## What changed
- cloud-init gains an `ansible` block; hosts self-configure at boot.
- New `ansible/` directory holds the playbook and roles.
- Repo URL and playbook path become Terraform variables.