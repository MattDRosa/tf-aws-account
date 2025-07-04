resource "aws_subnet" "private_subnets" {
  for_each = var.private_subnets

  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value
  availability_zone = each.key

  tags = {
    Name = "Private Subnet (${each.key})"
  }
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private_subnets.id
  route_table_id = aws_route_table.private.id
}