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

resource "aws_iam_user" "security_analyst" {
  name = "security_analyst"
}

resource "aws_iam_user_group_membership" "security_team_membership" {
  user = aws_iam_user.security_analyst.name

  groups = [
    aws_iam_group.security_team.name
  ]
}
