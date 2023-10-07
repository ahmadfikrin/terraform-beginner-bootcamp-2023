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
  endpoint = "http://localhost:4567/api" # 2.4.0
  user_uuid="e328f4ab-b99f-421c-84c9-4ccea042c7d1" 
  token="9b49b3fb-b8e9-483c-b703-97ba88eef8e0"
}

# module "terrahouse_aws" {
#     source = "./modules/terrahouse_aws"
#     user_uuid = var.user_uuid
#     bucket_name = var.bucket_name
#     index_html_filepath = var.index_html_filepath
#     error_html_filepath = var.error_html_filepath
#     content_version = var.content_version
#     assets_path = var.assets_path
# }

resource "terratowns_home" "home" {
  name = "What is Overthrow - Dota 2 Arcade Games"
  description = <<DESCRIPTION
Overthrow is a ten-player custom game with four different map settings. 
It was released with the Dota 2 Reborn beta, and is the first official custom game made by Valve.
DESCRIPTION
  #domain_name = module.terrahouse_aws.cloudfront_url
  domain_name = "3fdq3gz.cloudfront.net"
  town = "gamers-grotto"
  content_version = 1
}