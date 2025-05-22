provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "example2" {
    instance_type = "t2.micro"
    ami = "ami-084568db4383264d4"  
}
