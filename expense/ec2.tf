resource "aws_instance" "db" {
    count = length(var.instance_names)
    ami = var.image_id
    instance_type = var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    tags = merge(
        var.commom_tags,{
            Name = var.instance_names[count.index]
            Module = var.instance_names[count.index]
        }

    )
}
resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description = var.sg_descriptioin

    ingress {
        from_port = var.ssh_port
        to_port = var.ssh_port
        protocol = var.protocol
        cidr_blocks = var.allowed_cidr
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.allowed_cidr
    }
    tags = {
        name = "allow ssh"
        CreatedBy = "swami"
    }
}