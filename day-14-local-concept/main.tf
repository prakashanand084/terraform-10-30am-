provider "aws" {
  region = var.region
}

locals {
  environment   = var.environment
  instance_type = var.instance_type
  ami           = var.ami
  Name          = var.name
}

resource "aws_instance" "example" {
  ami           = local.ami
  instance_type = local.instance_type

  tags = {
    Name        = local.Name
    Environment = local.environment
  }
}
