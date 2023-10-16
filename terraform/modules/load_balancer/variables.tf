
variable "alb_name" {
  description = "Name for the Application Load Balancer"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the ALB"
  type        = string
}

variable "security_group_id" {
  description = "Security Group ID for the ALB"
  type        = string
}

variable "subnet1_id" {
  description = "Subnet ID for the ALB"
  type        = string
}

variable "subnet2_id" {
  description = "Subnet ID for the ALB"
  type        = string
}

variable "instance1_id" {
  description = "ID of the first EC2 instance to attach to the target group"
  type        = string
}

variable "instance2_id" {
  description = "ID of the second EC2 instance to attach to the target group"
  type        = string
}
