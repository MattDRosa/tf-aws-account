resource "aws_eks_node_group" "base_nodes" {
  cluster_name    = var.eks_cluster_name
  node_group_name = "base-nodes-v1"
  node_role_arn   = var.eks_node_role
  subnet_ids      = var.subnet_ids
  capacity_type   = "ON_DEMAND"
  ami_type        = "AL2023_x86_64_STANDARD"
  instance_types  = [var.base_instance_type]

  remote_access {
    ec2_ssh_key               = aws_key_pair.node_ssh_key.key_name
    source_security_group_ids = [data.aws_security_group.eks_cluster_sg.id]
  }

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

}