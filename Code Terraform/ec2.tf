resource "aws_instance" "public-ec2" {
  ami                         = "ami-0557a15b87f6559cf"
  instance_type               = "t2.medium"
  vpc_security_group_ids      = [aws_security_group.secgroup.id]
  subnet_id                   = aws_subnet.public-us-east-1a.id
  iam_instance_profile        = aws_iam_instance_profile.test_profile.name 
  associate_public_ip_address = true
  key_name                    = "TF_key"
  tags = {
    Name = "Bastiaaan"
  }
    provisioner "local-exec" {
    command = "echo '${aws_instance.public-ec2.public_ip}' > instance_ip.txt"
  }
}

resource "aws_iam_instance_profile" "test_profile" {
  name = "mycluster-nodes"
  role =  aws_iam_role.mycluster-node.name
}