resource "aws_instance" "dove-instance" {
    ami = var.AMIS[var.REGION]
    instance_type = "t2.micro"
    availability_zone = var.Zone1
    key_name = "Control-key"
    vpc_security_group_ids = ["sg-038a91873b5f8a169"]
    tags = {
        Name = "default"
    }
}