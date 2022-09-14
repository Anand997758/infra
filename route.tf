resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.vpc-infra.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "Public_Route_table"
  }

}
resource "aws_route_table" "Private_route" {
  vpc_id = aws_vpc.vpc-infra.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }

}

resource "aws_route_table_association" "pub_association1" {
  subnet_id      = aws_subnet.pub_subnet1.id
  route_table_id = aws_route_table.public_route.id

}
resource "aws_route_table_association" "pub_association2" {
  subnet_id      = aws_subnet.pub_subnet2.id
  route_table_id = aws_route_table.public_route.id

}
resource "aws_route_table_association" "private_association1" {
  subnet_id      = aws_subnet.priv_subnet1.id
  route_table_id = aws_route_table.Private_route.id

}
resource "aws_route_table_association" "private_association2" {
  subnet_id      = aws_subnet.priv_subnet2.id
  route_table_id = aws_route_table.Private_route.id

}