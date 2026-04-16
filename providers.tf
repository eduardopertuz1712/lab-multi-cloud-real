# providers.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  # En la industria, aquí configuraríamos un backend remoto (S3, Azure Storage)
  # backend "s3" {
  #   bucket = "mi-bucket-de-estado-iac"
  #   key    = "proyectos/multi-cloud-real/terraform.tfstate"
  #   region = "us-east-1"
  # }
}

# Configuración del proveedor AWS
provider "aws" {
  region = var.aws_region
  # Para CI/CD, las credenciales se obtendrán de variables de entorno:
  # AWS_ACCESS_KEY_ID y AWS_SECRET_ACCESS_KEY
}

# Configuración del proveedor Azure
provider "azurerm" {
  features {}
}