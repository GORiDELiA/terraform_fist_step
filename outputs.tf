output "exam_subnets_id" {
  value = module.VPC.subnets_id
}

output "nat_gateway_private_ip" {
  value = module.VPC.nat_gateway_private_ip
}