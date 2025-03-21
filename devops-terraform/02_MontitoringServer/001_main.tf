terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "access_key"
  secret_key = "secret_key"
}


resource "aws_budgets_budget" "ec2" {
  name              = "budget-ec2-monthly"
  budget_type       = "COST"
  limit_amount      = "5"
  limit_unit        = "USD"
  time_period_end   = "2025-04-15_00:00"
  time_period_start = "2025-03-15_00:00"
  time_unit         = "MONTHLY"


}