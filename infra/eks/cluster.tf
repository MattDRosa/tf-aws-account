resource "aws_eks_cluster" "dev_cluster" {
  name                          = var.eks_cluster_name
  role_arn                      = var.eks_master_role_arn
  version                       = var.eks_cluster_version
  enabled_cluster_log_types     = ["api", "audit", "scheduler", "controllerManager"]
  bootstrap_self_managed_addons = true

  upgrade_policy {
    support_type = "STANDARD"
  }

  access_config {
    authentication_mode = "API_AND_CONFIG_MAP"
  }

  vpc_config {
    subnet_ids              = var.subnet_ids
    endpoint_public_access  = true
    endpoint_private_access = true
  }

}

resource "aws_iam_role_policy_attachment" "cluster_role_attachment" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = var.eks_master_role_name
}