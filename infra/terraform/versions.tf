terraform {
    required_version = ">= 1.5"

    required_providers {
      hcloud = {
        source  = "hetznercloud/hcloud"
        version = "~> 1.63"
      }
      sops = {
        source  = "carlpett/sops"
        version = "~> 1.4.1"
      }

    }
}