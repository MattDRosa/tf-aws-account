variable "eks_cluster_name" {}
variable "eks_cluster_version" {}
variable "eks_nodes_role_arn" {}
variable "eks_master_role_arn" {}
variable "eks_master_role_name" {}
variable "base_instance_type" {}
variable "eks_nodes_ami_type" {}
variable "base_node_group_name" {}
variable "subnet_ids" {}
variable "vpc_id" {}
variable "vpc_cidr" {}
variable "desired_size" {}
variable "max_size" {}
variable "min_size" {}
# variable "create_cluster" {}