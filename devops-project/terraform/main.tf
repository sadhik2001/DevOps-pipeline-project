
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = { Name = "devops-portfolio-vpc" }
}

resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = var.az
  tags = { Name = "devops-portfolio-subnet" }
}

resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnet.id
  tags = { Name = "devops-portfolio-app" }
}

output "instance_id" {
  value = aws_instance.app_server.id
}
