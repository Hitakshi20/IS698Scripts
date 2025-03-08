resource "aws_vpc" "my_vpc" {
  cidr_block = "<your-cidr-block>"  
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "<your-public-cidr>"  
  map_public_ip_on_launch = true
  availability_zone       = "<your-az>"
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "<your-private-cidr>"  
  availability_zone = "<your-az>"
}
