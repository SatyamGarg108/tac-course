variable "instance_name" {
  description = "Name tag of the instance"
  type        = string

  default = "Lesson-07-Variables!!!"
}

variable "IAM_user" {
  description = "IAM user name"
  type        = string

  default = "tac-terraform-user"
}
