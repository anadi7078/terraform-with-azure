terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = ">=0.1.0"
    }
  }
}

provider "azuredevops" {
  org_service_url       = "https://dev.azure.com/mucahidozcelik"
  personal_access_token = var.azure_devops_pat
}

resource "azuredevops_build_definition" "CloudProject" {
  project_id = var.project_id
  name       = "CloudProject"
  path       = "\\"
  repository {
    repo_type   = "TfsGit"
    repo_id     = var.repository_id
    branch_name = var.branch_name
    yml_path    = var.yml_path
  }
  ci_trigger {
    use_yaml = true
  }
}