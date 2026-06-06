# Terraform Nginx Ubuntu Deployment

## Overview

This project provisions an Ubuntu 20.04 EC2 instance using Terraform and automatically installs Nginx using user_data.

The default Nginx page is replaced with a custom HTML page displaying:

Welcome to the Terraform-managed Nginx Server on Ubuntu

---

## Resources Created

* AWS EC2 Instance (t2.micro)
* Security Group

  * HTTP (80)
  * SSH (22)
* Default VPC
* Default Subnet

---

## Prerequisites

* AWS Account
* AWS CLI configured
* Terraform installed

Verify:

terraform --version

aws sts get-caller-identity

---

## Deployment Steps

### Initialize Terraform

terraform init

### Review Execution Plan

terraform plan

### Deploy Infrastructure

terraform apply

Type:

yes

Terraform will create:

* Security Group
* EC2 Instance
* Nginx Web Server

---

## Access the Website

After deployment Terraform outputs:

instance_public_ip

Open browser:

http://PUBLIC_IP

Expected Output:

Welcome to the Terraform-managed Nginx Server on Ubuntu

---

## Destroy Infrastructure

terraform destroy

Type:

yes

All resources will be removed.

---

## Screenshots

1. Terraform Apply Success
2. EC2 Instance Running
3. Browser showing Nginx Welcome Page
4. Terraform Destroy Success
