variable "cidr_block" {
  type        = string
  default     = ""
  description = "Networking CIDR block for the VPC"
}

variable "project_name" {
  type = string

  description = "Project name for tagging resources"
}

variable "environment" {
  type = string

  description = "Environment name for tagging resources"
}
