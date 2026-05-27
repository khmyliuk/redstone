data "sops_file" "secrets" {
  source_file = var.secrets_file
}