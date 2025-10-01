variable "vpc_cidr_block" {
  type = string
  description = "cidr for vpc"
  default = "192.168.0.0/16"
}

variable "instance_tenancy" {
  type = string
  default = "default"
}

variable "vpc_tag_name" {
  default = "vpc_main"
  type = string
}

