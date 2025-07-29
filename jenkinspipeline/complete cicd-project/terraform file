provider "aws" {
    region = "us-east-1"
    access_key = "xxx"
    secret_key = "xx"
}

resource "aws_instance" "admin" {
    ami = "ami-04b4f1a9cf54c11d0"
    instance_type = "t2.medium"
    security_groups = [ "default" ]
    key_name = "project"
    root_block_device {
      volume_size = 30
      volume_type = "gp2"
      delete_on_termination = true
    }
    tags = {
      Name = "Admin-server"
    }

}

output "PublicIP" {
    value =  aws_instance.admin.public_ip
}