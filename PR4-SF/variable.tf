variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-west-2" 
}

variable "env" {
  description = "The environment for the deployment (e.g., demo, production)"
  type        = string
}