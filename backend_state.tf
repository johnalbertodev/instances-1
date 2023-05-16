terraform {
backend "s3" {
bucket = "student.3-my-new-bucket"
key = "student.3-instance-state"
region = "us-west-2"
}
}
