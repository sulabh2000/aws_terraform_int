provider "aws" {
  region = "us-east-1"
}



module "ec2" {
  source            = "./modules/ec2"
  aws_ami_id        = var.aws_ami_id
  aws_instance_type = var.aws_instance_type
  key_pair          = var.key_pair
  name              = var.name
}

module "s3" {
  source          = "./modules/s3"
  aws_bucket_name = var.aws_bucket_name
  bucket          = var.bucket
}