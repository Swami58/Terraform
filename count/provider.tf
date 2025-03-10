terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.87cd /c/.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}