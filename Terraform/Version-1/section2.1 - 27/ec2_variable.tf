provider "aws" {
  region     = "eu-west-2"
  access_key = "AKIA6EGNWL7QNY44OMEI"
  secret_key = "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"
}

resource "aws_instance" "my_ec2" {
  ami = "ami-08f3d892de259504d"
  instance_type = "var.instancetype"
}
