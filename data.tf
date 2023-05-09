data "aws_elb_service_account" "main" {}

data "aws_iam_policy_document" "main" {

  dynamic "statement" {
    for_each = var.deny_non_secure_transport ? [1] : []

    content {
      actions = ["s3:*"]
      effect  = "Deny"
      sid     = "DenyNonSecureTransport"

      resources = [
        aws_s3_bucket.main.arn,
        "${aws_s3_bucket.main.arn}/*"
      ]

      principals {
        type        = "*"
        identifiers = ["*"]
      }

      condition {
        test     = "Bool"
        variable = "aws:SecureTransport"
        values   = ["false"]
      }
    }
  }

  statement {
    actions = ["s3:PutObject"]
    effect  = "Allow"
    sid     = "AllowElasticLoadBalancerToWriteAccessLogs"


    resources = [
      "${aws_s3_bucket.main.arn}/*"
    ]

    principals {
      type        = "AWS"
      identifiers = [data.aws_elb_service_account.main.arn]
    }
  }
}
