# variables.tf
variable "aws_region" {
  description = "Región de AWS para desplegar recursos"
  type        = string
  default     = "us-east-1"
}

variable "azure_location" {
  description = "Ubicación de Azure para desplegar recursos"
  type        = string
  default     = "eastus"
}

variable "resource_prefix" {
  description = "Prefijo para nombrar todos los recursos"
  type        = string
  default     = "coder-app"
}