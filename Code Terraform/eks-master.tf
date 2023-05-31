resource "aws_eks_cluster" "mycluster" {
  name     = "mycluster"
  role_arn = aws_iam_role.clusterrole.arn
  vpc_config {
    subnet_ids = [aws_subnet.private-us-east-1a.id, aws_subnet.private-us-east-1b.id]
    endpoint_private_access = true
    endpoint_public_access  = false
    security_group_ids = [aws_security_group.secgroup.id]
  }

  # depends_on = [aws_security_group.secgroup]
}
# ---
resource "aws_iam_role" "clusterrole" {
  name = "clusterrole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "eks.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "private_cluster" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.clusterrole.name
}

resource "aws_iam_role_policy_attachment" "AmazonEC2ContainerRegistryReadOnly-EKS" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role = aws_iam_role.clusterrole.name

}
