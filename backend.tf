
terraform {
  backend "s3" {
    bucket = "janna-2020"
    region = "us-east-1"
    key    = "infra.state"
  }
}