output subnet_name{
    value = var.subnet_tag_name
}

output cidr{
    value = var.subnet_cidr_block
}

output subnet_id{
    value = aws_subnet.subnet_main.id
}

output rt_id{
    value = aws_route_table.route_table.id
}

output rta_id{
    value = aws_route_table_association.route_asso.id
}