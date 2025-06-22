resource "github_team_membership" "members" {
  for_each = { for user in var.members : user => user }

  team_id  = var.team_id
  username = each.value
  role     = var.role
}