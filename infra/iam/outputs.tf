output "eks_cluster_role_arn" {
  value = aws_iam_role.eks_cluster_role[0].arn
}

output "eks_master_role_name" {
  value = aws_iam_role.eks_cluster_role[0].name
}

output "eks_master_role_arn" {
  value = aws_iam_role.eks_cluster_role[0].arn
}

output "eks_base_nodes_role_arn" {
  value = aws_iam_role.eks_node_role[0].arn
}