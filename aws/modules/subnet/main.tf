resource "aws_subnet" "subnet_main" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr_block 
  availability_zone = var.availability_zone

  tags = {
    Name = var.subnet_tag_name 
  }
}

resource "aws_internet_gateway" "gw" {
    vpc_id = var.vpc_id
    
    tags = {
        Name = "${var.subnet_tag_name}-gw"
    }
}

resource "aws_route_table" "route_table" {
    vpc_id = var.vpc_id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.gw.id
    }
    
    tags = {
        Name = "${var.subnet_tag_name}-rt"
    }
  
}

resource "aws_route_table_association" "route_asso" {
    subnet_id = aws_subnet.subnet_main.id
    route_table_id = aws_route_table.route_table.id
}