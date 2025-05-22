terraform {
  backend "s3" {
    bucket = "savii3-demo"
    key    = "savithri/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "Terraform_lock"
  }
}
