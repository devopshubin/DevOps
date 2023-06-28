terraform {
        required_providers {
        aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
}
}
        required_version = ">=1.4.6"
}

provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "aws_test" {
        count = 4
        ami = "ami-02eb7a4783e7e9317"
        instance_type = "t2.micro"
        tags = {
        Name = "terraformserver- ${count.index}"
        }
}

output "ec2_public_ips" {
        value = aws_instance.aws_test[*].public_ip
}