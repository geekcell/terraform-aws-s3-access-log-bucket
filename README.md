<!-- BEGIN_TF_DOCS -->
[![Geek Cell GmbH](https://raw.githubusercontent.com/geekcell/.github/main/geekcell-github-banner.png)](https://www.geekcell.io/)

### Code Quality
[![License](https://img.shields.io/github/license/geekcell/terraform-aws-s3-access-log-bucket)](https://github.com/geekcell/terraform-aws-s3-access-log-bucket/blob/master/LICENSE)
[![GitHub release (latest tag)](https://img.shields.io/github/v/release/geekcell/terraform-aws-s3-access-log-bucket?logo=github&sort=semver)](https://github.com/geekcell/terraform-aws-s3-access-log-bucket/releases)
[![Release](https://github.com/geekcell/terraform-aws-s3-access-log-bucket/actions/workflows/release.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-s3-access-log-bucket/actions/workflows/release.yaml)
[![Validate](https://github.com/geekcell/terraform-aws-s3-access-log-bucket/actions/workflows/validate.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-s3-access-log-bucket/actions/workflows/validate.yaml)
[![Lint](https://github.com/geekcell/terraform-aws-s3-access-log-bucket/actions/workflows/linter.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-s3-access-log-bucket/actions/workflows/linter.yaml)

<!--
Comment in if Bridgecrew is configured

### Security
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-s3-access-log-bucket/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-s3-access-log-bucket&benchmark=INFRASTRUCTURE+SECURITY)

#### Cloud
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-s3-access-log-bucket/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-s3-access-log-bucket&benchmark=CIS+AWS+V1.2)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-s3-access-log-bucket/cis_aws_13)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-s3-access-log-bucket&benchmark=CIS+AWS+V1.3)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-s3-access-log-bucket/cis_azure)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-s3-access-log-bucket&benchmark=CIS+AZURE+V1.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-s3-access-log-bucket/cis_azure_13)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-s3-access-log-bucket&benchmark=CIS+AZURE+V1.3)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-s3-access-log-bucket/cis_gcp)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-s3-access-log-bucket&benchmark=CIS+GCP+V1.1)

##### Container
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-s3-access-log-bucket/cis_kubernetes_16)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-s3-access-log-bucket&benchmark=CIS+KUBERNETES+V1.6)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-s3-access-log-bucket/cis_eks_11)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-s3-access-log-bucket&benchmark=CIS+EKS+V1.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-s3-access-log-bucket/cis_gke_11)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-s3-access-log-bucket&benchmark=CIS+GKE+V1.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-s3-access-log-bucket/cis_kubernetes)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-s3-access-log-bucket&benchmark=CIS+KUBERNETES+V1.5)

#### Data protection
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-s3-access-log-bucket/soc2)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-s3-access-log-bucket&benchmark=SOC2)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-s3-access-log-bucket/pci)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-s3-access-log-bucket&benchmark=PCI-DSS+V3.2)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-s3-access-log-bucket/pci_dss_v321)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-s3-access-log-bucket&benchmark=PCI-DSS+V3.2.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-s3-access-log-bucket/iso)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-s3-access-log-bucket&benchmark=ISO27001)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-s3-access-log-bucket/nist)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-s3-access-log-bucket&benchmark=NIST-800-53)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-s3-access-log-bucket/hipaa)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-s3-access-log-bucket&benchmark=HIPAA)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-s3-access-log-bucket/fedramp_moderate)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-s3-access-log-bucket&benchmark=FEDRAMP+%28MODERATE%29)

-->

# Terraform AWS S3 Access Log Bucket

This Terraform module provides a preconfigured solution for setting up S3
access logs in your AWS account to store logs from your Application Load
Balancer (ALB) or Cognito User Pool. S3 access logs track requests made to
an S3 bucket or to your ALB or Cognito, allowing you to monitor activity
and analyze trends in your data. With this Terraform module, you can easily
and efficiently set up and manage S3 access logs for your ALB or Cognito,
ensuring that you have a complete picture of the activity in your
environment.

Our team has extensive experience working with S3 and has optimized this
module to provide the best possible experience for users. The module
encapsulates all necessary configurations, making it easy to use and
integrate into your existing AWS environment. Whether you are just getting
started with S3 access logs or looking for a more efficient way to manage
your logs, this Terraform module provides a preconfigured solution for
tracking activity in your ALB or Cognito.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_cloudfront_write_access_logs"></a> [allow\_cloudfront\_write\_access\_logs](#input\_allow\_cloudfront\_write\_access\_logs) | Enable ACL for CloudFront to write access logs. | `bool` | `false` | no |
| <a name="input_allow_elb_write_access_logs"></a> [allow\_elb\_write\_access\_logs](#input\_allow\_elb\_write\_access\_logs) | Attach a policy to allow Elastic Load Balancing to write access logs. | `bool` | `true` | no |
| <a name="input_deny_non_secure_transport"></a> [deny\_non\_secure\_transport](#input\_deny\_non\_secure\_transport) | Whether to attach a policy to the bucket to deny all non-SSL requests. | `bool` | `true` | no |
| <a name="input_expiration"></a> [expiration](#input\_expiration) | The number of days after which to expunge the objects. | `number` | `365` | no |
| <a name="input_mfa"></a> [mfa](#input\_mfa) | MFA device ARN including a TOTP token to enable MFA delete. | `string` | `null` | no |
| <a name="input_mfa_delete"></a> [mfa\_delete](#input\_mfa\_delete) | Specifies whether MFA delete is enabled in the bucket. | `string` | `"Disabled"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the bucket. | `string` | n/a | yes |
| <a name="input_noncurrent_version_expiration"></a> [noncurrent\_version\_expiration](#input\_noncurrent\_version\_expiration) | The number of days after which to delete the noncurrent object. | `number` | `90` | no |
| <a name="input_noncurrent_version_transitions"></a> [noncurrent\_version\_transitions](#input\_noncurrent\_version\_transitions) | Transition to another storage class for noncurrent\_versions. | <pre>list(object({<br>    noncurrent_days = number<br>    storage_class   = string<br>  }))</pre> | <pre>[<br>  {<br>    "noncurrent_days": 30,<br>    "storage_class": "STANDARD_IA"<br>  }<br>]</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to add to the AWS Customer Managed Key. | `map(any)` | `{}` | no |
| <a name="input_transitions"></a> [transitions](#input\_transitions) | Transition to another storage class. | <pre>list(object({<br>    days          = number<br>    storage_class = string<br>  }))</pre> | <pre>[<br>  {<br>    "days": 30,<br>    "storage_class": "STANDARD_IA"<br>  },<br>  {<br>    "days": 60,<br>    "storage_class": "GLACIER"<br>  },<br>  {<br>    "days": 180,<br>    "storage_class": "DEEP_ARCHIVE"<br>  }<br>]</pre> | no |
| <a name="input_versioning"></a> [versioning](#input\_versioning) | Enables versioning of objects in the bucket. | `string` | `"Enabled"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The arn of the bucket. |
| <a name="output_domain_name"></a> [domain\_name](#output\_domain\_name) | The domain name of the bucket. |
| <a name="output_id"></a> [id](#output\_id) | The id of the bucket. |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.40 |

## Resources

- resource.aws_s3_bucket.main (main.tf#21)
- resource.aws_s3_bucket_acl.main (main.tf#113)
- resource.aws_s3_bucket_lifecycle_configuration.main (main.tf#63)
- resource.aws_s3_bucket_metric.main (main.tf#98)
- resource.aws_s3_bucket_ownership_controls.main (main.tf#103)
- resource.aws_s3_bucket_policy.main (main.tf#37)
- resource.aws_s3_bucket_public_access_block.main (main.tf#43)
- resource.aws_s3_bucket_server_side_encryption_configuration.main (main.tf#52)
- resource.aws_s3_bucket_versioning.main (main.tf#27)
- data source.aws_canonical_user_id.main (data.tf#1)
- data source.aws_elb_service_account.main (data.tf#2)
- data source.aws_iam_policy_document.main (data.tf#4)

# Examples
### ALB Logs
```hcl
module "alb_logs" {
  source = "../../"

  name = "my-alb-access-logs-s3"
}
```

### Cloudfront Logs
```hcl
module "cloudfront_logs" {
  source = "../../"

  name = "my-cloudfront-access-logs-s3"

  allow_cloudfront_write_access_logs = true
  allow_elb_write_access_logs        = false
}
```
<!-- END_TF_DOCS -->
