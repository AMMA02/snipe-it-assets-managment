variable "aws_region" {
  description = "AWS region to deploy the instance"
  type        = string
  default     = "us-east-1"
}

variable "instance_name" {
  description = "Name tag applied to the EC2 instance and security group"
  type        = string
  default     = "ubuntu-docker-server"
}

variable "key_pair_name" {
  description = "Name of an EXISTING EC2 key pair (the .pem file must already exist in AWS)"
  type        = string
  default = "snipe-it-key"
  # No default — must be supplied via terraform.tfvars or -var flag
}

variable "allowed_ssh_cidr" {
  description = "CIDR blocks allowed to reach port 22 (SSH). Restrict to your IP for security."
  type        = list(string)
  default     = ["0.0.0.0/0"] # ⚠ Restrict in production
}

variable "allowed_app_cidr" {
  description = "CIDR blocks allowed to reach port 8080"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "root_volume_size_gb" {
  description = "Size of the root EBS volume in GB"
  type        = number
  default     = 20
}
