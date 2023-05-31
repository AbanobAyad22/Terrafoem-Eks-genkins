resource "aws_subnet" "private-us-east-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    "Name" = "private-us-east-1a"
    "kubernates.io/role/internal-elb" = 1
    "kubernates.io/cluster/mycluster" = "shared"

  }
}
# ---

resource "aws_subnet" "private-us-east-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    "Name" = "private-us-east-1b"
    "kubernates.io/role/internal-elb" = 1
    "kubernates.io/cluster/mycluster" = "shared"

  }
}
# ---

resource "aws_subnet" "public-us-east-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1a"

  tags = {
    "Name" = "public-us-east-1a"
    "kubernates.io/role/internal-elb" = 1
    "kubernates.io/cluster/mycluster" = "shared"
  }
  map_public_ip_on_launch = true
}
# ---

resource "aws_subnet" "public-us-east-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1b"
    
  tags = {
    "Name" = "public-us-east-1b"
    "kubernates.io/role/internal-elb" = 1
    "kubernates.io/cluster/mycluster" = "shared"
  }
  map_public_ip_on_launch = true
}