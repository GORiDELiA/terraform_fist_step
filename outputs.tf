output "exam_root" {
  value = "AAA"
}

output "exam_module_VPC" {
  value = module.VPC.exam
}

output "exam_subnets_id" {
  value = module.VPC.subnets_id
}