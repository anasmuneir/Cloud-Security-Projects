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


