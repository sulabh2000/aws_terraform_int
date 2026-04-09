provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example-s3-bucket-terraform" {
  bucket = var.bucket
  tags = {
    name = var.aws_bucket_name
  }
}