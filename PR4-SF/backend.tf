terraform {
  backend "s3" {
    bucket = "mahesh-terraform-state-files"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}