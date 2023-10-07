# terraform {
#   # backend "remote" {
#   #   hostname = "app.terraform.io"
#   #   organization = "ahmadfikrin"

#   #   workspaces {
#   #     name = "terra-house-1"
#   #   }
#   # }
#   cloud {
#     organization = "ahmadfikrin"
#     workspaces {
#       name = "terra-house-1"
#     }
#   }
#   required_providers {
#     random = {
#       source = "hashicorp/random"
#       version = "3.5.1"
#     }
#     aws = {
#       source = "hashicorp/aws"
#       version = "5.17.0"
#     }
#   }
# }

# provider "aws" {
#   # Configuration options
# }

# provider "random" {
#   # Configuration options
# }

terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
}

provider "terratowns" {
  endpoint = "http://localhost:4567/api"
  user_uuid="e328f4ab-b99f-421c-84c9-4ccea042c7d1" 
  token="9b49b3fb-b8e9-483c-b703-97ba88eef8e0"
}

resource "terratowns_home" "home" {
  name = "How to play Arcanum in 2023!"
  description = <<DESCRIPTION
Arcanum is a game from 2001 that shipped with alot of bugs.
Modders have removed all the originals making this game really fun
to play (despite that old look graphics). This is my guide that will
show you how to play arcanum without spoiling the plot.
DESCRIPTION
  #domain_name = module.terrahouse_aws.cloudfront_url
  domain_name = "3fdq3gz.cloudfront.net"
  town = "gamers-grotto"
  content_version = 1
}