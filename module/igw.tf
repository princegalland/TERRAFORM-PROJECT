# Configuring the Internet Gateway

resource "aws_internet_gateway" "vpc1igw" {
    vpc_id = aws_vpc.vpc1.id

    tags = {
      Name = "vpc1igw"
    }

}