data "aws_security_group" "eks_cluster_sg" {
  id = aws_eks_cluster.dev_cluster.vpc_config[0].cluster_security_group_id
}

resource "aws_security_group" "node_sg" {
  name   = "${var.eks_cluster_name}-node-sg"
  vpc_id = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }

  tags = {
    Name = "${var.eks_cluster_name}-node-sg"
  }
}