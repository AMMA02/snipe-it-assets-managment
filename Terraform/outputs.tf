output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.main.id
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.main.public_ip
}

output "public_dns" {
  description = "Public DNS hostname of the EC2 instance"
  value       = aws_instance.main.public_dns
}

output "ssh_command" {
  description = "Ready-to-use SSH command to connect to the instance"
  value       = "ssh -i ~/.ssh/${var.key_pair_name}.pem ubuntu@${aws_instance.main.public_ip}"
}

output "ami_id" {
  description = "Ubuntu 24.04 LTS AMI that was used"
  value       = data.aws_ami.ubuntu_24.id
}

output "security_group_id" {
  description = "ID of the created security group"
  value       = aws_security_group.ec2_sg.id
}
