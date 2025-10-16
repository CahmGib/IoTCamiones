data "aws_vpc" "vpc_id" {

  id = var.vpc_id
}
data "aws_availability_zones" "availability_zones" {

}
data "aws_subnets" "secure_subnets" {
  tags = {
    "Type" = "secure-${var.env}"
  }
}

data "aws_subnets" "public_subnets" {
  tags = {
    "Type" = "public-${var.env}"
  }
}

data "aws_subnets" "private_subnets" {
  tags = {
    "Type" = "private-${var.env}"
  }
}
