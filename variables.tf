variable "aws_region" {
  # default = "ap-northeast-1"
}
variable "main_vpc_cidr" {
  # default = "10.0.0.0/16"
}
variable "main_vpc_tag_name" {
  # default = "MAIN VPC"
}
variable "public_subnets_cidr" {
  # default = "10.0.0.0/24"
}
variable "public_subnets_tag_name" {
  # default = "PUBLIC SUBNET"
}
variable "private_subnets_cidr" {
  # default = "10.0.0.0/24"
}
variable "private_subnets_tag_name" {
  # default = "PRIVATE SUBNET"
}
variable "private_route_table_name" {
  # default = "PRIVATE ROUTE TABLE
}
variable "internet_gateway_tag_name" {

}
variable "nat_gateway_tag_name" {

}
variable "nat_gateway_eip" {

}
variable "public_route_table_name" {

}




