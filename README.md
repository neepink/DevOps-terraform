
# Terraform Modularized Infrastructure Setup

This repository contains a modularized Terraform configuration for setting up an AWS infrastructure. The infrastructure includes networking components, compute instances, security groups, storage, and a load balancer.

## Modules Overview:

1. **Network Module**: Sets up VPC, subnets, internet gateway, and route tables.
2. **Compute Module**: Launches EC2 instances.
3. **Security Module**: Defines security groups with specific ingress and egress rules.
4. **Storage Module**: Creates an S3 bucket.
5. **Load Balancer Module**: Sets up an Application Load Balancer with target groups and listeners.

## Prerequisites:

- Terraform installed
- AWS CLI configured with appropriate credentials

## Usage:

1. **Initialization**:
   Navigate to the `terraform` directory and run:
   ```
   terraform init
   ```

2. **Plan**:
   Review the changes that Terraform will perform:
   ```
   terraform plan
   ```

3. **Apply**:
   Apply the desired changes:
   ```
   terraform apply
   ```

4. **Destroy** (optional):
   If you want to tear down the infrastructure:
   ```
   terraform destroy
   ```

## Note:

Ensure you modify the variables as needed, either by updating the `variables.tf` files within modules or by providing values during the `terraform apply` step.

## Contributing:

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

