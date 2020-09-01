#Static credentials

provider "aws" {
  region     = "eu-west-2"
  access_key = "AKIAYUNXCSY465YZA3HK"
  secret_key = "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"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-08f3d892de259504d"
  instance_type = "t2.micro"
}