resource "aws_subnet" "public_subnets" {
  for_each = var.public_subnets

  vpc_id                  = aws_vpc.main.id
  cidr_block              = each.value
  availability_zone       = each.key
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet (${each.key})"
  }
}

resource "aws_route_table_association" "public" {
  for_each       = var.public_subnets
  subnet_id      = aws_subnet.public_subnets[each.key].id
  route_table_id = aws_route_table.public.id
}