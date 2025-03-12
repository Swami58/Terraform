resource "aws_instance" "expense" {
    for_each = var.instance_names
    ami = data.aws_ami.ami_info
    instance_type = each.value
    vpc_security_group_ids = ["sg-0111cc2113f4bb682"]
    tags = merge(
        var.common_tags,{
            Name = each.key
            Module = each.key
        }

    )
}