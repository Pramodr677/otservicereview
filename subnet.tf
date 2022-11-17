resource "aws_subnet" "public1" {
  vpc_id            = aws_vpc.ot_vpc.id
  cidr_block        = var.subnet_cidr_1
  availability_zone = var.availability_zone1
  tags              = var.tags_subnet_pub
}

resource "aws_subnet" "public2" {
  vpc_id            = aws_vpc.ot_vpc.id
  cidr_block        = var.subnet_cidr_2
  availability_zone = var.availability_zone2
  tags              = var.tags_subnet_pub
}

resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.ot_vpc.id
  cidr_block        = var.subnet_cidr_3
  availability_zone = var.availability_zone1
  tags              = var.tags_subnet_priv_app
}

resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.ot_vpc.id
  cidr_block        = var.subnet_cidr_4
  availability_zone = var.availability_zone2
  tags              = var.tags_subnet_priv_app
}

resource "aws_subnet" "private3" {
  vpc_id            = aws_vpc.ot_vpc.id
  cidr_block        = var.subnet_cidr_5
  availability_zone = var.availability_zone1
  tags              = var.tags_subnet_priv_data
}

resource "aws_subnet" "private4" {
  vpc_id            = aws_vpc.ot_vpc.id
  cidr_block        = var.subnet_cidr_6
  availability_zone = var.availability_zone2
  tags              = var.tags_subnet_priv_data
}



