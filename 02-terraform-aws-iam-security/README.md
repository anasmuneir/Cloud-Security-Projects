# AWS IAM Security Foundations with Terraform

## Executive Summary

This project demonstrates the implementation of AWS Identity and Access Management (IAM) resources using Terraform. The objective is to apply Infrastructure as Code (IaC) principles while designing a secure access model based on the Principle of Least Privilege.

## Security Objective

Provision IAM resources through Terraform and manage permissions using group-based access control rather than assigning permissions directly to users.

## Technologies Used

* Terraform
* AWS IAM
* Git
* GitHub

## Architecture

Terraform → AWS Provider → IAM User → IAM Group → IAM Policy

## Key Concepts

* Identity and Access Management (IAM)
* Authentication
* Authorization
* Principle of Least Privilege
* Infrastructure as Code (IaC)
* Terraform State Management

## Validation & Evidence
### Project Initialization

<img width="1101" height="253" alt="image" src="https://github.com/user-attachments/assets/7f9b3dee-9283-487a-aed7-65b8d514edfa" />


Result: Project structure initialized successfully.

### AWS CLI Installation

<img width="1162" height="120" alt="image" src="https://github.com/user-attachments/assets/c8e5c5e6-d75b-4ad3-9aaf-db862bdd9832" />

Result: AWS CLI v2 successfully installed and verified.

### IAM User Creation

<img width="1397" height="581" alt="image" src="https://github.com/user-attachments/assets/b99bc8f7-ce07-4e22-b446-1f9330719b83" />


Result: Dedicated IAM user configured for Terraform authentication with console access disabled.

### Access Control Design

<img width="1362" height="421" alt="image" src="https://github.com/user-attachments/assets/a5efb329-7837-497f-a515-0afea925cb11" />

Result: Group-based access control implemented by assigning permissions through an IAM group rather than directly to the user.

**Security Note**: AdministratorAccess was used in this lab. Production environments should follow the Principle of Least Privilege.

### AWS Authentication Verification
<img width="1327" height="163" alt="image" src="https://github.com/user-attachments/assets/065385bd-69ab-49be-9d3e-bad94da3430e" />
Result: AWS CLI successfully authenticated using IAM access keys.

### Terraform Initialization

<img width="1237" height="250" alt="image" src="https://github.com/user-attachments/assets/f6459a42-359b-4d86-9a3e-a08c74b48e9c" />
Result: Terraform initialized successfully and the AWS provider was downloaded and configured.

### Terraform Plan

<img width="1235" height="380" alt="image" src="https://github.com/user-attachments/assets/583be098-e3f4-496d-ace7-768da72b755d" />
Result: Terraform identified one IAM group resource to be created and generated an execution plan prior to deployment.

### Terraform Apply

<img width="1237" height="653" alt="image" src="https://github.com/user-attachments/assets/2f4d40c1-7f9b-4c15-b699-6e67f621de23" />

<img width="1372" height="345" alt="image" src="https://github.com/user-attachments/assets/ce2d02db-e915-48da-9060-6c30e3c5614b" />
Result: Terraform successfully provisioned an IAM group in AWS using Infrastructure as Code.

### IAM Group Membership Validation

<img width="1373" height="681" alt="image" src="https://github.com/user-attachments/assets/4bc7272d-0afd-4d34-9d0b-6216f9374cd1" />
Result: Terraform successfully assigned the `security_analyst` IAM user to the `security_team` IAM group.






