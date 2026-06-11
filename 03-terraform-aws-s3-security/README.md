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

