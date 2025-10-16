resource "aws_eks_node_group" "base_nodes" {
  cluster_name    = var.eks_cluster_name
  node_group_name = var.base_node_group_name
  node_role_arn   = var.eks_nodes_role_arn
  subnet_ids      = var.subnet_ids
  capacity_type   = "ON_DEMAND"
  ami_type        = var.eks_nodes_ami_type
  instance_types  = [var.base_instance_type]

  remote_access {
    ec2_ssh_key               = aws_key_pair.node_ssh_key.key_name
    source_security_group_ids = [data.aws_security_group.eks_cluster_sg.id]
  }

  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }

  update_config {
    max_unavailable = 1
  }

}