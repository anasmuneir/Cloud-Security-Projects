# Configure the AWS provider and enforce a consister provider version for reproducible infrastructure deployment
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

# Create a dedicated VPC to isolate project resources from the default AWS network
resource "aws_vpc" "secure_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "secure-vpc"
  }
}

# Public subnet for internet-facing resources
resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.secure_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public-subnet"
  }
}

# Private subnet for internal resources that should not be directly accessible from the internet 
resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.secure_vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "private-subnet"
  }
}