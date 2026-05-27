variable "secrets_file" {
  type    = string
  default = "../../secrets/infra.enc.yaml"
}

variable "allowed_ssh_cidrs" {
  type    = list(string)
  default = ["0.0.0.0/0", "::/0"]
}

variable "server_name" {
  type    = string
  default = "mc-1"
}

variable "server_type" {
  type        = string
  default     = "cx33"
  description = "Hetzner server type."
}

variable "location" {
  type        = string
  default     = "hel1"
  description = "Hetzner DC."
}

variable "image" {
  type    = string
  default = "ubuntu-26.04"
}

variable "mc_port" {
  type    = number
  default = 25565
}

variable "bluemap_port" {
  type    = number
  default = 25566
}