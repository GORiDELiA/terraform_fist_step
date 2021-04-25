resource "aws_vpc" "main" {
    cidr_block       = var.main_vpc_cidr
    instance_tenancy = "default"

    tags = {
        Name = var.main_vpc_tag_name
    }
}

resource "aws_subnet" "public_subnets" {
    vpc_id     = aws_vpc.main.id
    cidr_block = var.public_subnets_cidr

    tags = {
        Name = var.public_subnets_tag_name
    }
}

resource "aws_subnet" "private_subnets" {
    vpc_id     = aws_vpc.main.id
    cidr_block = var.private_subnets_cidr

    tags = {
        Name = var.private_subnets_tag_name
    }
}

