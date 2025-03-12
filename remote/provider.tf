terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.89.0"
    }
  }
}
terraform {
  backend "s3" {
    bucket = "swami-remote-state"
    key    = "remote-state-demo"
    region = "us-east-1"
    dynamodb_table = "swami-locking"
  }
}

provider "aws" {
    region = "us-east-1"
}