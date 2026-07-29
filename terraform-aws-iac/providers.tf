# ########################################
# # Terraform & Backend Configuration
# ########################################
# terraform {
#   backend "s3" {
#     bucket         = "terraform-remote-state-alfred"
#     key            = "terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-state-lock"
#     # use_lockfile = true // if you want to use S3 for locking. 
#     encrypt        = true
#   }

# ########################################
# # AWS Provider
# ########################################
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.0"
#     }
#   }
# }

