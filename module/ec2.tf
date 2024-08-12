# Creating EC2 instances

resource "aws_instance" "pub" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = aws_subnet.subpub.id
    security_groups = [ aws_security_group.sg.id ]

    tags = {
      Name = "pub"
    }
  
}

resource "aws_instance" "priv" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = aws_subnet.subpriv.id
    security_groups = [ aws_security_group.sg.id ]

    tags = {
      Name = "priv"
    }
  
}