# autheticate AWS, region, resource you want to launch

# follow the doc: `registry.terraform.io`

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_ami_from_instance" "ec2-instance" {
  name               = "ec2-instance"
  source_instance_id = "i-xxxxxxxx"
}