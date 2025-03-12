resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allow ssh"

    dynamic "ingress" {
        for_each = var.inbound_rules
        content { 
        from_port   = ingress.each.value[port]
        to_port     = ingress.each.value[port]
        protocol    = ingress.each.value[protocol]
        cidr_blocks  = ingress.each.value[allowed_cidr]
     }
    }
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_ssh"
        CreatedBy = "Swami"
    }
}
