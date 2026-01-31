# Terraform AWS Infrastructure Automation

This project automates AWS infrastructure provisioning using Terraform.
It uses modular Terraform design and workspaces to deploy infrastructure
across multiple environments such as dev and prod.

## Resources Provisioned
- VPC
- EC2 Instance
- Security Groups
- IAM Roles 

## Tools Used
- Terraform
- AWS (EC2, VPC, IAM, S3)
- GitHub

## How to Run
terraform init
terraform workspace select dev
terraform plan
terraform apply
