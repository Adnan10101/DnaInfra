provider "proxmox" {
    endpoint = var.proxmox_datacenter.api_url
    #api_token = "${var.proxmox_datacenter.api_token}=${var.proxmox_datacenter.api_secret}"
    username = "root@pam"
    password = "Pve3XQwq5tZ"
    insecure = true
  #   ssh {
  #     agent = var.proxmox_node_details.use_agent
  #     username = var.proxmox_node_details.host_user
  #     password = var.proxmox_node_details.host_password
  #     private_key = file(var.pri_key_path)
  # }
    
}
