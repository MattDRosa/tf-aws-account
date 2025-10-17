module "vpc" {
  source = "./vpc"

  vpc_name        = var.vpc_name
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnet_cidrs
  private_subnets = var.private_subnet_cidrs
}

# module "eks" {
#   count  = var.create_eks_cluster ? 1 : 0
#   source = "./eks"

#   vpc_cidr   = var.vpc_cidr
#   subnet_ids = module.vpc.public_subnets_ids
#   vpc_id     = module.vpc.vpc_id

#   eks_cluster_name     = var.eks_cluster_name
#   eks_cluster_version  = var.eks_cluster_version
#   eks_master_role_name = var.eks_master_role_name
#   eks_nodes_role_name  = var.eks_nodes_role_name

#   base_instance_type   = var.base_instance_type
#   eks_nodes_ami_type   = var.eks_nodes_ami_type
#   base_node_group_name = var.base_node_group_name
#   desired_size         = var.desired_size
#   max_size             = var.max_size
#   min_size             = var.min_size
# }