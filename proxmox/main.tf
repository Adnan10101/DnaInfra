# data "local_file" "ssh_public_key" {
#   filename = "./key"
# }

resource "proxmox_virtual_environment_vm" "pv-1" {
    name        = var.new_vm_details.vm_name
    vm_id       = var.new_vm_details.vm_id
    node_name   = var.proxmox_node_details.node_name
    cpu {
      cores   = var.cpu_details.no_of_cores
      sockets = var.cpu_details.sockets
      type    = var.cpu_details.type  
  }
  efi_disk {
    datastore_id = var.disk_details.datastore_id
    type         = "4m"
  }
  memory {
    dedicated = var.memory.total_mem  
  }
  disk {
    file_id      = proxmox_virtual_environment_download_file.ubuntu_cloud_image.id
    interface    = var.disk_details.interface     
    datastore_id = var.disk_details.datastore_id  
    size         = var.disk_details.size 
    iothread     = var.disk_details.iothread        
    file_format  = var.disk_details.file_format
  }
  
  scsi_hardware = var.new_vm_details.scsi_hardware
  
  initialization {
    ip_config {
      ipv4 {
        address = var.network_details.ipv4
        gateway = var.network_details.gw
      }
    }
    user_account {
      username = var.user_account_details.username
      password = var.user_account_details.password
      #keys =  [trimspace(data.local_file.ssh_public_key.content)]
    }
  }
  
  network_device {
      model = var.network_details.model
      bridge = var.network_details.bridge
  }
  lifecycle {
      ignore_changes = [network_device]
  }
}

resource "proxmox_virtual_environment_download_file" "ubuntu_cloud_image" {
  content_type = var.cloud_init.type
  datastore_id = var.cloud_init.datastore_id
  node_name    = var.proxmox_node_details.node_name
  
  url = var.cloud_init.url
}



