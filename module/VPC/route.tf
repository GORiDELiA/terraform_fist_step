resource "aws_route_table" "private_subnets_route" {
    vpc_id = aws_vpc.main.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
    tags = {
        Name = var.private_route_table_name
    }
}

resource "aws_route_table_association" "private_association" {
    subnet_id      = aws_subnet.private_subnets.id
    route_table_id = aws_route_table.private_subnets_route.id
}