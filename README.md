# 🚀 Infrastructure as Code (IaC) with Terraform for AWS Environments


## Services Used 🛠
* **Terraform** - Infrastructure as Code tool  
* **Amazon S3** - Store Terraform remote state  
* **Amazon DynamoDB** - State locking and consistency  
* **Amazon VPC** - Networking foundation  
* **Amazon EC2** - Compute resources  
* **Security Groups** - Network access control  
* **AWS IAM** - Permissions for Terraform operations  

---

## 📸 Project Overview
### Scenario
A growing technology company manages its AWS infrastructure manually through the AWS Console. As the environment grows, this approach starts causing serious problems:

Infrastructure changes are undocumented
Environments drift over time
Reproducing setups across accounts is difficult
Rollbacks are risky and error-prone
Collaboration between engineers is inconsistent
The engineering team wants a reliable, repeatable, and version-controlled way to manage AWS infrastructure.

To solve this, they decide to adopt Infrastructure as Code (IaC) using Terraform.

---
## Role as a DevOps Engineer
My role is to design and build AWS infrastructure entirely using Terraform, following real-world DevOps best practices.  

I am responsible for:  
* Writing Terraform code to provision AWS resources  
* Managing infrastructure state safely using a remote backend  
* Building infrastructure incrementally instead of all at once  
* Refactoring Terraform code into reusable modules  
*  Understanding how Terraform tracks, plans, and applies changes  
<br>
This mirrors how DevOps engineers manage infrastructure in production teams.

---
## Solution
To use Terraform to provision and manage AWS infrastructure from scratch.

The solution includes:

* A Terraform project structured for real environments  
* A remote backend using Amazon S3 and DynamoDB for state and locking  
* Core AWS infrastructure built step by step  
* Refactored Terraform code using modules for reusability  
* Safe change management using terraform plan and terraform apply
<br>
Instead of clicking in the AWS Console, Terraform becomes the single source of truth for infrastructure.  
---

## ✨ Architectural Diagram

![Architectural Diagram](https://github.com/Botskiss/terraform-aws-iac/blob/main/twl-aws-iac-diagram.png)


---
## Final Result
At the end of the project, I have:  
* Built a complete AWS environment without using the AWS Console
* Stored Terraform state securely using S3 and DynamoDB
* Organized infrastructure using reusable modules
* Deployed a working web application
* Cleaned up everything safely using Terraform
  <br>
  <br>
This project reflects how real DevOps teams build, manage, and maintain cloud infrastructure at scale.

<br> 
<br>

![Final Result](https://github.com/Botskiss/terraform-aws-iac/blob/main/terraform-aws-iac-final.png)

