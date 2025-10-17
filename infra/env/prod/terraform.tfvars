private_subnet_cidrs = {
  "us-east-1a" = "10.0.0.0/24"
  "us-east-1b" = "10.0.1.0/24"
  "us-east-1c" = "10.0.2.0/24"
}
public_subnet_cidrs = {
  "us-east-1a" = "10.0.3.0/24"
  "us-east-1b" = "10.0.4.0/24"
  "us-east-1c" = "10.0.5.0/24"
}
vpc_cidr              = "10.0.0.0/16"
vpc_name              = "prod-vpc"
internet_gateway_name = "prod-igw"
aws_region            = "us-east-1"

create_eks_cluster    = false
eks_cluster_name      = "prod-eks-cluster"
eks_cluster_version   = "1.33"
base_node_group_name  = "prod-eks-node-group"
base_instance_type    = "t3.medium"
eks_nodes_ami_type    = "AL2023_x86_64_STANDARD"
eks_master_role_name  = "prod-eks-master-role"
eks_nodes_role_name   = "prod-eks-nodes-role"
desired_size          = 1
max_size              = 2
min_size              = 1