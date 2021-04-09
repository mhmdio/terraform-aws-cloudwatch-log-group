# terraform-aws-cloudwatch-log-group

![Checkov](https://img.shields.io/github/workflow/status/mhmdio/terraform-aws-cloudwatch-log-group/Checkov?label=Checkov)

Creates simple single `aws_cloudwatch_log_group`

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name                                                                      | Version   |
| ------------------------------------------------------------------------- | --------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws)                   | >= 3.35.0 |

## Providers

| Name                                              | Version   |
| ------------------------------------------------- | --------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.35.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                              | Type     |
| --------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_cloudwatch_log_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |

## Inputs

| Name                                                                                      | Description                            | Type          | Default | Required |
| ----------------------------------------------------------------------------------------- | -------------------------------------- | ------------- | ------- | :------: |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id)                      | CloudWatch Group Log KMS key id        | `any`         | `null`  |    no    |
| <a name="input_name"></a> [name](#input\_name)                                            | CloudWatch Group Log Name              | `any`         | n/a     |   yes    |
| <a name="input_retention_in_days"></a> [retention\_in\_days](#input\_retention\_in\_days) | CloudWatch Group Log retention in days | `number`      | `7`     |    no    |
| <a name="input_tags"></a> [tags](#input\_tags)                                            | CloudWatch Group Log tags              | `map(string)` | `{}`    |    no    |

## Outputs

| Name                                             | Description                                              |
| ------------------------------------------------ | -------------------------------------------------------- |
| <a name="output_arn"></a> [arn](#output\_arn)    | The Amazon Resource Name (ARN) specifying the log group. |
| <a name="output_name"></a> [name](#output\_name) | The name specifying the log group.                       |
<!-- END_TF_DOCS -->