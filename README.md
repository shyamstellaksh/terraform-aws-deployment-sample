# Terraform + AWS Deployment with Jenkins CI/CD

This sample project demonstrates how to provision AWS infrastructure using **Terraform** and automate deployments using **Jenkins**.

The project creates an EC2 instance, opens HTTP access, and installs a simple web application using a shell script.

---

## 🚀 What This Project Does

1. Provisions AWS resources using Terraform:
   - EC2 instance
   - Security group with HTTP (80) & SSH (22) open

2. Uses a shell script (`install_app.sh`) as user data to:
   - Install Nginx
   - Deploy a sample HTML page

3. Uses a Jenkins pipeline (`Jenkinsfile`) to:
   - Checkout code
   - Run terraform init/plan/apply

---

## ▶️ Basic Commands

```
terraform init
terraform plan
terraform apply -auto-approve
```

---

## 🧹 Destroy All Resources

```
terraform destroy
```