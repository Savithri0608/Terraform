provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./modules"
  ami_value = "ami-053b0d53c279acc90" 
  instance_type_value = "t2.micro"
}