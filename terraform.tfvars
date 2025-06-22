repositories = {
  "Sample-Tech-1" = {
    description = "This is the first GitHub Repository created using Terraform"
    visibility  = "private"
    auto_init   = true
    additional_branches    = ["qa", "dev"]
  }
  "Sample-Tech-2" = {
    description = "This is the second GitHub Repository created using Terraform"
    visibility  = "private"
    auto_init   = true
    additional_branches    = ["qa", "dev"]
  }
  "Sample-Tech-3" = {
    description = "This is the third GitHub repository created using Terraform"
    visibility  = "private"
    auto_init   = true
    additional_branches    = ["qa","dev"]  
  }
    "mobility_flutter-build-validation-poc" = {
    description = "This repository is created for perfoming a POC on Flutter BUild Validation"
    visibility  = "private"
    auto_init   = true
    additional_branches    = ["qa","dev"]  
  }
  
  "mobility_react-build-validation-poc" = {
    description = "This repository is created for perfoming a POC on React BUild Validation"
    visibility  = "private"
    auto_init   = true
    additional_branches    = ["qa","dev"]  
  }
    
  "devsecops_knowledgebase" = {
    description = "This is a centralized repository created for managing all scripts"
    visibility  = "private"
    auto_init   = true
    additional_branches    = ["dev"]  
  }
    "servicenow_store_kaisy" = {
    description = "This repository is created for servicenow kaisy"
    visibility  = "private"
    auto_init   = true
    additional_branches    = ["dev"]  
  }
}

#-----------------------------------

org_members = ["GannySpenzer", "naveenprasaath29"]

teams = {
  DevTeam = {
    description       = "Team Created for Developers"
    privacy           = "closed"
    members           = ["GannySpenzer"]
    repo_permissions  = {
      "Sample-Tech-1" = "push"
      "Sample-Tech-2" = "admin"
      "Sample-Tech-3" = "admin"
    }
  }

cloud_l1 = {
    description       = "Team Created for Cloud L1 Leads"
    privacy           = "closed"
    members           = ["GannySpenzer"]
    repo_permissions  = {
      "Sample-Tech-1" = "push"
    }
  }

  cloud_l2 = {
    description       = "Team Created for Cloud L2 Leads"
    privacy           = "closed"
    members           = ["GannySpenzer","naveenprasaath29"]
    repo_permissions  = {
      "Sample-Tech-1" = "push"
      "devsecops_knowledgebase" = "push"
    }
  }
   cloud_pr_approvers = {
    description       = "Team Created for Cloud PR Approvers"
    privacy           = "closed"
    members           = ["GannySpenzer"]
    repo_permissions  = {
      "Sample-Tech-1" = "push"
    }
  }


  # QATeam = {
  #   description       = "Team for QA"
  #   privacy           = "closed"
  #   members           = ["naveenprasaath29"]
  #   repo_permissions  = {
  #     "Sample-Tech-1" = "pull"
  #     "Sample-Tech-2" = "admin"
  #   }
  # }
}