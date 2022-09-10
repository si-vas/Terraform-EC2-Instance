resource "aws_route_table_association" "rta" {
  subnet_id      = aws_subnet.public-subnet.id
  route_table_id = aws_route_table.rt.id
}