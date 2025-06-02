output "ec2_public_ip" {
  description = "public ip for ec2"
  value       = aws_instance.private.public_ip
}

