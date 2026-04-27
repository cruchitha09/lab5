provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2_machine" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t3.micro"

  tags = {
    Name = "Terra-EC2"
  }
}
