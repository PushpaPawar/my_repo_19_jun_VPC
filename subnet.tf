resource "aws_route_table_association" "Public" {
  subnet_id      = aws_subnet.Public.id
  route_table_id = aws_route_table.IG_route_table.id
}
resource "aws_route_table_association" "Private" {
  subnet_id      = aws_subnet.Private.id
  route_table_id = aws_route_table.nat_route_table.id
}
resource "aws_route_table_association" "data" {
  subnet_id      = aws_subnet.data.id
  route_table_id = aws_route_table.nat_route_table.id
}