variable "users" {
  type = list(string)
}

variable "role" {
  type    = string
  default = "member"
}