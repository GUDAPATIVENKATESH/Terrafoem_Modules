resource "aws_vpc" "Double" {
    count          = length(var.vpc_cidr)
  cidr_block       = var.vpc_cidr[count.index]

  tags = {
    Name = var.name_tags[count.index]
  }
}

resource "aws_subnet" "privatesubnets" {
    count = length(var.vpc_cidr)
  vpc_id     = aws_vpc.Double[0].id
  cidr_block = var.cidr_private[count.index]

  tags = {
    Name = var.tags_private[count.index]
  }
}

resource "aws_subnet" "publicsubnets" {
    count = length(var.vpc_cidr)
  vpc_id     = aws_vpc.Double[1].id
  cidr_block = var.cidr_public[count.index]


  tags = {
    Name = var.tags_public[count.index]
  }
}