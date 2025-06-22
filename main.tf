#Creation of Repository
module "repository" {
  source = "./modules/repository"
  
  for_each = var.repositories
  
  repository_name = each.key        
  description     = each.value.description
  visibility      = each.value.visibility
  auto_init       = each.value.auto_init
  additional_branches = each.value.additional_branches
  
}

#Invite Members to Organization 
module "org_membership" {
  source = "./modules/org_membership"

  users = var.org_members
  role  = "member"
}

#Creation of Teams
module "teams" {
  for_each = var.teams
  source   = "./modules/team"

  team_name   = each.key
  description = each.value.description
  privacy     = each.value.privacy
}

#Assign Team Members
module "team_members" {
  for_each = var.teams
  source   = "./modules/team_membership"

  team_id = module.teams[each.key].id
  members = each.value.members
  role    = "member"
}


#Repo Access to Teams
module "team_repo_access" {
  for_each = var.teams
  source   = "./modules/team_repository_access"

  team_id          = module.teams[each.key].id
  repo_permissions = each.value.repo_permissions
}