output "server_id" {
  value = hcloud_server.minecraft.id
}

output "server_ipv4" {
  value = hcloud_server.minecraft.ipv4_address
}

output "server_ipv6" {
  value = hcloud_server.minecraft.ipv6_address
}

output "server_status" {
  value = hcloud_server.minecraft.status
}