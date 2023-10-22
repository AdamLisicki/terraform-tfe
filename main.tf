module "project"{
    source = "./modules/terraform-tfe-project"

    for_each = local.projects

    name = each.key
    description = each.value.description
    organization_name = var.organization_name
}

module "workspace" {
  source = "./modules/terraform-tfe-workspace"

  for_each = local.workspaces

  description       = each.value.description
  execution_mode    = each.value.execution_mode
  name              = each.key
  organization_name = var.organization_name
  project_id        = each.value.project_id
  variables         = try(each.value.variables, [])

  vcs_repo = {
    github_app_installation_id = data.tfe_github_app_installation.this.id
    identifier                 = each.value.vcs_repo_identifier
  }
}
