provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key   # Use a variable for access key
  secret_key = var.aws_secret_key   # Use a variable for secret key
}
