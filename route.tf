resource "aws_route_table" "IG_route_table" {
  vpc_id = aws_vpc.Lab_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "IG_route_table"
  }
}

resource "aws_route_table" "nat_route_table" {
  vpc_id = aws_vpc.Lab_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_gateway.id
  }

  
  tags = {
    Name = "nat_route_table"
  }
}

