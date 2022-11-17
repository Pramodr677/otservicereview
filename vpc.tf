resource "aws_vpc" "ot_vpc" {
  cidr_block       = var.cidr_block_vpc
  instance_tenancy = "default"

  tags = var.vpc_tags
}