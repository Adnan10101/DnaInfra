variable "access_key" {
  type        = string
  description = "aws account access key"
}

variable "secret_key" {
  type        = string
  description = "aws account secret"
}

variable "vpc_cidr_block" {
  type = string
}

variable "vpc_tag_name" {
  type = string
}

variable "subnet_cidr_block" {
  type = string
}

variable "subnet_tag_name" {
  type = string
}

variable "subnet_availability_zone" {
  type = string
}

variable "bucket_name" {
  type = string
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "core_count" {
  type = number
}

variable "cpu_threads" {
  type = number
}

variable "instance_tag_name" {
  type = string
}