provider "proxmox" {
    endpoint = var.proxmox_datacenter.api_url
    #api_token = "${var.proxmox_datacenter.api_token}=${var.proxmox_datacenter.api_secret}"
    username = var.proxmox_datacenter.username
    password = var.proxmox_node_details.host_password
    insecure = true
  #   ssh {
  #     agent = var.proxmox_node_details.use_agent
  #     username = var.proxmox_node_details.host_user
  #     password = var.proxmox_node_details.host_password
  #     private_key = file(var.pri_key_path)
  # }
    
}
