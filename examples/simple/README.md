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
module "test" {
  source  = "mhmdio/cloudwatch-log-group/aws"

  kms_key_id        = null   # kms_key_id - (optional) is a type of string
  name              = "test" # name - is a type of string
  retention_in_days = null   # retention_in_days - (optional) is a type of number
  tags              = {}     # tags - (optional) is a type of map of string
}
```

## Monthly Cost Estimate

```bash
infracost breakdown --sync-usage-file --usage-file infracost-usage.yml --path .
```

```bash
✔ Calculating monthly cost estimate

Project: .

 Name                                       Quantity  Unit  Monthly Cost 
                                                                         
 module.test.aws_cloudwatch_log_group.this                               
 ├─ Data ingested                                  1  GB           $0.63 
 ├─ Archival Storage                               1  GB           $0.03 
 └─ Insights queries data scanned                  1  GB           $0.01 
                                                                         
 PROJECT TOTAL                                                     $0.67 
```
