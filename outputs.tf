# outputs.tf
output "aws_s3_bucket_name" {
  description = "Nombre del bucket S3 creado en AWS"
  value       = aws_s3_bucket.multi_cloud_bucket.id
}

output "azure_resource_group_name" {
  description = "Nombre del Grupo de Recursos creado en Azure"
  value       = azurerm_resource_group.multi_cloud_rg.name
}

output "azure_resource_group_location" {
  description = "Ubicación del Grupo de Recursos creado en Azure"
  value       = azurerm_resource_group.multi_cloud_rg.location
}