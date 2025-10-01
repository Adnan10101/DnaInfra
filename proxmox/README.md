<h1>DNA Cloud Terraform — Proxmox VM Provisioning</h1>

This repository contains Terraform scripts to automate VM provisioning on Proxmox. You can define VM specifications in a .tfvars file and create VMs with a single Terraform apply.

Prereq:
1. Proxmox node creds
2. Proxmox api key
3. SSH key (is use_agent = True)

Reference .tfvars file
```
proxmox_node_details = {
  node_name     = <proxmox-node-name>
  host_user     = <proxmox-node-username>
  host_password = <proxmox-node-password>
  use_agent     = false
}

proxmox_datacenter = {
  api_secret = "e2d2f"
  api_url    = <proxmox-node-ip>
  api_token  = <api>
  username   = <proxmox-node-username>
}

cpu_details = {
  sockets    = 1
  type       = "host"
  no_of_cores = 1
}

memory = {
  total_mem = 1024
}

disk_details = {
  interface   = "scsi0"
  datastore_id = "local-lvm"
  iothread    = true
  file_format = "raw"
  size        = 100
}

new_vm_details = {
  enable_agent  = false
  scsi_hardware = "virtio-scsi-pci"
  vm_id         = 500
  vm_name       = "test"
}

network_details = {
  ipv4   = "192.168.0.200/24"
  gw     = "192.168.0.1"
  bridge = "vmbr0"
  model  = "virtio"
}

user_account_details = {
  username = "test"
  password = "test"
}


```

To Provision
1. Initialize Terraform
  ```
  terraform init
  ```
2. Preview
```
terraform plan -var-file=<name-of-tfvars-file>
```
3. Create
```
terraform apply -var-file=<name-of-tfvars-file>
```
