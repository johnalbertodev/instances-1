data "terraform_remote_state" "network_details" {
backend = "s3"
config = {
bucket = "student.3-my-new-bucket"
key = "student.3-network-state"
region = "us-west-2"
}
}

resource "aws_instance" "my_vm" {
ami = "ami-0db245b76e5c21ca1"
subnet_id = data.terraform_remote_state.network_details.outputs.my_subnet
instance_type = "t3.micro"
tags = {
Name = "student.3-vm1"
}
}
