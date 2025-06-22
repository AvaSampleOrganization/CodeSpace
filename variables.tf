
    # variable "github_token" {
    # description = "GitHub personal access token"
    # type        = string
    # sensitive   = true
    # }

    # variable "github_owner" {
    # description = "GitHub owner/organization name"
    # type        = string
    # default     = "GannySpenzer"
    # }

    
    variable "repositories" {
    description = "Map of repositories to create"
    type = map(object({
        description = string
        visibility  = string
        auto_init   = bool
        additional_branches = list(string)
    }))
    }

variable "org_members" {
  type = list(string)
}

variable "teams" {
  type = map(object({
    description       = string
    privacy           = string
    members           = list(string)
    repo_permissions  = map(string)
  }))
}