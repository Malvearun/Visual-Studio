
provider "aws" {
  region     = "eu-west-2"
  access_key = "AKIA6EGNWL7QNY44OMEI"
  secret_key = "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"
}

resource "aws_s3_bucket" "my-bucket" {
  bucket = "my-tfqwert-test-bucket-cba-007"
}


output "abc_bucket" {
  value = aws_s3_bucket.my-bucket.bucket_domain_name
}


resource "aws_instance" "my_ec2" {
  ami = "ami-08f3d892de259504d"
  instance_type = "t2.micro"
}

resource "aws_eip" "lb" {
  vpc      = true
}



output "eip" {
  value = aws_eip.lb.public_ip
}


# aws_eip_associate

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.my_ec2.id
  allocation_id = aws_eip.lb.id
}

# Security group

resource "aws_security_group" "allow_tls" {
  name = "allow_tls"

  ingress {
    description = "TLS from VPC"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    # cidr_blocks = ["54.144.207.72/32"]
    cidr_blocks = ["${54.144.207.72}/32"]
  }
}
