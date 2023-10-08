terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }

  cloud {
    organization = "ahmadfikrin"
    workspaces {
      name = "terra-house-1"
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

module "home_overthrow_hosting" {
    source = "./modules/terrahome_aws"
    user_uuid = var.teacherseat_user_uuid
    public_path = var.overthrow.public_path
    content_version = var.overthrow.content_version
}

resource "terratowns_home" "home_overthrow" {
  name = "Let's play Overthrow - Dota 2 Arcade / Custom Game"
  description = <<DESCRIPTION
Overthrow is a ten-player custom game with four different map settings. 
It is the first official custom game made by Valve.
DESCRIPTION
  domain_name = module.home_overthrow_hosting.domain_name
  # domain_name = "3fdq3gz.cloudfront.net"
  town = "gamers-grotto"
  content_version = var.overthrow.content_version
}

module "home_friedrice_hosting" {
    source = "./modules/terrahome_aws"
    user_uuid = var.teacherseat_user_uuid
    public_path = var.friedrice.public_path
    content_version = var.friedrice.content_version
}

resource "terratowns_home" "home_friedrice" {
  name = "Making Indonesia Fried Rice"
  description = <<DESCRIPTION
Nasi goreng, which literally translates to "fried rice," is a staple dish in Indonesia. 
There are many variations of nasi goreng, each with slight differences based on region and personal preference. 
Here's a basic recipe for Indonesian Nasi Goreng
DESCRIPTION
  domain_name = module.home_friedrice_hosting.domain_name
  # domain_name = "3fdq3gz.cloudfront.net"
  town = "cooker-cove"
  content_version = var.friedrice.content_version
}