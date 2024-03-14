resource "libvirt_domain" "node" {
  count = var.node_count
  
  name        = "node${count.index + 1}"
  description = "provisioned by terraform"

  vcpu   = var.vcpu_count
  memory = var.memory_size

  qemu_agent = true
  autostart  = true

  network_interface {
    bridge = var.bridge_name
  }

  disk {
    volume_id = libvirt_volume.node[count.index].id
    scsi 	    = true
  }

  disk {
    volume_id = libvirt_volume.storage[count.index].id
    scsi 	    = true
  }

  console {
    type 		    = "pty"
    target_type = "serial"
    target_port = 0
  }

  boot_device {
    dev = [ "hd", "network"]
  }

  cloudinit = libvirt_cloudinit_disk.common_init[count.index].id
}