resource "hcloud_firewall" "my-firewall" {
  name = "my-firewall"

  rule {
    direction  = "in"
    protocol   = "icmp"
    source_ips = ["0.0.0.0/0", "::/0"]
  }

  rule {
    direction   = "in"
    protocol    = "tcp"
    port        = tostring(var.mc_port)
    source_ips  = ["0.0.0.0/0", "::/0"]
    description = "Minecraft java server"
  }

  rule {
    direction   = "in"
    protocol    = "tcp"
    port        = tostring(var.bluemap_port)
    source_ips  = ["0.0.0.0/0", "::/0"]
    description = "BlueMap"
  }

  rule {
    direction   = "in"
    protocol    = "udp"
    port        = tostring(var.vc_port)
    source_ips  = ["0.0.0.0/0", "::/0"]
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