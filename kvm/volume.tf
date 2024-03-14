resource "libvirt_pool" "main" {
  for_each = toset(["default", "node", "storage"])

  name = each.key
  type = "dir"
  path = "/pool/${each.key}"
}

resource "libvirt_volume" "base" {
  name   = "base"
  format = var.volume_type
  source = var.volume_image_source
  pool   = libvirt_pool.main["default"].name
}

resource "libvirt_volume" "node" {
  count = var.node_count

  name           = "node${count.index + 1}.qcow2"
  pool           = libvirt_pool.main["node"].name
  base_volume_id = libvirt_volume.base.id
}

resource "libvirt_volume" "storage" {
  count = var.node_count

  name   = "vol-node${count.index + 1}.qcow2"
  pool   = libvirt_pool.main["storage"].name
  size   = var.storage_size
  format = var.volume_type
}