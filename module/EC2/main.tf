
data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners = ["amazon"]
  
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "AppServer01" {
    ami           = data.aws_ami.amazon_linux_2.id
    instance_type = "t2.micro"
    subnet_id = var.subnet_ids
    tags = { 
        Name = "AppServer01"
    }
}