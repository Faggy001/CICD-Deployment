output "ec2_public_ip" {
  description = "public ip for ec2"
  value       = aws_instance.private.public_ip
}

output "key_name" {
  value = aws_key_pair.flask.Flask-key
}