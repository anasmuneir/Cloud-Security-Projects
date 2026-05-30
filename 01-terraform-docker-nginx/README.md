# Project 01 - Infrastructure as Code Foundations with Terraform and Docker

## Executive Summary

This project demonstrates foundational Infrastructure as Code (IaC) concepts using Terraform and Docker. The objective was to deploy an Nginx web server while learning Terraform providers, resources, infrastructure lifecycle management, and deployment validation.

## Architecture

```
Terraform
    ↓
Docker Provider
    ↓
Docker Engine
    ↓
Nginx Container
    ↓
localhost:8080
    ↓
Web Browser

```
## What I Implemented

* Configured the Docker provider in Terraform.
* Pulled the official Nginx image from Docker Hub.
* Created a Terraform-managed Docker container.
* Configured port mapping (8080 → 80).
* Deployed infrastructure using Terraform.
* Validated the deployment through Docker and browser testing.

## Validation & Evidence

### Infrastructure Planning

Terraform identified the required resources before deployment.



**Result:** Terraform planned to create the Nginx image and container.

### Container Verification

The deployment was verified using Docker.

<img width="1447" height="458" alt="image" src="https://github.com/user-attachments/assets/d9daa382-83f5-4f2f-bc33-a5b47b8a66e2" />


**Result:** Container successfully running with port mapping configured.

### Application Verification

The deployed service was tested through a web browser.

<img width="1637" height="622" alt="image" src="https://github.com/user-attachments/assets/a46ff8f9-1509-4389-b6f6-3b839a59d04a" />

**Result:** Nginx welcome page successfully displayed at http://localhost:8080.




