provider "aws" {
  region = "eu-west-2"
}

resource "aws_vpc" "myNetwork" {
  cidr_block = "192.168.0.0/24"
}

data "aws_ami" "ubuntu" {
    most_recent = true
 
  filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["ubuntu"]
}

resource "aws_instance" "test" {
  ami = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  availability_zone = "eu-west-2"
  monitoring = true
  private_ip = "192.168.0.100"

  tags = {
    Name = "newProject"
  }
}

data "aws_caller_identity" "current" {}

data "aws_region" "current" {}