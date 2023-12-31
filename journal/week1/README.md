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

# 1.3.0 Create Terrahouse Module
https://developer.hashicorp.com/terraform/language/modules/sources
## Terraform Module Structure
Place modules in a `modules` directory

## Passing Input Variables

variables moved to `./modules/terrahouse_aws`

```tf
module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
}
```

## Fix using Terraform refresh

```sh
terraform apply -refresh-only --auto-approve
```
# 1.4.0

## File MD5
https://developer.hashicorp.com/terraform/language/functions/filemd5

## Path
https://developer.hashicorp.com/terraform/language/expressions/references#filesystem-and-workspace-info

# 1.5.0

## CDN
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution

## Cloudfront Origin Access Control
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_access_control

## Bucket Policy
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy

## AWS Cloudfront OAC
https://aws.amazon.com/blogs/networking-and-content-delivery/amazon-cloudfront-introduces-origin-access-control-oac/

## Data Sources
https://developer.hashicorp.com/terraform/language/data-sources

## Data Sources Caller Identity
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity

## Locals
https://developer.hashicorp.com/terraform/language/values/locals

## Create Invalidation

# 1.6.0

## Manage resource lifecycle
https://developer.hashicorp.com/terraform/tutorials/state/resource-lifecycle

## Lifecycle Meta-Argument
https://developer.hashicorp.com/terraform/language/meta-arguments/lifecycle

## Data Source
https://developer.hashicorp.com/terraform/language/resources/terraform-data

# 1.7.0

## terraform_data
https://developer.hashicorp.com/terraform/language/expressions/strings#heredoc-strings

## Provisioners
https://developer.hashicorp.com/terraform/language/resources/provisioners/syntax

## Local - exec
https://developer.hashicorp.com/terraform/language/resources/provisioners/local-exec

## Remote - exec
https://developer.hashicorp.com/terraform/language/resources/provisioners/remote-exec

# 1.8.0

## http-server
https://www.npmjs.com/package/http-server

##
```sh
tf console
```
```sh
> fileset("${path.root}/public/assets","*")
toset([
  "dt.jpg",
  "ot.jpg",
])
>  
```
or
```sh
> fileset("${path.root}/public/assets","*.{jpg,png,gif}")
toset([
  "dt.jpg",
  "ot.jpg",
])
>  
```

## list tf
https://developer.hashicorp.com/terraform/language/functions/list

## for each tf
https://developer.hashicorp.com/terraform/language/meta-arguments/for_each