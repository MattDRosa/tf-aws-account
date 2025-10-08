variable "aws_region" {
  description = "Region to create AWS resources"
  default     = "us-east-1"
  type        = string
}

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "internet_gateway_name" {
  description = "Name of the Internet Gateway"
  type        = string
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks and AZs for private subnets"
  type        = map(string)
  default     = {}
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks and AZs for public subnets"
  type        = map(string)
  default     = {}
}
