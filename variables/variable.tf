variable "image_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description ="rhel-9 ami"
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}
variable "sg_ids" {
    default = ""
  
}
variable "tags" {
    default = {
    Project     = "expense"
    Environment = "Dev"
    Module = "DB"
    Name = "DB"
    }
}

variable "sg_name" {
  default = "allow_ssh"
}
variable "sg_description" {
    default = "allowing ssh"
  
}
variable "ssh_port" {
  default = 22
}
variable "protocol" {
  default = "tcp"
}
variable "allowed_ssh" {
    type = list(string)
    default = "[0.0.0.0/0]"
  
}