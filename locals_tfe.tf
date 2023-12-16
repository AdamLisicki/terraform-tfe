locals {
  projects = {
    "engineering-thesis-project" = {
      description = "Engineering Thesis Project"
    }
  }
  workspaces = {
    "tfe" = {
      description         = "Automation workspace for Terraform Cloud resources."
      execution_mode      = "remote"
      project_id          = module.project["engineering-thesis-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/terraform-tfe"
    }
  
    # "github" = {
    #   description         = "Automation workspace for GitHub resources."
    #   execution_mode      = "remote"
    #   project_id          = module.project["engineering-thesis-project"].id
    #   vcs_repo_identifier = "${var.github_organization_name}/terraform-github"
    # }

    # "aws-network" = {
    #   description         = "Automation workspace for AWS network resources."
    #   execution_mode      = "remote"
    #   project_id          = module.project["engineering-thesis-project"].id
    #   vcs_repo_identifier = "${var.github_organization_name}/terraform-aws-network"
    # }
  
    # "product-service-prod" = {
    #   description         = "Automation for product service resources."
    #   execution_mode      = "remote"
    #   project_id          = module.project["engineering-thesis-project"].id
    #   vcs_repo_identifier = "${var.github_organization_name}/terraform-product-service"

    #   variables = [
    #     {
    #       category = "terraform"
    #       key      = "cluster_name"
    #       value    = "cluster-prod"
    #     },
    #     {
    #       category = "terraform"
    #       key      = "environment"
    #       value    = "prod"
    #     },
    #   ]
    # }
    }
}