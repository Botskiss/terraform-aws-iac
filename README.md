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

## ✨ Architectural Diagram

![Architectural Diagram](https://github.com/Botskiss/terraform-aws-iac/blob/main/Architectural_Diagram.png)

---
## Our Solution
To will deploy a containerized backend service on Amazon EKS and let Kubernetes manage it.  
<br>
The solution includes:  
* A Dockerized application stored in Amazon ECR
* An Amazon EKS cluster with EC2 worker nodes
* A Kubernetes Deployment to run and manage Pods
* A Kubernetes Service (NodePort) to expose the application
* Health endpoints to verify application status
<br> 
The focus of this project is on Kubernetes fundamentals, not production optimizations.


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

