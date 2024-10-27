provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id = true
  skip_metadata_api_check    = true

  shared_config_files      = ["/home/vinicius/.aws/config"]
  shared_credentials_files = ["/home/vinicius/.aws/credentials"]
  profile                  = "localstack"

  # Endpoint LocalStack
  endpoints {
    s3  = "http://s3.localhost.localstack.cloud:4566"
  }
}