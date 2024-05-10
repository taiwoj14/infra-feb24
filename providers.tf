terraform {
  backend "s3" {
    bucket = "tay-terraform-state"
    key = "global/s3/terraform.tfstate"
    dynamodb_table = "terraform-state"
    region = "us-east-1"
    encrypt = true
  }
}


# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
