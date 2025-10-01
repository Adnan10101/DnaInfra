resource "aws_instance" "main_instance" {
  ami                     = var.ami
  instance_type           = var.instance_type
subnet_id = var.subnet_id
    # cpu_options {
    #   core_count = var.core_count
    #   threads_per_core = var.cpu_threads
    # }

    tags = {
        Name = var.instance_tag_name
    }
}