terraform {
  cloud {
    organization = "praca_inzynierska"
    workspaces {
      name = "tfe"
    }
  }
}