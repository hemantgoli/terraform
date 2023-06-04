#aws regions
variable "aws_regions" {
    type = string
    default = ""
}

#aws ami
variable "amis" {
  type = map(string)
  default = {
    "ap-southeast-1" = ""
    "us-east-2" = ""
  }
}

#aws instance type
variable "instance_type" {
    type = string
    default = ""
}