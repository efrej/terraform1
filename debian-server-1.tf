resource "proxmox_vm_qemu" "debian-server-1" {
  name = "debian-server-1"
  desc = "Debian GUI"
  target_node = "pve"
  vmid = "899"

  agent = 1

  clone = "debianVM"
  cores = 2
  sockets = 1
  cpu = "host"
  memory = 2048

  network {
    bridge = "vmbr0"
    model = "virtio"
  }

  disk {
    storage = "local-lvm"
    type = "disk"
    size = "32G"
    slot = "scsi0"
  }
}
