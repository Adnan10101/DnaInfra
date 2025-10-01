output vpc_name{
    value = var.vpc_tag_name
}

output cidr{
    value = var.vpc_cidr_block
}

output vpc_id{
    value = aws_vpc.vpc_main.id
}