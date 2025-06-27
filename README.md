# terraform-ec2-infrastructure

Secure and Scalable AWS Infrastructure Provisioning with Terraform

## Overview

This project provides a Terraform configuration and scripts to provision secure, scalable, and production-ready AWS EC2 infrastructure. It is designed to help automate cloud resource management, enforce best practices, and enable rapid infrastructure deployment using Infrastructure as Code (IaC).

## Features

- Automated provisioning of EC2 instances
- Configurable VPC, subnets, and security groups
- Parameterized deployment for scaling and flexibility
- Follows AWS security best practices

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) v1.0 or higher
- An AWS account with sufficient permissions
- AWS CLI configured locally (`aws configure`)

## Getting Started

1. **Clone the repository**
   ```sh
   git clone https://github.com/pridhvi15/terraform-ec2-infrastructure.git
   cd terraform-ec2-infrastructure
   ```

2. **Initialize Terraform**
   ```sh
   terraform init
   ```

3. **Customize Variables**  
   Edit `terraform.tfvars` or pass variables via CLI to suit your AWS environment and requirements.

4. **Plan and Apply**
   ```sh
   terraform plan
   terraform apply
   ```


## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for more information.

## Acknowledgments

- [Terraform](https://www.terraform.io/)
- [AWS](https://aws.amazon.com/)
