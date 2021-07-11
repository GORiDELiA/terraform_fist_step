output "exam_subnets_id" {
  value = module.VPC.private_subnets_id
}

output "nat_gateway_private_ip" {
  value = module.VPC.nat_gateway_private_ip
}