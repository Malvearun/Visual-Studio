#security group


resource "aws_security_group" "vardemo" {
  name = "vardemo"


  ingress {
    description = "TLS from VPC"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    description = "TLS from VPC"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    description = "TLS from VPC"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = [var.vpn_ip]
  }
}
