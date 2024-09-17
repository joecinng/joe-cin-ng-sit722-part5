# Initialises Terraform providers and sets their version numbers.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.71.0"
    }
  }

  required_version = ">= 1.5.6"
}

provider "azurerm" {
  features {}
  client_id        = var.ARM_CLIENT_ID
  client_secret    = var.ARM_CLIENT_SECRET
  tenant_id        = var.AZURE_TENANT_ID
  subscription_id  = var.MVP_SUBSCRIPTION

  variable "tenant_id" {
    type = string
  }

  variable "client_id" {
    type = string
  }

  variable "client_secret" {
    type = string
  }

  variable "subscription_id" {
    type = string
  }
}
