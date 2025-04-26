# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.96.0"
    }
  }
}

provider "aws" {
  region                  = "ap-south-1"
  Environment ="default"
}

resource "aws_instance" "personal_ec2" {
  ami           = "ami-084568db4383264d4" # Amazon Linux 2 AMI (Update this based on region)
  instance_type = "t2.micro"              # Free tier gang 🤑

  tags = {
    Name = "MyPersonalEC2"
  }
}
