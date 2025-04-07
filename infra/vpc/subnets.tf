resource "aws_subnet" "private_subnets" {
  for_each                                    = var.private_subnet_cidrs
  vpc_id                                      = aws_vpc.main_vpc.id
  cidr_block                                  = each.value
  availability_zone                           = each.key
  map_public_ip_on_launch                     = false
  enable_resource_name_dns_a_record_on_launch = true

  tags = {
    Name = "Private Subnet (${each.key})"
  }
}

resource "aws_route_table" "vpc_private_rt" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "Private RT"
  }
}

resource "aws_subnet" "public_subnets" {
  for_each                                    = var.public_subnet_cidrs
  vpc_id                                      = aws_vpc.main_vpc.id
  cidr_block                                  = each.value
  availability_zone                           = each.key
  map_public_ip_on_launch                     = true
  enable_resource_name_dns_a_record_on_launch = true

  tags = {
    Name = "Public Subnet (${each.key})"
  }
}

resource "aws_route_table" "vpc_public_rt" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main_igw.id
  }

  tags = {
    Name = "Public RT"
  }
}

resource "aws_route_table_association" "public_rt_ac" {
  for_each       = aws_subnet.public_subnets
  subnet_id      = each.value.id
  route_table_id = aws_route_table.vpc_public_rt.id
}