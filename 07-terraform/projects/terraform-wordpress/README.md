# Deploy WordPress Using Terraform on AWS

## Overview

This project demonstrates how to use **Terraform Infrastructure as Code (IaC)** to deploy a complete WordPress application stack on AWS.

Terraform provisions the required AWS infrastructure, configures networking access, launches an Ubuntu EC2 instance, and automatically installs WordPress dependencies using EC2 User Data.

The goal of this project was to understand how Terraform manages real cloud infrastructure from provisioning to deployment.

---

# Architecture

```
                 Internet
                    |
                    |
              Security Group
              (SSH + HTTP)
                    |
                    |
              EC2 Instance
            Ubuntu Server
                    |
          -------------------
          |                 |
       Apache             PHP
          |
       MariaDB
          |
      WordPress
```

Terraform manages all infrastructure resources.

---

# Technologies Used

- Terraform
- AWS EC2
- AWS S3 Backend
- Ubuntu Linux
- Apache Web Server
- PHP
- MariaDB
- WordPress
- Bash / EC2 User Data

---

# AWS Resources Created

## EC2 Instance

Terraform creates:

- Ubuntu Server EC2 instance
- t2.micro instance type
- SSH key authentication
- Public IP address
- Automated WordPress installation

---

## Security Group

The security group controls inbound and outbound traffic.

Inbound rules:

| Protocol | Port | Purpose |
|----------|------|---------|
| TCP | 22 | SSH access |
| TCP | 80 | HTTP web traffic |

Outbound traffic is allowed so the server can download updates and required packages.

---

## S3 Remote Backend

Terraform state is stored remotely in Amazon S3.

Example:

```
S3 Bucket:
terraform-state-abdullahi

State File:
wordpress/terraform.tfstate
```

Using remote state allows Terraform to securely track infrastructure changes.

---

# Project Structure

```
wordpress-terraform/

├── backend.tf              # Remote Terraform state configuration
├── provider.tf             # AWS provider configuration
├── variables.tf            # Input variables
├── terraform.tfvars        # Variable values
├── security-group.tf       # Security group rules
├── keypair.tf              # EC2 SSH key pair
├── ec2.tf                  # EC2 instance configuration
├── user-data.sh            # Automated server setup script
├── outputs.tf              # Terraform outputs
├── README.md               # Project documentation
└── .gitignore              # Ignored files
```

---

# Terraform Workflow

## Initialize Terraform

Downloads providers and configures the backend.

```bash
terraform init
```

---

## Validate Configuration

Checks Terraform syntax.

```bash
terraform validate
```

---

## Format Terraform Files

Formats Terraform configuration files.

```bash
terraform fmt
```

---

## Create Terraform Plan

Shows what resources Terraform will create.

```bash
terraform plan
```

---

## Deploy Infrastructure

Creates AWS resources.

```bash
terraform apply
```

---

## Destroy Infrastructure

Deletes Terraform-managed resources.

```bash
terraform destroy
```

---

# Automated Installation Using User Data

The EC2 instance uses a Bash script that automatically runs during the first boot.

The script:

- Updates Ubuntu packages
- Installs Apache
- Installs PHP and required extensions
- Installs MariaDB
- Downloads WordPress
- Configures WordPress files
- Sets correct permissions
- Starts required services

This removes the need for manually configuring the server.

---

# Terraform Concepts Practiced

## Providers

Configured AWS as the Terraform provider to communicate with AWS services.

---

## Resources

Created AWS resources using Terraform:

- EC2 Instance
- Security Group
- Key Pair

---

## Variables

Used input variables for:

- AWS Region
- AMI ID
- Instance Type

---

## Outputs

Displayed important deployment information:

- EC2 Instance ID
- Public IP address
- Website URL

---

## Remote State

Stored Terraform state remotely using Amazon S3 instead of keeping it locally.

---

## Dependencies

Terraform automatically manages resource dependencies and creates resources in the correct order.

---

# Deployment Result

After deployment, Terraform outputs the WordPress endpoint.

Example:

```bash
website_url = http://<EC2_PUBLIC_IP>
```

Opening the URL displays the WordPress setup page.

---

# Lessons Learned

Through this project I learned:

- How Terraform manages AWS infrastructure
- How Infrastructure as Code improves repeatability
- How to configure remote Terraform state
- How EC2 User Data automates server configuration
- How AWS Security Groups control access
- How to deploy applications without manual server setup

---

# Future Improvements

Possible improvements:

- Convert infrastructure into Terraform modules
- Add Application Load Balancer
- Move database to Amazon RDS
- Add HTTPS using ACM certificates
- Add Route 53 custom domain
- Add CI/CD pipeline using GitHub Actions
- Implement IAM roles following least privilege principles

---

# Author

Abdullahi Wadi

GitHub:
https://github.com/AbdullahiWadi2025