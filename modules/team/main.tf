resource "github_team" "this" {
  name        = var.team_name
  description = var.description
  privacy     = var.privacy
}