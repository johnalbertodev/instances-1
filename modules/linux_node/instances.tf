resource "aws_instance" "my_vm" {
count = var.instance_count
ami = var.ami
subnet_id = var.subnet_id
key_name = var.key_name
vpc_security_group_ids = var.vpc_security_group_ids
instance_type = var.instance_type
tags = var.tags
}


