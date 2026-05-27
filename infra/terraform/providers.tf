provider "hcloud" {
  token = data.sops_file.secrets.data["hcloud_token"]
}