# Configure the AWS provider
provider "aws" {
  region = "eu-west-2"
}

# Configure the Terraform backend to use S3
terraform {
  backend "s3" {
    bucket = "hyr-terraform-bucket-EKS"
    key    = "terraform/state.tfstate"
    region = "eu-west-2"
  }
}