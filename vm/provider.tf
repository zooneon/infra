terraform {
  required_version = ">= 1.3"
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.7.1"
    }
  }
}

provider "libvirt" {
  uri = "qemu+ssh://${var.user}@${var.host}/system?sshauth=privkey&keyfile=${var.keyfile_path}"
}
