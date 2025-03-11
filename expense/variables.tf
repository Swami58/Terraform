#ec2 variables
variable "instance_names"{
    type = list
    default = ["db","frontend","backend"]
}
variable "image_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
  
}
variable "tags" {
    default = {
    Project     = "expense"
    Environment = "Dev"
    Terraform = "true"
    }
}

variable "instance_type" {
    default = "t3.micro"
    type = string
  
}
#security group variables
variable "sg_name" {
    default = "allow ssh"
  
}
variable "sg_descriptioin" {
  default = "allowing ssh"
}
variable "ssh_port" {
    default = 22
    type = number
}
variable "protocol" {
    default = "tcp"
  
}
variable "allowed_cidr" {
    type = list(string)
    default = [ "0.0.0.0/0" ]
  
}
variable "common_tags" {
   default = {
    Project     = "expense"
    Environment = "Dev"
   }
}

#R53 VARIABLES
