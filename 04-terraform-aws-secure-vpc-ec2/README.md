# AWS Secure VPC and EC2 Deployment with Terraform

## Objective

Design and deploy a secure AWS network architecture using Terraform by provisioning a custom VPC, public and private subnets, route tables, internet gateway, security groups, and an EC2 instance while applying cloud security best practices.

## Technologies Used

* AWS VPC
* Amazon EC2
* Terraform
* Git
* GitHub

## Architecture

```text
                                        Internet
                                            │
                                            ▼
                                     Internet Gateway
                                            │
                                            ▼
                                   AWS VPC (10.0.0.0/16)
                                            │
                  ┌─────────────────────────┴─────────────────────────┐
                  │                                                   │
                  ▼                                                   ▼

        Public Subnet (10.0.1.0/24)                        Private Subnet (10.0.2.0/24)
                  │                                                   │
                  │                                                   │
                  ▼                                                   ▼

          Security Group                                       Internal Resources
       (Least Privilege Access)                           (Database / Backend Services)
                  │
                  ▼

             EC2 Instance
          (Amazon Linux 2023)
```


## Security Controls

The following security controls will be implemented throughout this project:

* Custom VPC for network isolation
* Public and private subnet segmentation
* Internet Gateway for controlled internet connectivity
* Security Group enforcing least privilege access
* Infrastructure as Code (Terraform)
* Resource tagging for governance and asset management

## Terraform Deployment

<img width="1656" height="275" alt="image" src="https://github.com/user-attachments/assets/89ecdb8d-447a-43d3-b77a-78ade705b679" />


**Result:** Terraform successfully provisioned the VPC and subnet architecture. Three resources were created with no errors, demonstrating Infrastructure as Code (IaC) deployment and automated resource provisioning.

