output "vpc_id1" {
  value = aws_vpc.Double[0].id
}

output "vpc_id2" {
  value = aws_vpc.Double[1].id
}