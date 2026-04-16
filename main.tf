# variables.tf
variable "aws_region" {
  description = "Región de AWS para desplegar recursos"
  type        = string
  default     = "us-east-1" # Cambie a su región preferida
}

variable "azure_location" {
  description = "Ubicación de Azure para desplegar recursos"
  type        = string
  default     = "eastus" # Cambie a su ubicación preferida
}

variable "resource_prefix" {
  description = "Prefijo para nombrar todos los recursos"
  type        = string
  default     = "coder-app"
}

# Variables para las credenciales de Azure Service Principal (usadas en CI/CD)
variable "azure_client_id" {
  description = "Client ID para Azure Service Principal"
  type        = string
  sensitive   = true # Marca esta variable como sensible
}

variable "azure_client_secret" {
  description = "Client Secret para Azure Service Principal"
  type        = string
  sensitive   = true # Marca esta variable como sensible
}

variable "azure_subscription_id" {
  description = "Subscription ID para Azure"
  type        = string
  sensitive   = true
}

variable "azure_tenant_id" {
  description = "Tenant ID para Azure"
  type        = string
  sensitive   = true
}