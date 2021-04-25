output "exam" { 
    value = "AAAAAAAAAAAAA" 
}

output "subnets_id" { 
    value = "${aws_subnet.private_subnets.id}" 
}
