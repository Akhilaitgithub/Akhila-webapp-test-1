provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0abcdef1234567890"  # Replace with your AMI ID
  instance_type = "t2.micro"
  key_name      = "git1-keypair"

  tags = {
    Name = "MyEC2Instance"
  }
}
