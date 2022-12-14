terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


resource "aws_iam_user" "lb" {
  name = "terraform29082022"
  path = "/system/"

  tags = {
    tag-key = "pandey"
  }
}