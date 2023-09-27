terraform {
# resource "random_string" "bucket_name" {
#   lower = true
#   upper = false
#   length  = 32
#   special = false
# }

# resource "aws_s3_bucket" "website_bucket" {
#   # bucket = random_string.bucket_name.result
#   bucket = var.bucket_name

#   tags = {
#     UserUuid = var.user_uuid # using terraform cloud workspace variable - type environment variable
#   }
# }
}

module "terrahouse_aws" {
    source = "./modules/terrahouse_aws"
    user_uuid = var.user_uuid
    bucket_name = var.bucket_name
    index_html_filepath = var.index_html_filepath
    error_html_filepath = var.error_html_filepath
}
