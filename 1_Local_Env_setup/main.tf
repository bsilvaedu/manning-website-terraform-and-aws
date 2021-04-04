provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "helloworld" {
  ami           = "ami-042e8287309f5df03"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}

data "local_file" "credentials" {
    filename = "/Users/bsilva/.aws/credentials"
}