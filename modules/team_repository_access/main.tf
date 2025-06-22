resource "github_team_repository" "access" {
  for_each = var.repo_permissions

  team_id    = var.team_id
  repository = each.key
  permission = each.value
}