variable "azure_devops_pat" {
  description = "Personal Access Token for Azure DevOps"
  type        = string
}

variable "project_id" {
  description = "The ID of the Azure DevOps project"
  type        = string
}

variable "repository_id" {
  description = "The ID of the repository for the pipeline"
  type        = string
}

variable "pipeline_id" {
  description = "The ID of the Azure DevOps pipeline"
  type        = string
}
variable "project_name" {
  description = "The name of the Azure DevOps project"
  type        = string
}

variable "repo_name" {
  description = "The name of the repository"
  type        = string
}

variable "pipeline_name" {
  description = "The name of the Azure DevOps pipeline"
  type        = string
}
variable "branch_name" {
  description = "The default branch name"
  type        = string
}

variable "yml_path" {
  description = "The path to the YAML file for the pipeline"
  type        = string
}