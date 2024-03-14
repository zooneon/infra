resource "libvirt_cloudinit_disk" "common_init" {
  count = var.node_count

  name           = "commoninit${count.index + 1}.iso"
  user_data      = data.template_file.user_data[count.index].rendered
  network_config = data.template_file.network_config[count.index].rendered
}

data "template_file" "user_data" {
  count = var.node_count

  template = file("${path.module}/cloudinit/user-data.yaml")
  vars = {
    user           = var.user
    ssh_public_key = var.ssh_public_key
    hostname       = "node${count.index + 1}.lab"
  }
}

data "template_file" "network_config" {
  count = var.node_count

  template = file("${path.module}/cloudinit/network-config.yaml")
  vars = {
    address    = var.node_addresses[count.index]
    gateway    = var.default_gw
    nameserver = var.nameserver
    mtu_size   = var.mtu_size
  }
}