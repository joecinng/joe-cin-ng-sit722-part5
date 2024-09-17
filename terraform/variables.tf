# Sets global variables for this Terraform project.

variable app_name {
  default = "sit722week9joecinng"
}

variable location {
  default = "eastus"
}

variable kubernetes_version {    
  default = "1.30.2"
}

variable "ARM_CLIENT_ID" {
  description = "The client ID for the Azure service principal."
  type        = string
}

variable "ARM_CLIENT_SECRET" {
  description = "The client secret for the Azure service principal."
  type        = string
}

variable "AZURE_TENANT_ID" {
  description = "The tenant ID for the Azure service principal."
  type        = string
}

variable "MVP_SUBSCRIPTION" {
  description = "The subscription ID for the Azure service principal."
  type        = string
}