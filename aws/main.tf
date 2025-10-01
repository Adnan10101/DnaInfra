provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}


module "main_vpc" {
  source         = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  vpc_tag_name   = var.vpc_tag_name
}

module "main_subnet" {
  source            = "./modules/subnet"
  vpc_id            = module.main_vpc.vpc_id # output from the vpc module
  subnet_cidr_block = var.subnet_cidr_block
  subnet_tag_name   = var.subnet_tag_name
  availability_zone = var.subnet_availability_zone
}

module "main_bucket" {
  source = "./modules/bucket"

  bucket_name = var.bucket_name
}


module "main_instance" {
  source = "./modules/ec2"

  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.main_subnet.subnet_id

  # core_count  = var.core_count
  # cpu_threads     = var.cpu_threads

  instance_tag_name = var.instance_tag_name
}