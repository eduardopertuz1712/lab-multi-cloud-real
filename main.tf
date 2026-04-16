# main.tf

# Recurso AWS: Bucket S3
resource "aws_s3_bucket" "multi_cloud_bucket" {
  bucket = "${var.resource_prefix}-data-bucket-${random_id.bucket_suffix.hex}"
  tags = {
    Environment = "Development"
    Project     = "CoderApp"
    Cloud       = "AWS"
  }
}

# Genera un sufijo aleatorio para el nombre del bucket S3 para asegurar unicidad
resource "random_id" "bucket_suffix" {
  byte_length = 8
}

# Recurso Azure: Grupo de Recursos
resource "azurerm_resource_group" "multi_cloud_rg" {
  name     = "${var.resource_prefix}-rg"
  location = var.azure_location
  tags = {
    Environment = "Development"
    Project     = "CoderApp"
    Cloud       = "Azure"
  }
}