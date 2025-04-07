resource "aws_eks_addon" "coredns" {
  cluster_name = aws_eks_cluster.dev_cluster.name
  addon_name   = "coredns"
  depends_on   = [aws_eks_node_group.base_nodes]
}
resource "aws_eks_addon" "pod_identity" {
  cluster_name = aws_eks_cluster.dev_cluster.name
  addon_name   = "eks-pod-identity-agent"
  depends_on   = [aws_eks_node_group.base_nodes]
}
resource "aws_eks_addon" "kube_proxy" {
  cluster_name = aws_eks_cluster.dev_cluster.name
  addon_name   = "kube-proxy"
  depends_on   = [aws_eks_node_group.base_nodes]
}
resource "aws_eks_addon" "efs_driver" {
  cluster_name = aws_eks_cluster.dev_cluster.name
  addon_name   = "aws-efs-csi-driver"
  depends_on   = [aws_eks_node_group.base_nodes]
}