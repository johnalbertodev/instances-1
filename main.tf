data "terraform_remote_state" "network_details" {
backend = "s3"
config = {
bucket = "student.3-my-new-bucket"
key = "student.3-network-state"
region = "us-west-2"
}
}
