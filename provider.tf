terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.36.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "devops-s3-demo-comunidade"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

