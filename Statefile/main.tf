provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "example2" {
    instance_type = "t2.micro"
    ami = "ami-084568db4383264d4"  
}


resource "aws_s3_bucket" "s3_bucket" {
    bucket = "savii3-demo"
}


resource "aws_dynamodb_table" "Terraform_lock" {
    name = "Terraform_lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockI"
      type ="S"
    }
  
}