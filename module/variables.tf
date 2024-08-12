# VPC
variable "instance_tenancy" {
    type = string
    default = "default"
  
}

variable "cidrvpc" {
    type = string
    default = "123.10.0.0/16"
  
}

# Subnets

variable "subpubcidr" {
    type = string
    default = "123.10.0.0/24"
  
}

variable "subpubaz" {
    description = "Availability Zone For the Public Subnet"
    type = string
    default = "us-east-1a"
  
}

variable "subpricidr" {
    description = "Cidr Block for the Private Subnet"
    type = string
    default = "123.10.1.0/24"
  
}

variable "subpriaz" {
    description = "Availability Zone of the Private Subnet"
    type = string
    default = "us-east-1b"
  
}
#ec2 instances

variable "ami" {
    type = string
    default = "ami-04a81a99f5ec58529"
  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
  
}

variable "key_name" {
    type = string
    default = "clinton"
  
}

