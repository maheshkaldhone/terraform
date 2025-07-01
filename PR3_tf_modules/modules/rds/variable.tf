variable "db_instance_class" {
  description = "The instance class for the RDS instance."
  type        = string
  default     = "db.t3.micro"
}

variable "db_username" {
  description = "The username for the RDS instance."
  type        = string
  default     = "admin"
}

variable "db_passwd" {
  description = "The password for the RDS instance."
  type        = string
  default     = "admin123"
}   
variable "db_name" {
  description = "The name of the database to create in the RDS instance."
  type        = string
  default     = "mydatabase"
}
variable "tags" {
  description = "A map of tags to assign to the RDS instance."
  type        = map(string)
  default     = {
    Environment = "Demo"
    Name        = "PR3 RDS Instance"
    managed_by  = "Terraform"
    author      = "Mahesh"
  }
}
