resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.ot_vpc.id
  tags = var.tags_igw
}