module "vpc" {
  source = "./vpc"

  vpc_name        = var.vpc_name
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnet_cidrs
  private_subnets = var.private_subnet_cidrs
}
