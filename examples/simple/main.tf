module "test" {
  source = "../../"

  kms_key_id        = null   # kms_key_id - (optional) is a type of string
  name              = "test" # name - is a type of string
  retention_in_days = null   # retention_in_days - (optional) is a type of number
  tags              = {}     # tags - (optional) is a type of map of string

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
