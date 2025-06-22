variable "repository_name" {
  description = "Name of the GitHub repository"
  type        = string
}

variable "description" {
  description = "Description of the repository"
  type        = string
  default     = ""
}

variable "visibility" {
  description = "Repository visibility (public/private)"
  type        = string
  default     = "private"
}

variable "auto_init" {
  description = "Initialize repository with README"
  type        = bool
  default     = true
}

variable "additional_branches" {
  description = "List of additional branches to create"
  type        = list(string)
  default     = ["qa", "dev"]
}
variable "enable_branch_protection" {
  description = "Enable branch protection rules"
  type        = bool
  default     = true
}
variable "dev_and_qa_branch_pr_count"{
  description = "PR Count for Dev and QA"
  type        = number
  default     = "1"
}
variable "main_branch_pr_count"{
  description = "PR Count for Main"
  type        = number
  default     = "2"
}

