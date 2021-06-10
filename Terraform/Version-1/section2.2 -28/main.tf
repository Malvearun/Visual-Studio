provider "aws" {
  region     = "eu-west-2"
  access_key = "AKIA56KP4NDAIS3CJPPQ"
  secret_key = "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"
}

# ec2 instance

resource "aws_instance" "my_ec2" {
  ami = "ami-08f3d892de259504d"
  instance_type = var.instancetype
}


# iam_user
resource "aws_iam_user" "iamuser" {
  name = var.username
  path = "/system/"
}

# aws_elb
resource "aws_elb" "bar" {
  name               = var.elb_name
  availability_zones = var.az


  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

  cross_zone_load_balancing   = true
  idle_timeout                = var.timeout
  connection_draining         = true
  connection_draining_timeout = var.timeout

  tags = {
    Name = "foobar-terraform-elb"
  }

