variable "teacherseat_user_uuid" {
  type = string
}

# variable "index_html_filepath" {
#   type = string
# }

# variable "error_html_filepath" {
#   type = string
# }

# variable "content_version" {
#   type = number
# }

# variable "assets_path" {
#   type = string
# }

variable "terratowns_endpoint" {
  type = string
}

variable "tttoken" {
  type = string
}

variable "friedrice" {
  type = object({
    public_path = string
    content_version = number
  })
}

variable "overthrow" {
  type = object({
    public_path = string
    content_version = number
  })
}