terraform {
  backend "s3" {
    bucket         = "<terraform-state-<your-unique-id>"
    key            = "terraform/state.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
resource "aws_instance" "example" {
  ami           = "<your-ami-id>"
  instance_type = "t2.micro"
  subnet_id     = "subnet-xxxxxxxxxxxxx"
  tags = {
    Name = "Terraform-Test-Instance"
  }
}
