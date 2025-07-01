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
output "instance_id" {
  value = module.aws_instance.instance_id
}
output "instance_public_ip" {
  value = module.aws_instance.instance_public_ip
}
output "instance_private_ip" {
  value = module.aws_instance.instance_private_ip
}   
output "instance_arn"{
  value = module.aws_instance.instance_arn
}
output "instance_tags" {
  value = module.aws_instance.instance_tags
}
