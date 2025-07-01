module aws_instance {
  source = "./modules/ec2_instance"
}

module "aws_s3_bucket" {
  source = "./modules/s3_bucket"
  bucket_name = "my-s3-bucket"
  tags = {
    Environment = "Demo"
    Name        = "PR3 S3 Bucket"
    managed_by  = "Terraform"
    author      = "Mahesh"
  }
}

module "aws_rds" {
  source = "./modules/rds"
}