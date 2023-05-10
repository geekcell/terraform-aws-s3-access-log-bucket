module "cloudfront_logs" {
  source = "../../"

  name = "my-cloudfront-access-logs-s3"

  allow_cloudfront_write_access_logs = true
  allow_elb_write_access_logs        = false
}
