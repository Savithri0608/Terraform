provider "aws" {
    region = "us-east-1"
  
}

variable "ami" {
   description = "AMI value"
  
}

variable "instance_type" {
    description = "Type name"
    type = map(string)

    default = {
      "dev" = "t2.micro"
      "prod"= "t2.medium"
      "stage" ="t2.xlarge"
    }
  
}
module "Ec2-instance" {
  source = "./Ec2-instance"
  ami = var.ami
  instance_type = lookup(var.instance_type,terraform.workspace, "t2.micro")

}
