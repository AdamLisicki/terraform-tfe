# locals {
#   workspace_aws = merge(
#     {
#       for name, network in local.network : "${name}-aws-network" => {
#         description         = "Automation for AWS network resources."
#         execution_mode      = "remote"
#         project_id          = module.project["engineering-thesis-project"].id
#         vcs_repo_identifier = "${var.github_organization_name}/terraform-aws-network"

#         variables = [
#           {
#             category = "terraform"
#             hcl      = true
#             key      = "azs"
#             value    = jsonencode(network.azs)
#           },
#           {
#             category = "terraform"
#             key      = "cidr"
#             value    = network.cidr
#           },
#           {
#             category = "terraform"
#             key      = "name"
#             value    = name
#           },
#         ]
#       }
#     },
#     {
#       for name, cluster in local.cluster : "${name}-aws-cluster-${cluster.environment}" => {
#         description         = "Automation for AWS cluster resources."
#         execution_mode      = "remote"
#         project_id          = module.project["engineering-thesis-project"].id
#         vcs_repo_identifier = "${var.github_organization_name}/terraform-aws-cluster"

#         variables = [
#           {
#             category = "terraform"
#             key      = "environment"
#             value    = cluster.environment
#           },
#           {
#             category = "terraform"
#             key      = "name"
#             value    = name
#           },
#           {
#             category = "terraform"
#             key      = "vpc_name"
#             value    = cluster.vpc_name
#           },
#         ]
#       }
#     },
#   )
# }