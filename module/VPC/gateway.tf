resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.main.id

    tags = {
        Name = var.internet_gateway_tag_name
    }
}

resource "aws_nat_gateway" "ngw" {
    allocation_id = aws_eip.for_ngw.id
    subnet_id = aws_subnet.public_subnets.id

    tags = {
        Name = var.nat_gateway_tag_name
    }
}

resource "aws_eip" "for_ngw" {
    vpc                       = true
    associate_with_private_ip = var.nat_gateway_eip
    depends_on                = [aws_internet_gateway.igw]
}