output "libvirt_domain_id" {
  value = libvirt_domain.node.*.id
}

output "libvirt_volume_id" {
  value = {
    base    = libvirt_volume.base.id
    node    = libvirt_volume.node.*.id
    storage = libvirt_volume.storage.*.id
  }
}