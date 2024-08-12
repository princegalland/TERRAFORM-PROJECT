# Configuring  the public subnet

resource "aws_subnet" "subpub" {
    vpc_id = aws_vpc.vpc1.id
    cidr_block = var.subpubcidr
    availability_zone = var.subpubaz
    map_public_ip_on_launch = true

    tags = {
      Name: "subpub"
    }
  
}

# Configuring  the public subnet

resource "aws_subnet" "subpriv" {
    vpc_id = aws_vpc.vpc1.id
    cidr_block = var.subpricidr
    availability_zone = var.subpriaz
    map_public_ip_on_launch = false

    tags = {
      Name = "subpriv"
    }
  
}