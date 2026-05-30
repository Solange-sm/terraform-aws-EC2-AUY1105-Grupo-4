# ==============================================================================
# Módulo de Cómputo - Evaluación Parcial 2
# Archivo: outputs.tf
# ==============================================================================

output "instance_id" {
    description = "Identificador único de la instancia EC2 desplegada"
    value       = aws_instance.app_iac.id
}

output "instance_ip" {
    description = "Dirección IPv4 pública asignada para la validación del despliegue y acceso web"
    value       = aws_instance.app_iac.public_ip
}