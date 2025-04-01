variable "region" {
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

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "eks_cluster_version" {
  description = "Version of the EKS cluster"
  type        = string
}

