resource "github_membership" "invite" {
  for_each = toset(var.users)

  username = each.value
  role     = var.role
}