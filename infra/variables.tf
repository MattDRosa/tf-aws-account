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


variable "eks_master_role_name" {
  description = "EKS cluster master role name"
  type        = string
}

variable "eks_nodes_role_name" {
  description = "EKS cluster nodes role name"
  type        = string
}

variable "create_eks_cluster" {
  description = "Flag to create EKS cluster"
  type        = bool
  default     = false
}

variable "eks_cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "eks_cluster_version" {
  description = "EKS cluster version"
  type        = string
}

variable "base_instance_type" {
  description = "EKS nodes base instance type"
  type        = string
}

variable "eks_nodes_ami_type" {
  description = "EKS nodes AMI"
  type        = string
}

variable "base_node_group_name" {
  description = "EKS node group name"
  type        = string
}

variable "desired_size" {
  description = "EKS node group desired size"
  type        = number
}
variable "max_size" {
  description = "EKS node group maximum size"
  type        = number
}
variable "min_size" {
  description = "EKS node group minimum size"
  type        = number
}