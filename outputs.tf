output "instance_public_ip" {
  description = "The public IP of the created EC2 instance"
  value       = aws_instance.personal_ec2.public_ip
}
