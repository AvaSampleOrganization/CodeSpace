variable "team_id" {
  type = string
}

variable "members" {
  type = list(string)
}

variable "role" {
  type    = string
  default = "member"
}