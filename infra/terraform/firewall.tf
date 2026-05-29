resource "hcloud_firewall" "my-firewall" {
  name = "my-firewall"

  rule {
    direction  = "in"
    protocol   = "icmp"
    source_ips = ["0.0.0.0/0", "::/0"]
  }

  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "25565"
    source_ips = ["0.0.0.0/0", "::/0"]
    description = "Minecraft java server"
  }

  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "25566"
    source_ips = ["0.0.0.0/0", "::/0"]
    description = "BlueMap"
  }

    rule {
    direction  = "in"
    protocol   = "udp"
    port       = "25567"
    source_ips = ["0.0.0.0/0", "::/0"]
    description = "VoiceChat"
  }

  rule {
   direction   = "in"
    protocol    = "tcp"
    port        = "22"
    source_ips  = var.allowed_ssh_cidrs
    description = "SSH"
  }

}