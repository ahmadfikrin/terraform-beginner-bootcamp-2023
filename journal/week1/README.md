# Week 1
# 1
## Journal TOC and Major Version 1
- Create ToC
- Create Journal Folder

## Restructure Root Module
https://developer.hashicorp.com/terraform/language/modules/develop/structure

```
PROJECT_ROOT
├── main.tf                
├── variables.tf            
├── terraform.tfvars        
├── providers.tf            
├── outputs.tf              
└── README.md               
```
### Input Variables
https://developer.hashicorp.com/terraform/language/values/variables

- Set env from gitpod to TF Cloud - Workspace Variable : 
    - AWS_ACCESS_KEY_ID (environment variable type and sensitive)
    - AWS_SECRET_ACCESS_KEY (environment variable type and sensitive)
    - AWS_DEFAULT_REGION (environment variable type)
    - user_uuid (terraform variable type)

# 2

# 1.2.0 Import and configuration drift
## To recover the deleted cloud resource
[Terraform Import](https://developer.hashicorp.com/terraform/cli/import)
[AWS S3 Bucket Import](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#import)

```sh
terraform import random_string.bucket_name existing-bucket-name
```
- comment random bucket name
- update outputs.tf
- update terraform.tfvars