resource "github_repository" "this" {
  name        = var.repository_name
  description = var.description
  visibility  = var.visibility
  auto_init   = var.auto_init

}
# Additional branch creation
resource "github_branch" "additional" {
  for_each = toset(var.additional_branches)
  
  repository = github_repository.this.name
  branch     = each.value
}

# Branch protection for main branch
resource "github_branch_protection" "main" {
  count = var.enable_branch_protection ? 1 : 0
  
  repository_id = github_repository.this.node_id
  pattern       = "main"
  
  required_status_checks {
    strict = true
  }
  
  required_pull_request_reviews {
    required_approving_review_count = var.main_branch_pr_count
    dismiss_stale_reviews          = true
    require_code_owner_reviews     = false
  }
  
  enforce_admins = false
  allows_deletions = false
  allows_force_pushes = false
}

# Branch protection for additional branches (qa, dev)
resource "github_branch_protection" "additional" {
  for_each = var.enable_branch_protection ? toset(var.additional_branches) : []
  
  repository_id = github_repository.this.node_id
  pattern       = each.value
  
  required_status_checks {
    strict = true
  }
  
  required_pull_request_reviews {
    required_approving_review_count = var.dev_and_qa_branch_pr_count
    dismiss_stale_reviews          = true
    require_code_owner_reviews     = false
  }
  
  enforce_admins = false
  allows_deletions = false
  allows_force_pushes = false
}
