resource "aws_subnet" "public-2a" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.public_subnet_cidr_1
    availability_zone = "${var.region}a"
    map_public_ip_on_launch = var.public_ip_on_launch

    tags = {
        Name = "public-subnet-2a"
    }
  
}

resource "aws_subnet" "public-2b" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.public_subnet_cidr_2
    availability_zone = "${var.region}b"
    map_public_ip_on_launch = var.public_ip_on_launch

     tags = {
        Name = "public-subnet-2b"
    }
}

resource "aws_subnet" "private-2a" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.private_subnet_cidr_1
    availability_zone = "${var.region}a"

     tags = {
        Name = "private-subnet-2a"
    }
  
}

resource "aws_subnet" "private-2b" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.private_subnet_cidr_2
    availability_zone = "${var.region}b"

     tags = {
        Name = "private-subnet-2b"
    }
}
