terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.20"
    }
  }

  required_version = ">= 1.2.8"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "lesson_07" {
  ami           = "ami-0c7c4e3c6b4941f0f"
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name
  }
}

resource "aws_iam_user" "Terraform_user1" {
  name = var.IAM_user
}

resource "aws_iam_user_policy_attachment" "admin_perms" {
  user       = aws_iam_user.Terraform_user1.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}