terraform {
  backend "s3" {
    bucket         = "terraform-state-is698lab7"
    key            = "terraform/state.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
resource "aws_instance" "example" {
  ami           = "ami-00a929b66ed6e0de6"
  instance_type = "t2.micro"
  subnet_id     = "subnet-026681df36b76c12b"
  tags = {
    Name = "Terraform-Test-Instance"
  }
}
