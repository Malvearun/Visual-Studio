variable "instancetype" {
  default = "t2.micro"
}

# variable "instancetype" {}
# whenever you do not specify instance type, it will ask "terraform plan"
# terraform plan
# terraform apply


# setting up new variable in windows, below are command lines to be entered in terminal.
# setx TF_VAR_instancetype t2.micro
# echo %TF_VAR_instancetype%
# terraform plan


# setting up new variable in linux, below are command lines to be entered in terminal.
# export TF_VAR_instancetype="t2.nano"
# echo TF_VAR_instancetype
# terraform plan