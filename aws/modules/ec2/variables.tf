variable "ami" {
  type = string
  default = "ami-0360c520857e3138f"
}

variable "instance_tag_name" {
  type = string
}

# variable "core_count" {
#   type = number
# }

# variable "cpu_threads" {
#   type = number
# }


variable "subnet_id" {
  type = string
}

variable "instance_type" {
  type = string
}