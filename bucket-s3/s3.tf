resource "aws_s3_bucket" "this" {
  bucket = "localstack-bucket"

  tags = {
    Name        = "LocalStack-Bucket"
    Environment = "Dev"
  }
}