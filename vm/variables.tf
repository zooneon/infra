# variables for provider

variable "user" {
  default = "zooneon"
}

variable "host" {
  default = "zooneonbot"
}

variable "keyfile_path" {
  default = "/Users/zooneon/.ssh/terraform.pem"
}

# variables for domain

variable "node_count" {
  default = 3
}

variable "vcpu_count" {
  default = 8
}

variable "memory_size" {
  default = 4096
}

# variables for network

variable "bridge_name" {
  default = "br0"
}

variable "addresses_cidr" {
  default = ["172.30.1.0/24"]
}

variable "node_addresses" {
  default = ["172.30.1.101", "172.30.1.102", "172.30.1.103"]
}

variable "default_gw" {
  default = "172.30.1.254"
}

variable "nameserver" {
  default = "8.8.8.8"
}

variable "mtu_size" {
  default = 1500
}

# variables for volume

variable "volume_type" {
  default = "qcow2"
}

variable "volume_image_source" {
  default = "https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64-disk-kvm.img"
}

variable "volume_pool_name" {
  # default = "default"
  default = "node"
}

# variables for cloudinit

variable "ssh_public_key" {
  default = "ssh-rsa AAAAB3N"
}