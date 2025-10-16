output "eks_cluster_role_arn" {
  value = aws_iam_role.eks_cluster_role[count.index].arn
}

output "eks_master_role_name" {
  value = aws_iam_role.eks_cluster_role[count.index].name
}

output "eks_master_role_arn" {
  value = aws_iam_role.eks_cluster_role[count.index].arn
}

output "eks_base_nodes_role_arn" {
  value = aws_iam_role.eks_node_role[count.index].arn
}