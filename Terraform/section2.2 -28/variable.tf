variable "username" {
  type = string
}

variable "elb_name" {
  type = string
}

variable "az" {
  type = list
}

variable "timeout" {
  type = number
}

variable "instancetype" {
  default = "t2.micro"
}

/*
variable "usernumber" {
  type = number
}

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
*/




#########
# another example for username:
/*
variable "username" {
  type = list
}
*/

/*
variable "username" {
  type = map
}
*/

/*
variable "username" {
  type = number
}
*/
##########
