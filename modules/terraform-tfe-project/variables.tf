variable "description" {
  description = "The description of the project"
  type        = string
}

variable "name" {
  description = "The name of the project"
  type        = string
}

variable "organization_name" {
  description = "The name of the organization"
  type        = string
}

variable "team_ids" {
  default     = []
  description = "The name of the team"
  type        = list(string)
}