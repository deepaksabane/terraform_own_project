variable "vpc_cidr" {
    description = "The Cidr block of vpc"
    default = "10.0.0.0/16"
}

variable "public_subnet_cidr_1" {
    description = "The cidr block of first public subnet"
    default = "10.0.0.0/18"
}

variable "public_subnet_cidr_2" {
    description = "The cidr block of second public subnet"
    default = "10.0.224.0/19"
  
}



variable "private_subnet_cidr_1" {
  description = "The CIDR block for the first private subnet"
  default     = "10.0.192.0/19"
}

variable "private_subnet_cidr_2" {
  description = "The CIDR block for the second private subnet"
  default     = "10.0.224.0/19"
}

variable "region" {
    description = "The Aws region to create the resources"
    default = "ap-south-2"
  
}

variable "public_ip_on_launch" {
    description = "Flag to auto-assign public IP on launch"
    default = true
  
}
variable "aws_security_group_ids" {
    description = "List of security group IDs to associate with the EC2 instance"
    type        = list(string)
}

variable "instance_type" {
    description = "instance type"
    default = "t3.micro"
  
}

variable "ami" {
    description = "amazon machine image"
    default = "ami-008616ec4a2c6975e"
  
}