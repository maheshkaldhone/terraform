variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-west-2"
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
  default     = "t2.micro"
}

variable "instance_ami" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-05f991c49d264708f"
}

variable "security_group_id" {
  description = "The ID of the security group to associate with the EC2 instance"
  type        = string
  default     = "sg-0a6ff86cf2b56a154" 
}

variable "ssh_key_name" {
  description = "The name of the SSH key pair to use for accessing the EC2 instance"
  type        = string
  default     = "oregon"
  
}
variable "root_block_device_size" {
  description = "The size of the root block device in GB"
  type        = number
  default     = 10
}

variable "ebs_block_device_size" {
  description = "The size of the EBS block device in GB"
  type        = number
  default     = 8
}

variable "volume_type" {
  description = "The type of volume for the root block device"
  type        = string
  default     = "gp2"
}