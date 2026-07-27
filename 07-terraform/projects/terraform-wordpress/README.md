# Deploy WordPress Using Terraform on AWS 🚀

## Overview

This project demonstrates how to deploy a complete WordPress application stack on AWS using Terraform Infrastructure as Code (IaC).

The goal of this project was to practice provisioning real AWS infrastructure, configuring networking and security, and automating server setup using Terraform.

Terraform creates the required AWS resources, launches an Ubuntu EC2 instance, configures security rules, and installs WordPress dependencies automatically using EC2 User Data.

---

# Architecture

The deployment includes:

```
User
 |
 | HTTP (Port 80)
 |
 v
AWS EC2 Instance
 |
 |-- Apache Web Server
 |
 |-- PHP
 |
 |-- MariaDB Database
 |
 |-- WordPress Application
```

Terraform manages the entire infrastructure lifecycle:

```
Terraform
    |
    |
    v
AWS Provider
    |
    |
    +---- EC2 Instance
    |
    +---- Security Group
    |
    +---- Key Pair
    |
    +---- S3 Remote State
```

---

# Technologies Used

| Technology | Purpose |
|------------|---------|
| Terraform | Infrastructure as Code |
| AWS EC2 | Compute Server |
| AWS S3 | Terraform Remote State Storage |
| Ubuntu | Operating System |
| Apache | Web Server |
| PHP | WordPress Runtime |
| MariaDB | Database |
| Bash | Server Automation |

---

# AWS Resources Created

## EC2 Instance

Terraform provisions:

- Ubuntu EC2 instance
- Instance type configuration
- SSH access
- Public IP address
- Automated WordPress installation

---

## Security Group

The security group controls inbound and outbound traffic.

### Inbound Rules

| Protocol | Port | Purpose |
|----------|------|---------|
| TCP | 22 | SSH Access |
| TCP | 80 | HTTP Web Traffic |

### Outbound Rules

Allows outbound traffic for:

- Package installation
- Updates
- External communication

---

# Terraform Remote State

Terraform state is stored remotely in Amazon S3.

Example backend configuration:

```hcl
backend "s3" {
  bucket = "terraform-state-abdullahi"
  key    = "terraform.tfstate"
  region = "us-west-1"
}
```

Benefits of remote state:

- Centralized state storage
- Prevents losing Terraform state locally
- Allows collaboration
- Improves infrastructure management

---

# Project Structure

```
terraform-wordpress/

├── backend.tf
├── provider.tf
├── ec2.tf
├── security-group.tf
├── keypair.tf
├── variables.tf
├── outputs.tf
├── user-data.sh
├── README.md
└── .terraform.lock.hcl
```

---

# Terraform Configuration

## Provider

The AWS provider allows Terraform to communicate with AWS.

Example:

```hcl
provider "aws" {
  region = "us-west-1"
}
```

---

## Variables

Variables allow reusable Terraform configurations.

Examples:

- AWS region
- EC2 instance type
- AMI ID
- Key pair name

Example:

```hcl
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
```

---

## Resources

Terraform manages AWS resources using resource blocks.

Example:

```hcl
resource "aws_instance" "wordpress" {
  ami           = var.ami
  instance_type = var.instance_type
}
```

---

# User Data Automation

The EC2 instance uses a user data script to automatically configure the server.

The script performs:

- System updates
- Apache installation
- PHP installation
- MariaDB installation
- WordPress download
- Database creation
- WordPress configuration
- Service startup

This allows the server to be ready without manual configuration.

---

# Deployment Steps

## 1. Initialize Terraform

Downloads providers and initializes the backend.

```bash
terraform init
```

---

## 2. Format Terraform Files

```bash
terraform fmt
```

---

## 3. Validate Configuration

Checks Terraform syntax.

```bash
terraform validate
```

Expected output:

```
Success! The configuration is valid.
```

---

## 4. Review Deployment Plan

```bash
terraform plan
```

---

## 5. Deploy Infrastructure

```bash
terraform apply
```

Terraform creates:

- EC2 instance
- Security group
- Key pair
- WordPress environment

---

## 6. Access WordPress

After deployment, access the application using:

```
http://<EC2-PUBLIC-IP>
```

---

# Destroy Infrastructure

To remove all AWS resources created by Terraform:

```bash
terraform destroy
```

This removes:

- EC2 instance
- Security group
- Key pair

---

# Terraform Concepts Practiced

## Infrastructure as Code (IaC)

Managed AWS infrastructure using configuration files instead of manual console setup.

---

## Providers

Used the AWS provider to communicate with AWS services.

---

## Resources

Created and managed:

- EC2 instances
- Security groups
- Key pairs

---

## Variables

Used variables to make Terraform configurations reusable.

---

## Outputs

Returned useful information such as:

- Instance ID
- Public IP address
- Website URL

---

## Remote State

Stored Terraform state securely in Amazon S3.

---

# Challenges Faced

During this project, I practiced troubleshooting:

- Terraform provider installation issues
- AWS resource configuration
- Security group rules
- EC2 startup delays
- User data execution
- Apache and WordPress setup
- Terraform state management

---

# Future Improvements

Possible improvements:

- Add AWS RDS instead of MariaDB on EC2
- Add Application Load Balancer
- Add HTTPS using AWS Certificate Manager
- Add Route 53 domain configuration
- Add Terraform modules
- Add GitHub Actions CI/CD pipeline
- Store secrets using AWS Secrets Manager

---