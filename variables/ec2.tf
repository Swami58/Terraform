resource "aws_instance" "db"{
    ami =var.image_id
    vpc_security_group_ids = []
    instance_type = var.instance_type
    tags = var.tags
}
resource "aws_security_group" "allow_ssh" {
  name = var.sg_name
  description = var.sg_description
    ingress{
        from_port   =  var.ssh_port
        to_port     =  var.ssh_port
        protocol    =   var.protocol
        cidr_blocks =  var.allowed_ssh

    }
    egress  {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.allowed_ssh
    }
    tags = {
        name = "allow_ssh"
        CreatedBy = "swami"
    }
}