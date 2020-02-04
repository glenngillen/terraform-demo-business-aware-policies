variable "vpc_id" {
  type    = string
  default = "vpc-01e40d78"
}

variable "default-security-group" {
  type    = string
  default = "sg-2a1ea154"
}

resource "aws_subnet" "us-east-1a" {
  vpc_id      = var.vpc_id
  cidr_block  = "172.31.16.0/20"
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "us-east-1b" {
  vpc_id      = var.vpc_id
  cidr_block  = "172.31.32.0/20"
  availability_zone = "us-east-1b"
}
resource "aws_subnet" "us-east-1c" {
  vpc_id      = var.vpc_id
  cidr_block  = "172.31.0.0/20"
  availability_zone = "us-east-1c"
}
resource "aws_subnet" "us-east-1d" {
  vpc_id      = var.vpc_id
  cidr_block  = "172.31.64.0/20"
  availability_zone = "us-east-1d"
}
resource "aws_subnet" "us-east-1f" {
  vpc_id      = var.vpc_id
  cidr_block  = "172.31.80.0/20"
  availability_zone = "us-east-1f"
}