provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "intro" {
    ami = "ami-022e1a32d3f742bd8"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    key_name = "Control-key"
    vpc_security_group_ids = ["sg-038a91873b5f8a169"]
    tags = {
        Name = "default"
    }
    }