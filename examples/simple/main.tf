module "test" {
  source = "../../"

  kms_key_id        = null   # kms_key_id - (optional) is a type of string
  name              = "test" # name - is a type of string
  retention_in_days = null   # retention_in_days - (optional) is a type of number
  tags              = {}     # tags - (optional) is a type of map of string

}

locals {
  groups = {
    group1 = {
      name              = "group1"
      retention_in_days = 90
      kms_key_id        = null
      tags = {
        name      = "group1"
        terraform = "yes"
      }
    },
    group2 = {
      name              = "group2"
      retention_in_days = 30
      kms_key_id        = null
      tags              = {}
    }
  }

}
module "groups" {
  source   = "../../"
  for_each = local.groups

  name              = each.value.name
  retention_in_days = each.value.retention_in_days
  kms_key_id        = each.value.kms_key_id
  tags              = each.value.tags


}
provider "aws" {
  region = "eu-central-1"

  # Make it faster by skipping the following
  skip_get_ec2_platforms      = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}
