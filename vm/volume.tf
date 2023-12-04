resource "libvirt_volume" "base_volume" {
  name   = "base"
  format = var.volume_type
  source = var.volume_image_source
}

resource "libvirt_pool" "volume_pool" {
  name = var.volume_pool_name
  type = "dir"
  path = "/volume/pool/${var.volume_pool_name}"
}

resource "libvirt_volume" "node_volume" {
  count = var.node_count

  name           = "node${count.index + 1}.qcow2"
  pool           = libvirt_pool.volume_pool.name
  base_volume_id = libvirt_volume.base_volume.id
}