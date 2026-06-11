# AWS S3 Security Foundations with Terraform

## Executive Summary

This project demonstrates the implementation of secure Amazon S3 storage using Terraform. The objective is to apply Infrastructure as Code (IaC) principles while enforcing security controls to protect cloud-stored data.

## Security Objective

Provision an Amazon S3 bucket through Terraform with encryption, versioning, and public access restrictions.

## Technologies Used

- Terraform
- AWS S3
- AWS CLI
- Git
- GitHub

## Architecture

```text
Terraform
    ↓
AWS Provider
    ↓
S3 Bucket
    ↓
Encryption
    ↓ 
Versioning
    ↓ 
Public Access Block

```

### Terraform Initialization

<img width="1047" height="506" alt="image" src="https://github.com/user-attachments/assets/2d6b08cf-f2d3-458a-b56a-370c286d23c9" />

**Result:** Terraform initialized successfully and downloaded the AWS provider required for S3 resource management.

### Terraform Plan

<img width="900" height="882" alt="image" src="https://github.com/user-attachments/assets/49ecf4e4-f4bb-448b-8ee1-506d9ae075a9" />

**Result:** Terraform generated an execution plan to create an Amazon S3 bucket.

### Terraform Apply

<img width="927" height="886" alt="image" src="https://github.com/user-attachments/assets/9dfcc846-5e0b-4553-84f1-5c208c31de98" />
<img width="1366" height="396" alt="image" src="https://github.com/user-attachments/assets/f7c739a1-8fa2-41e9-b9b2-061005c595d2" />

**Result:** Terraform successfully provisioned an Amazon S3 bucket through Infrastructure as Code.

### S3 Versioning Validation

<img width="1316" height="367" alt="image" src="https://github.com/user-attachments/assets/a09869a2-3fce-4a09-8a6e-2e47e5712909" />

**Result:** S3 bucket versioning was successfully verified in AWS, enabling recovery of previous object versions and providing protection against accidental deletion or unintended modifications.

### S3 Encryption Validation

<img width="1327" height="387" alt="image" src="https://github.com/user-attachments/assets/3deebb10-4bd9-4fe6-b9bf-cfb7a9bdd695" />

**Result:** Server-side encryption was successfully verified on the S3 bucket using Amazon S3 managed keys (SSE-S3) with AES-256 encryption, ensuring data is encrypted at rest.

### S3 Public Access Block Validation

<img width="1312" height="310" alt="image" src="https://github.com/user-attachments/assets/98e661db-48f5-412a-92b3-f02b30b3b372" />
<img width="1366" height="695" alt="image" src="https://github.com/user-attachments/assets/7aa8a2e2-ef79-42aa-9196-6473f4ae82bc" />

**Result:** Public Access Block settings were successfully verified in AWS. All public access controls are enabled, preventing accidental public exposure of bucket contents and strengthening data confidentiality through defense-in-depth.

### Infrastructure Cleanup

<img width="1173" height="1147" alt="image" src="https://github.com/user-attachments/assets/6174b065-7ba1-46a9-a6b3-f63b0c6eddf1" />

**Result:** Terraform successfully destroyed all AWS resources created during this project, demonstrating proper infrastructure lifecycle management and preventing unnecessary cloud resource consumption.



