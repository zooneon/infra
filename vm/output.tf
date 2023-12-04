output "libvirt_domain_id" {
  value = libvirt_domain.node.*.id
}

output "libvirt_volume_id" {
  value = libvirt_volume.node_volume.*.id
}