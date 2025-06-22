variable "team_id" {
  type = string
}

variable "repo_permissions" {
  type = map(string) # repo_name => permission
}