variable "main_vpc_cidr" {
    default = "10.0.0.0/16"
}
variable "main_vpc_tag_name" {
    default = "MAIN VPC"
}
variable "public_subnets_cidr" {
    default = "10.0.0.0/24"
}
variable "public_subnets_tag_name" {
    default = "PUBLIC SUBNET"
}
variable "private_subnets_cidr" {
    default = "10.0.128.0/24"
}
variable "private_subnets_tag_name" {
    default = "PRIVATE SUBNET"
}

variable "private_route_table_name" {
  default = "PRIVATE ROUTE TABLE"
}