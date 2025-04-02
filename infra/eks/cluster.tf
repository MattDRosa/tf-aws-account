resource "aws_eks_cluster" "dev_cluster" {
  name     = var.eks_cluster_name
  role_arn = var.eks_master_role_arn
  version  = var.eks_cluster_version

  access_config {
    authentication_mode = "API_AND_CONFIG_MAP"
  }

  vpc_config {
    subnet_ids                = var.private_subnet_ids
    cluster_security_group_id = aws_security_group.eks_cluster_sg.id
  }

}

resource "aws_iam_role_policy_attachment" "cluster_role_attachment" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = var.eks_master_role_name
}