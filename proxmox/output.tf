# output "v" {
#         value = data.local_file.ssh_public_key.content
#     }


output "disk_size" {
        value = var.disk_details.size
    }


output "ubuntu_vm_password" {
  value     =  proxmox_virtual_environment_vm.pv-1.initialization[0].user_account[0].password
  sensitive = true
}