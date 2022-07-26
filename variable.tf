variable "region" {
  type    = string
  default = "eu-north-1"
}

variable "vpc_name" {
  type    = string
  default = "demo_vpc"
}
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
variable "private_subnets" {
  type = list
  default = {
    "private_subnet_1" = 1
    "private_subnet_2" = 2
    "private_subnet_3" = 3
  }
}
variable "public_subnets" {
  default = {
    "public_subnet_1" = 1
    "public_subnet_2" = 2
    "public_subnet_3" = 3
  }
}




variable "dzikus_availability_zone" {
  type        = list(string)
  default     = ["eu-north-1a", "eu-north-1b", "eu-north-1c"]
  description = "AZ"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "Free Tier type instance :)"
  sensitive   = false
}