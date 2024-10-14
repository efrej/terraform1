resource "proxmox_vm_qemu" "windows11-1" {
  name = "windows11-TestRunner"
  desc = "windows11 for runing UI tests on"
  target_node = "pve"
  vmid = "777"
  bios = "ovmf"
  scsihw = "virtio-scsi-single"

  agent = 1

  clone = "windows11"
  cores = 2
  sockets = 1
  cpu = "x86-64-v2-AES"
  memory = 4096

  network {
    bridge = "vmbr0"
    model = "virtio"
  }

  disk {
    storage = "local-lvm"
    type = "disk"
    size = "64G"
    slot = "virtio0"
  }
}
