resource "aws_route_table_association" "rta1" {
    subnet_id = aws_subnet.public-2a.id
    route_table_id = aws_route_table.Rt.id
}

resource "aws_route_table_association" "rta2" {
    subnet_id = aws_subnet.public-2b.id
    route_table_id = aws_route_table.Rt.id
}
