private_subnet_cidrs = {
  "us-west-1a" = "10.0.0.0/24"
  "us-west-1b" = "10.0.1.0/24"
}
public_subnet_cidrs = {
  "us-west-1a" = "10.0.3.0/24"
  "us-west-1b" = "10.0.4.0/24"
}
vpc_cidr              = "10.0.0.0/16"
vpc_name              = "dev-vpc"
internet_gateway_name = "dev-igw"
aws_region            = "us-west-1"