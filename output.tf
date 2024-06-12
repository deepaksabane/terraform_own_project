# Output for the VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

# Output for the Internet Gateway ID
output "igw_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.gw.id
}

# Output for the first public subnet ID
output "public_subnet_2a_id" {
  description = "The ID of the first public subnet"
  value       = aws_subnet.public-2a.id
}

# Output for the second public subnet ID
output "public_subnet_2b_id" {
  description = "The ID of the second public subnet"
  value       = aws_subnet.public-2b.id
}

# Output for the first private subnet ID
output "private_subnet_2a_id" {
  description = "The ID of the first private subnet"
  value       = aws_subnet.private-2a.id
}

# Output for the second private subnet ID
output "private_subnet_2b_id" {
  description = "The ID of the second private subnet"
  value       = aws_subnet.private-2b.id
}
