output "project_id" {
  description = "The ID of the Azure DevOps project"
  value       = var.project_id
}

output "repository_id" {
  description = "The ID of the repository for the pipeline"
  value       = var.repository_id
}

output "pipeline_id" {
  description = "The ID of the Azure DevOps pipeline"
  value       = azuredevops_build_definition.CloudProject.id
}

output "pipeline_name" {
  description = "The name of the Azure DevOps pipeline"
  value       = azuredevops_build_definition.CloudProject.name
}

output "pipeline_path" {
  description = "The path of the Azure DevOps pipeline"
  value       = azuredevops_build_definition.CloudProject.path
}

output "pipeline_repo_type" {
  description = "The repository type of the Azure DevOps pipeline"
  value       = azuredevops_build_definition.CloudProject.repository[0].repo_type
}

output "pipeline_repo_id" {
  description = "The repository ID of the Azure DevOps pipeline"
  value       = azuredevops_build_definition.CloudProject.repository[0].repo_id
}

output "pipeline_branch_name" {
  description = "The branch name of the Azure DevOps pipeline"
  value       = azuredevops_build_definition.CloudProject.repository[0].branch_name
}

output "pipeline_yaml_path" {
  description = "The YAML path of the Azure DevOps pipeline"
  value       = azuredevops_build_definition.CloudProject.repository[0].yml_path
}