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

variable "table_name" {
  description = "DynamoDB table name"
  type        = string
}

variable "attributes" {
  description = "DynamoDB table attributes"
  type = list(map(string))
  default = [
    {
      name = "id"
      type = "S"
    }
  ]
}

variable "lsi_attributes" {
  description = "DynamoDB table LSI attributes"
  type = list(map(string))
  default = [
    {
      name = "id"
      type = "S"
    }
  ]
}

variable "billing_mode" {
  description = "DynamoDB table billing mode"
  type        = string
  default     = "PAY_PER_REQUEST"
}