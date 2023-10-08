terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
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

provider "terratowns" {
  endpoint = var.terratowns_endpoint
  user_uuid = var.teacherseat_user_uuid
  token = var.tttoken
}

module "terrahouse_aws" {
    source = "./modules/terrahouse_aws"
    user_uuid = var.teacherseat_user_uuid
    index_html_filepath = var.index_html_filepath
    error_html_filepath = var.error_html_filepath
    content_version = var.content_version
    assets_path = var.assets_path
}

resource "terratowns_home" "home" {
  name = "Let's play Overthrow - Dota 2 Arcade / Custom Game"
  description = <<DESCRIPTION
Overthrow is a ten-player custom game with four different map settings. 
It is the first official custom game made by Valve.
DESCRIPTION
  domain_name = module.terrahouse_aws.cloudfront_url
  # domain_name = "3fdq3gz.cloudfront.net"
  town = "missingo"
  content_version = 1
}