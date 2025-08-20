provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "chaithu" {
  instance_type = "t3.micro"
  ami = "ami-00ca32bbc84273381" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "chaithu-s3-demo-xyz" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
