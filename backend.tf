
terraform {
  backend "s3" {
    bucket = "janna-2019"
    region = "us-east-2"
    key    = "infra.state"
  }
}