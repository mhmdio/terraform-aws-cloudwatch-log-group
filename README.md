# terraform-aws-cloudwatch-log-group

Creates simple single [aws_cloudwatch_log_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group)

## Requirements

| Name      | Version   |
| --------- | --------- |
| terraform | >= 0.14.0 |

## Providers

| Name | Version |
| ---- | ------- |
| aws  | n/a     |

## Inputs

| Name                | Description                            | Type          | Default | Required |
| ------------------- | -------------------------------------- | ------------- | ------- | :------: |
| kms\_key\_id        | CloudWatch Group Log KMS key id        | `any`         | `null`  |    no    |
| name                | CloudWatch Group Log Name              | `any`         | n/a     |   yes    |
| retention\_in\_days | CloudWatch Group Log retention in days | `number`      | `7`     |    no    |
| tags                | CloudWatch Group Log tags              | `map(string)` | `{}`    |    no    |

## Outputs

| Name | Description                                              |
| ---- | -------------------------------------------------------- |
| arn  | The Amazon Resource Name (ARN) specifying the log group. |
| name | The name specifying the log group.                       |