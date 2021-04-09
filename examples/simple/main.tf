module "test" {
  source = "../../"
  name   = "test"
  tags = {
    test = "test"
  }
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
