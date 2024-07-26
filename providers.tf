provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "pooja123-s3bucket-date"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "pooja123-date-dblocks"
    encrypt        = true
  }
}
