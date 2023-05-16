data "terraform_remote_state" "network_details" {
backend = "s3"
config = {
bucket = "student.3-my-new-bucket"
key = "student.3-network-state"
region = var.region
}
}

module "webserver" {
source = "./modules/linux_node"
ami = "ami-0db245b76e5c21ca1"
instance_type = "t3.micro"
key_name = data.terraform_remote_state.network_details.outputs.aws_key_pair
subnet_id = data.terraform_remote_state.network_details.outputs.my_subnet
vpc_security_group_ids = data.terraform_remote_state.network_details.outputs.security_group_id_array
tags = {
Name = "student.3-vm1"
}
}

