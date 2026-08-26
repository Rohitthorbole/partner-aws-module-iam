variable "create_iam_user" {
  description = "Whether to create an IAM user"
  type        = bool
}

variable "iam_user_name" {
  type = string
  description = "Name of the IAM user to create. Required if create_iam_user is true."
}

variable "iam_policy" {
  type = string
  description = "The IAM policy to attach to the user. Required if create_iam_user is true."
}