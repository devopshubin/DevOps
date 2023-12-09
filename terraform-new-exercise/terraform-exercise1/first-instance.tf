provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "first-instance" {
  ami                    = "ami-0fc5d935ebf8bc3bc"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "Control-key"
  vpc_security_group_ids = ["sg-012781f04be49cf6a"]
  tags = {
    Name = "DevOps"
  }
}