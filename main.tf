 terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.68.0"
    }
  }
}

provider "aws" {
    profile = "default"
    region = "ap-southeast-1"
  # Configuration options
} 
resource "aws_instance" "webserver1" {
  ami           = "ami-0fed77069cd5a6d6c"
  instance_type = "t2.micro"
  key_name = "singapore"
  

  tags = {
    Name = "my server"
  }
}