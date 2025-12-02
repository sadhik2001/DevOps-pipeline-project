
# Terraform (AWS example)
Change variables in variables.tf or pass a terraform.tfvars file.
Ensure you have AWS credentials in environment variables or AWS CLI configured.

Usage:
```
terraform init
terraform plan -var='region=ap-south-1'
terraform apply -var='region=ap-south-1'
```
