# Terraform + AWS Deployment with Jenkins CI/CD

This sample project demonstrates how to provision AWS infrastructure using **Terraform** and automate deployments using **Jenkins**.

The project creates an EC2 instance, opens HTTP access, and installs a simple web application using a shell script.

---

## 🚀 What This Project Does

1. Provisions AWS resources using Terraform:
   - EC2 instance
   - Security group with HTTP (80) & SSH (22) open

2. Uses a shell script (`install_app.sh`) as **user data** to:
   - Install Nginx
   - Deploy a sample HTML page

3. Uses a Jenkins pipeline (`Jenkinsfile`) to:
   - Checkout code from Git
   - Run `terraform init`
   - Run `terraform plan`
   - Run `terraform apply` (for deployment)

---

## 🔧 Tools Used

- Terraform
- AWS (EC2, Security Groups)
- Jenkins
- Bash

---

## 📁 File Overview

- `main.tf` – Terraform resources (EC2 + security group)
- `variables.tf` – Input variables (region, instance type, AMI ID, key pair)
- `outputs.tf` – Useful outputs (instance ID, public IP, public DNS)
- `install_app.sh` – Script to install and configure a simple web app
- `Jenkinsfile` – Jenkins pipeline to run Terraform

---

## ⚙️ Prerequisites

- Terraform installed on your local machine or Jenkins agent
- AWS account + IAM user/role with EC2 + VPC permissions
- AWS credentials available on the machine where Terraform runs
- Valid EC2 key pair already created in the target region

---

## ▶️ Basic Usage

```bash
terraform init
terraform plan -out=plan.out
terraform apply -auto-approve plan.out