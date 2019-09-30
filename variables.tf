variable "name" {
  type        = string
  description = "(Required) The name of the codebuild project and artifact bucket"
}

variable "deploy_type" {
  type        = string
  description = "(Required) Must be one of the following ( ecr, ecs, lambda )"
}

variable "ecr_name" {
  type        = string
  description = "(Optional) The name of the ECR repo. Required if var.deploy_type is ecr or ecs"
  default     = null
}

variable "codebuild_image" {
  type        = string
  description = "(Optional) The codebuild image to use"
  default     = "aws/codebuild/amazonlinux2-x86_64-standard:1.0"
}

variable "build_compute_type" {
  type        = string
  description = "(Optional) build environment compute type"
  default     = "BUILD_GENERAL1_SMALL"
}

variable "logs_retention_in_days" {
  type        = number
  description = "(Optional) Days to keep the cloudwatch logs for this codebuild project"
  default     = 14
}

variable "tags" {
  type        = map
  description = "(Optional) A mapping of tags to assign to the resource"
  default     = {}
}
