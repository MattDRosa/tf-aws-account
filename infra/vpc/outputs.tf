output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnets_cidrs" {
  value = values(aws_subnet.public_subnets)[*].cidr_block
}

output "private_subnets_cidrs" {
  value = values(aws_subnet.private_subnets)[*].cidr_block
}

output "public_subnets_ids" {
  value = values(aws_subnet.public_subnets)[*].id
}

output "private_subnets_ids" {
  value = values(aws_subnet.private_subnets)[*].id
}