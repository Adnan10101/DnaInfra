variable "subnet_cidr_block" {
  type = string
  default = "192.168.0.0/24"
}

variable "subnet_tag_name" {
  type = string
  default = "main_subnet"
}

variable "vpc_id" {
  type = string
}

variable "availability_zone" {
  type = string
  default = "us-east-1a"
}