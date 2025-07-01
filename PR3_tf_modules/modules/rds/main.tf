resource "aws_db_instance" "PR3_db_instance" {
  allocated_storage    = 10
  db_name             = var.db_name
  storage_type        = "gp2"
  engine             = "mysql"
  engine_version     = "8.0.35"
  instance_class     = var.db_instance_class
  username           = var.db_username
  password           = var.db_passwd
  skip_final_snapshot = true

tags = var.tags
}


