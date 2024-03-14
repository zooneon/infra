# variables for provider

variable "user" {
  default = "zooneon"
}

variable "host" {
  default = "zooneonbot"
}

variable "keyfile_path" {
  default = "/Users/zooneon/.ssh/zooneonbot.pem"
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

variable "storage_size" {
  default = "64424509440"  # 60GB
}

# variables for cloudinit

variable "ssh_public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDYc5kk0A8IcyyOgQDJv/0bpYmBJa2xCwh5kyguBuHjg/o47oUyW6hNtR/z7xOO4n2YhyvAF3qZil1DA3vB/Q6BPE1g169Y2hhNqLE9fk679NrXWw45JVxu+rIDHCGLKpJAvUEf6YfThxEhEVJb2A4g+BPK9zM8kVZHFGIuf2o8bcAlEryi6dgSXvvvPc1azV4Df7MYYhV+VwaU9W9YYDPyKNGKbPc/8vi6tOTsX8VTHeE164sSVXVpjErv1MKFUlgw6Zn49tPSwAvcu7rZjmEqpvLzV7bl49PjI4vqpX9/GwPVJSkDnSBu2KZXFpLEQ4IGyHTb1DqKvqAT12+sHyzj034m73x99kokuLfJToENkrgmGuRlsGUQVRLYo7wuZqVi2fx6uE7ZexWM3BMUik5BTfpylsH3AD7ONS0pu5lxhrIhFUTxhOmSVp+6AtS5zBHk9tXYostFeSZm/XIOXajIS1sGhFW5iakL8c6ePFZ0MShUeeMZ+yiearYg/Tfd7e0= zooneon@gwonjun-won-ui-MacBookPro.local"
}