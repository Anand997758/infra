resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc-infra.id


}