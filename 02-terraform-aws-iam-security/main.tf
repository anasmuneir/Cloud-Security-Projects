terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }

  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_iam_group" "security_team" {
  name = "security_team"
}