provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true

  # Endpoint LocalStack
  endpoints {
    s3  = "http://localhost:4566"
  }
}