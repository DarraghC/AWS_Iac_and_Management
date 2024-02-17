
provider "aws" {
  region = "eu-west-1"
  access_key = "Key"
  secret_key = "Secret"
}

variable "vpc_id" {
    description = "value"
    # default = ""
    #type constraints if needed
    # type = string
}

data "aws_vpc" "prod-vpc" {
  id = var.vpc_id
}

resource "aws_subnet" "example" {
  vpc_id            = data.aws_vpc.selected.id
  availability_zone = "eu-west-1"
  cidr_block        = cidrsubnet(data.aws_vpc.prod-vpc.cidr_block, 4, 1)