# COnfiguring the VPC

resource "aws_vpc" "vpc1" {
    instance_tenancy = var.instance_tenancy
    cidr_block = var.cidrvpc
  

  tags = {
    Name = "VPC1"
  }
}

