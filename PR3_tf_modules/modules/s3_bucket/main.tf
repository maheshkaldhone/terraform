resource "aws_s3_bucket" "denuio128550949" {
  bucket = "denuio128550949"
  tags   = {
    Environment = "Demo"
    Name        = "PR3 S3 Bucket"
    managed_by  = "Terraform"
    author      = "Mahesh"
  }
}