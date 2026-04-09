provider "aws" {
  alias  = "r1"
  region = "us-east-1"
}

resource "aws_instance" "ec2_example" {
  provider      = aws.r1
  tags = {
    name = var.name
  }
  ami           = var.aws_ami_id
  instance_type = var.aws_instance_type
  key_name = var.key_pair
}
