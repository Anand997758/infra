resource "aws_vpc" "vpc-infra" {
  cidr_block       = "10.2.0.0/16"
  instance_tenancy = "default"


}
resource "aws_subnet" "pub_subnet1" {
  vpc_id                  = aws_vpc.vpc-infra.id
  cidr_block              = "10.2.0.0/24"
  map_public_ip_on_launch = true

  availability_zone = "us-west-1b"


}

resource "aws_subnet" "pub_subnet2" {
  vpc_id                  = aws_vpc.vpc-infra.id
  cidr_block              = "10.2.1.0/24"
  map_public_ip_on_launch = true

  availability_zone = "us-west-1c"


}

resource "aws_subnet" "priv_subnet1" {
  vpc_id            = aws_vpc.vpc-infra.id
  availability_zone = "us-west-1b"
  cidr_block        = "10.2.2.0/24"

}
resource "aws_subnet" "priv_subnet2" {
  vpc_id            = aws_vpc.vpc-infra.id
  availability_zone = "us-west-1c"
  cidr_block        = "10.2.3.0/24"

}
