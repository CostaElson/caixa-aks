terraform {
  required_version = ">= 1.6"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.80"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.12"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.24"
    }
  }

  backend "azurerm" {
    resource_group_name  = "gh-terraform"
    storage_account_name = "ghdevopsaksce"
    container_name       = "tfstateaksce"
    # key será definido via -backend-config no workflow
  }
}