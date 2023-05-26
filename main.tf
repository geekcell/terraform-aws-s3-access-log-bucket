/**
 * # Terraform AWS S3 Access Log Bucket
 *
 * This Terraform module provides a preconfigured solution for setting up S3
 * access logs in your AWS account to store logs from your Application Load
 * Balancer (ALB) or Cognito User Pool. S3 access logs track requests made to
 * an S3 bucket or to your ALB or Cognito, allowing you to monitor activity
 * and analyze trends in your data. With this Terraform module, you can easily
 * and efficiently set up and manage S3 access logs for your ALB or Cognito,
 * ensuring that you have a complete picture of the activity in your
 * environment.
 *
 * Our team has extensive experience working with S3 and has optimized this
 * module to provide the best possible experience for users. The module
 * encapsulates all necessary configurations, making it easy to use and
 * integrate into your existing AWS environment. Whether you are just getting
 * started with S3 access logs or looking for a more efficient way to manage
 * your logs, this Terraform module provides a preconfigured solution for
 * tracking activity in your ALB or Cognito.
 */
resource "aws_s3_bucket" "main" {
  bucket = var.name

  tags = var.tags
}

resource "aws_s3_bucket_versioning" "main" {
  bucket = aws_s3_bucket.main.id
  mfa    = var.mfa

  versioning_configuration {
    status     = var.versioning
    mfa_delete = var.mfa_delete
  }
}

resource "aws_s3_bucket_policy" "main" {
  bucket = aws_s3_bucket.main.id

  policy = data.aws_iam_policy_document.main.json
}

resource "aws_s3_bucket_public_access_block" "main" {
  bucket = aws_s3_bucket.main.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "main" {
  bucket = aws_s3_bucket.main.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "main" {
  bucket = aws_s3_bucket.main.bucket

  rule {
    id     = "transitions"
    status = "Enabled"

    dynamic "transition" {
      for_each = coalesce(var.transitions, [])

      content {
        days          = transition.value.days
        storage_class = transition.value.storage_class
      }
    }

    dynamic "noncurrent_version_transition" {
      for_each = coalesce(var.noncurrent_version_transitions, [])

      content {
        noncurrent_days = noncurrent_version_transition.value.noncurrent_days
        storage_class   = noncurrent_version_transition.value.storage_class
      }
    }

    expiration {
      days = var.expiration
    }

    noncurrent_version_expiration {
      noncurrent_days = var.noncurrent_version_expiration
    }
  }
}

resource "aws_s3_bucket_metric" "main" {
  bucket = aws_s3_bucket.main.bucket
  name   = "EntireBucket"
}

resource "aws_s3_bucket_ownership_controls" "main" {
  count = var.allow_cloudfront_write_access_logs ? 1 : 0

  bucket = aws_s3_bucket.main.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "main" {
  count = var.allow_cloudfront_write_access_logs ? 1 : 0

  bucket = aws_s3_bucket.main.bucket

  access_control_policy {
    owner {
      id = data.aws_canonical_user_id.main.id
    }

    grant {
      grantee {
        id   = data.aws_canonical_user_id.main.id
        type = "CanonicalUser"
      }
      permission = "FULL_CONTROL"
    }

    grant {
      # https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html#AccessLogsBucketAndFileOwnership
      grantee {
        id   = "c4c1ede66af53448b93c283ce9448c4ba468c9432aa01d700d3878632f77d2d0"
        type = "CanonicalUser"
      }
      permission = "FULL_CONTROL"
    }
  }

  depends_on = [aws_s3_bucket_ownership_controls.main]
}
