output "subnets_id" { 
    value = "${aws_subnet.private_subnets.id}" 
}

output "nat_gateway_private_ip" { 
    value = "${aws_nat_gateway.ngw.private_ip}" 
}