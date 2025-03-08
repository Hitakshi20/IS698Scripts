provider "aws" {
  region = "us-east-1" 
}

resource "aws_instance" "my_ec2" {
  ami           = "<your-ami-id>"  
  instance_type = "t2.micro"
  key_name      = "<your-key-pair>"
  subnet_id     = "<your-subnet-id>"

  tags = {
    Name = "terraform-EC2"
  }
}
