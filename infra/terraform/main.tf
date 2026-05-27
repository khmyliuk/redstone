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

  user_data = templatefile("${path.module}/cloud-init.yaml.tftpl", {
    hostname   = var.server_name
    admin_user = var.admin_user
    ssh_pubkey = trimspace(file("~/.ssh/id_ed25519.pub"))
  })

  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }

  labels = {
    managed_by = "terraform"
    role       = "minecraft"
  }
}