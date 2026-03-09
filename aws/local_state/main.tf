terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.35.0" # Access to 2026 features
    }
  }

  required_version = "~> 1.14.0"
}

provider "aws" {
  region  = "eu-north-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-073130f74f5ffb161" #valid for eu-north-1
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

