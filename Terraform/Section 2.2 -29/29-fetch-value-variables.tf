#fetch data from MAP, LIST, TYPE

provider "aws" {
  region     = "eu-west-2"
  access_key = "AKIA56KP4NDAIS3CJPPQ"
  secret_key = "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"
}

resource "aws_instance" "my_ec2" {
  ami = "ami-08f3d892de259504d"
  instance_type = var.types["eu-west-1"]
  #or instance_type = var.list["0"]
}

# use specific data from the 'list' and 'types'

variable "type" {
  type = map
  default = {
    eu-west-1 = "t2.micro"
    eu-west-2 = "t2.nano"
  }
}

variable "list" {
  type = list
  default = [ "t2.nano", "t2.micro"]
}