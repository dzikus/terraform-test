#Remote Backend Configuration
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
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

resource "aws_s3_bucket" "laboratorium-terraform-dla-mnie-dzikus" {
  bucket = "laboratorium-terraform-dla-mnie-dzikus"
  tags = {
    "Name" = "laboratorium-terraform-dla-mnie-dzikus"
  }
}
