# Configuring our Route Table Pub

resource "aws_route_table" "subpubrt" {
    vpc_id = aws_vpc.vpc1.id
    
    
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.vpc1igw.id

    }
  
}

# Route Table for the Priv

resource "aws_route_table" "subprivrt" {
    vpc_id = aws_vpc.vpc1.id
  
}

# route table association for the pub

resource "aws_route_table_association" "subnetrta" {
    route_table_id = aws_route_table.subpubrt.id
    subnet_id = aws_subnet.subpub.id
  
}

# route table association for the priv

resource "aws_route_table_association" "subprivrta" {
    route_table_id = aws_route_table.subprivrt.id
    subnet_id = aws_subnet.subpriv.id
  
}