
terraform {
  backend "s3" {
    bucket = "janna-2019"
    region = "us-east-1"
    key    = "infra.state"
  }
}