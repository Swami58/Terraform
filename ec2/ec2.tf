resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allow ssh"

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_block  = ["0.0.0.0/0"]
    }
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_block  = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_ssh"
        CreatedBy = "Swami"
    }
}

resource "aws_instance" "db"{
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t2.micro"
}