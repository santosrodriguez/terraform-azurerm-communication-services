terraform {
  required_providers {
    azurecaf = {
      source = "aztfmod/azurecaf"
    }
    random = {
      source = "hashicorp/random"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "random_string" "suffix" {
  length = 4
  upper = false
  special = false
  numeric = false
}

resource "azurerm_communication_service" "acs" {
  name = "acs-${var.solution_name}-${var.location}-${var.environment}-${random_string.suffix.result}"
  resource_group_name = var.resource_group_name
  data_location = "United States"
}
