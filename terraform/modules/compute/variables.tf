
variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2 instances"
  type        = string
}

variable "security_group_id" {
  description = "Security Group ID for EC2 instances"
  type        = string
}

variable "subnet1_id" {
  description = "Subnet ID for the first EC2 instance"
  type        = string
}

variable "subnet2_id" {
  description = "Subnet ID for the second EC2 instance"
  type        = string
}

variable "userdata1_file" {
  description = "Path to the user data file for the first EC2 instance"
  type        = string
}

variable "userdata2_file" {
  description = "Path to the user data file for the second EC2 instance"
  type        = string
}
