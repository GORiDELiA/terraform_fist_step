# AWS First Step Configuration 

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}


module "VPC" {
  source                   = "./module/VPC"
  main_vpc_cidr            = var.main_vpc_cidr
  main_vpc_tag_name        = var.main_vpc_tag_name
  public_subnets_cidr      = var.public_subnets_cidr
  public_subnets_tag_name  = var.public_subnets_tag_name
  private_subnets_cidr     = var.private_subnets_cidr
  private_subnets_tag_name = var.private_subnets_tag_name
  # Route
  private_route_table_name = var.private_route_table_name
  public_route_table_name  = var.public_route_table_name
  # Gateway
  internet_gateway_tag_name = var.internet_gateway_tag_name
  nat_gateway_tag_name      = var.nat_gateway_tag_name
  nat_gateway_eip           = var.nat_gateway_eip
}

module "EC2" {
  source     = "./module/EC2"
  subnet_ids = module.VPC.private_subnets_id
}



