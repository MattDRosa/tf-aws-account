module "vpc" {
  source = "./vpc"

  vpc_name             = var.vpc_name
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "iam" {
  source = "./iam"
}

module "eks" {
  source = "./eks"

  eks_cluster_name     = var.eks_cluster_name
  eks_cluster_version  = var.eks_cluster_version
  eks_master_role_arn  = module.iam.eks_cluster_role_arn
  eks_master_role_name = module.iam.eks_master_role_name
  private_subnet_ids   = module.vpc.private_subnets_ids
}

# module "db" {
#   source = "./db"

#   table_name = var.table_name
#   attributes = var.attributes
#   billing_mode = var.billing_mode
# }