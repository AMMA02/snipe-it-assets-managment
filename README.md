# Snipe-IT Assets Management

<img width="1024" height="1024" alt="Gemini_Generated_Image_69n9gg69n9gg69n9" src="https://github.com/user-attachments/assets/d040adf9-ea85-40db-b96b-e7d6edd7c376" />

This project uses **Terraform** to provision an AWS EC2 Ubuntu 24.04 LTS server with the required networking and automation to host **Snipe-IT** using **Docker Compose** for IT asset management.

## Project Overview

The infrastructure includes:

- AWS EC2 instance running **Ubuntu 24.04 LTS**
- Security Group with inbound rules for:
  - **SSH (22)** for remote server access
  - **HTTP (80)** for web access to Snipe-IT
- User Data script to automatically:
  - Update package lists
  - Upgrade installed packages
  - Install Docker
  - Install Docker Compose

After provisioning, the EC2 instance is accessed via SSH to deploy and run **Snipe-IT** using Docker Compose.

---

## Tools Used in This Project

### ☁ AWS
Used to provision and host the EC2 Ubuntu 24.04 LTS server where Snipe-IT is deployed.

### 🏗 Terraform
Used as Infrastructure as Code (IaC) to automate the creation of:
- EC2 Instance
- Security Group
- Networking configuration
- User Data provisioning

### 🐳 Docker
Used to containerize and run the Snipe-IT application and its required services.

### 📦 Docker Compose
Used to define and manage multi-container deployment for Snipe-IT and the database service.

### 🖥 Bash
Used inside User Data scripts for:
- System update
- System upgrade
- Docker installation
- Docker Compose installation
- Service enablement

### 🔐 MobaXterm
Used as the SSH client from the local machine to connect securely to the EC2 instance and manage deployment.

### 🐧 Ubuntu 24.04 LTS
Operating system used on the AWS EC2 instance.

### 🏷 Snipe-IT
The main IT Asset Management system used to track and manage company assets.

---

## Infrastructure Setup

### Security Group Rules

| Type | Port | Purpose |
|---|---:|---|
| SSH | 22 | Remote server access |
| HTTP | 80 | Access Snipe-IT web interface |

---

## User Data Configuration

The EC2 instance uses User Data during launch to:

- Run system update
- Run system upgrade
- Install Docker Engine
- Install Docker Compose plugin
- Enable and start Docker service

This ensures the server is ready for container deployment immediately after creation.

---

## Deployment Steps

### 1. Provision Infrastructure

```bash
terraform fmt
terraform validate
terraform init
terraform plan
terraform apply
```

### 2. Connect to EC2 via SSH

```bash
ssh -i your-key.pem ubuntu@your-ec2-public-ip
```

### 3. Deploy Snipe-IT with Docker Compose

```bash
docker compose up -d
```

### 4. Access Snipe-IT

Open your browser and visit:

```text
http://your-ec2-public-ip
```

---

## Architecture Diagram

<img width="1408" height="768" alt="Gemini_Generated_Image_ymzlxymzlxymzlxy" src="https://github.com/user-attachments/assets/4bcd29fd-1fee-441d-a245-1ddc278bcc99" />

---

## Purpose

This project helps automate the deployment of an IT Asset Management system using infrastructure as code and containerized application hosting.

It is designed for managing:

- Company laptops
- Desktops
- Servers
- Network devices
- Licenses
- Accessories
- Other IT assets

using **Snipe-IT**.

---

## Future Improvements

- Add HTTPS with SSL
- Increase security by restricting access so no one outside the company network can access the system
- Configure domain name
- Add automated backups
- Create the APT to intgrat With Our Odoo System 
- Add monitoring with CloudWatch

---

## Resources

- Terraform AWS Provider Documentation  
  https://registry.terraform.io/providers/hashicorp/aws/latest/docs

- Docker Official Documentation  
  https://docs.docker.com/

- Snipe-IT Official Documentation  
  https://snipe-it.readme.io/docs/overview

---

## Author

Created for managing IT assets using Terraform + AWS + Docker + Snipe-IT.

