provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2_machine" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t3.micro"
  count         = 2   # keep 2 (safe for lab)

  tags = {
    Name = "Terra-EC2"
  }
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "ruchitha-terraform-demo-12345"  # must be unique

  tags = {
    Name = "upload-demo"
  }
}

resource "aws_s3_bucket_object" "text_file" {
  bucket = aws_s3_bucket.demo_bucket.bucket
  key    = "sample.txt"
  source = "./sample.txt"
}
