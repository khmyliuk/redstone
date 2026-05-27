resource "hcloud_ssh_key" "main" {
  name       = "my-key"
  public_key = file("~/.ssh/id_ed25519.pub")
}

resource "hcloud_server" "minecraft" {
  name        = var.server_name
  server_type = var.server_type
  image       = var.image
  location    = var.location

  ssh_keys     = [hcloud_ssh_key.main.id]
  firewall_ids = [hcloud_firewall.my-firewall.id]

  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }

  labels = {
    managed_by = "terraform"
    role       = "minecraft"
  }
}