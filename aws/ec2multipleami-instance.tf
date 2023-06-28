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

locals {
instance_name = {"Saurav":"ami-0b08bfc6ff7069aff","Raj":"ami-0fdea1353c525c182","Rimi":"ami-02eb7a4783e7e9317","Joyeeta":"ami-0b156a71992057092"}
}

resource "aws_instance" "aws_test" {
        for_each = local.instance_name
        ami = each.value
        instance_type = "t2.micro"
        tags = {
        Name = each.key
        }
}