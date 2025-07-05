module "aws_instance" {
  source = "./modules/ec2_instance"
  env    = var.env
}