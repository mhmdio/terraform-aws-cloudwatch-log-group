# Usage

## Terraform commands

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy
```

## Example

```hcl
module "aws_cloudwatch_log_group" {
  source = "../../"

kms_key_id        = null   # kms_key_id - (optional) is a type of string
name              = "test" # name - is a type of string
name_prefix       = null   # name_prefix - (optional) is a type of string
retention_in_days = null   # retention_in_days - (optional) is a type of number
tags              = {}     # tags - (optional) is a type of map of string

}
```
