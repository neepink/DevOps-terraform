
output "vpc_id" {
  value = aws_vpc.myvpc.id
}

output "subnet1_id" {
  value = aws_subnet.sub1.id
}

output "subnet2_id" {
  value = aws_subnet.sub2.id
}
