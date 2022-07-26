#Remote Backend Configuration
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "dzikus"
    workspaces {
      name = "workspace"
    }
  }
}
#Provider Configuration
provider "aws" {
  region = "eu-central-1"
}

#S3 Bucket Configuration

#resource "aws_s3_bucket" "laboratorium-terraform-dla-mnie-dzikus" {
#  bucket = "laboratorium-terraform-dla-mnie-dzikus"
#  tags = {
#    "Name" = "laboratorium-terraform-dla-mnie-dzikus"
#  }
#}
#resource "aws_instance" "test-z-git" {
#  ami = "ami-0a1ee2fb28fe05df3"
#  instance_type = "t2.micro"
#}

data "aws_ami" "amazon" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.*x86_64-gp2"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  owners = ["137112412989"] # Amazon
}