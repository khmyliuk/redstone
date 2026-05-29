variable "secrets_file" {
  type    = string
  default = "../../secrets/infra.enc.yaml"
}

variable "admin_user" {
  type    = string
  default = "junkie"
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

variable "ansible_repo_url" {
  type    = string
  default = "https://github.com/khmyliuk/redstone.git"
}

variable "ansible_playbook_path" {
  type    = string
  default = "ansible/site.yml"
}

variable "ansible_ref" {
  type        = string
  default     = "v0.1.1"
  description = "Pinned git ref (tag or SHA) for ansible-pull checkout."
}

variable "mc_port" {
  type    = number
  default = 25565
}

variable "bluemap_port" {
  type    = number
  default = 25566
}

variable "vc_port" {
  type    = number
  default = 25567
}
