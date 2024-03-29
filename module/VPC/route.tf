resource "aws_route_table" "private_subnets_route_table" {
    vpc_id = aws_vpc.main.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.ngw.id
    }
    tags = {
        Name = var.private_route_table_name
    }
}

resource "aws_route_table" "public_subnets_route_table" {
    vpc_id = aws_vpc.main.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
    tags = {
        Name = var.public_route_table_name
    }
}

resource "aws_route_table_association" "private_association" {
    subnet_id      = aws_subnet.private_subnets.id
    route_table_id = aws_route_table.private_subnets_route_table.id
}

resource "aws_route_table_association" "public_association" {
    subnet_id      = aws_subnet.public_subnets.id
    route_table_id = aws_route_table.public_subnets_route_table.id
}