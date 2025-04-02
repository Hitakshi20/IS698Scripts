provider "aws" {
  region = "us-east-1"
}

variable "instances" {
  type = map
  default = {
    "web1" = "t2.micro"
    "web2" = "t3.micro"
    "web3" = "t2.small"
  }
}
variable "subnet_id" {
    default = "subnet-xxxxxxxxxxxxx"
}
resource "aws_instance" "web" {
  for_each = var.instances

  ami           = "<your-aim-id>"
  instance_type = each.value
  subnet_id     = var.subnet_id

  tags = {
    Name = "${each.key}"
  }
}
