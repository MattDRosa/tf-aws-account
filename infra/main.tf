module "vpc" {
  source = "./infra/vpc"

  vpc_name             = var.vpc_name
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "eks" {
  source = "./infra/eks"

  eks_cluster_name    = var.cluster_name
  eks_cluster_version = var.eks_cluster_version
  vpc_id              = module.vpc.vpc_id

}