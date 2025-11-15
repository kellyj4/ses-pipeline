terraform {
  backend "s3" {
    bucket      = "jxk-sandbox-tfstate-apes2"
    dynamodb_table = "jxk-sandbox-tfstate-apse2"
    encrypt = true
    key = "ses/terraform.tfstate"
    region = "ap-southeast-2"
  }

  required_version = "1.12.2"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.58.0"
    }
  }
}

provider "aws" {
    region = "ap-southeast-2"
}