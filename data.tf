data "aws_elb_service_account" "main" {}

data "aws_iam_policy_document" "main" {

  statement {
    sid = "AllowElasticLoadBalancerToWriteAccessLogs"

    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = [data.aws_elb_service_account.main.arn]
    }

    actions = [
      "s3:PutObject"
    ]

    resources = [
      "${aws_s3_bucket.main.arn}/*"
    ]
  }
}
