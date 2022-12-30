terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}


provider "aws" {
  region     = "us-west-2"
}

resource "aws_vpc" "vpc" {
  cidr_block           = "10.2.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "my-vpc"
  }
}
