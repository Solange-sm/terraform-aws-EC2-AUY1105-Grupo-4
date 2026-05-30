# ==============================================================================
# Ejemplo de Implementación Básica - Módulo EC2
# ==============================================================================

# Nota: Este código es solo para fines de demostración. 
# En un entorno real, los IDs de red deben ser dinámicos.

module "ec2_basico" {
    # Apunta a la raíz del repositorio local
    source = "../../"

    # Dependencias simuladas (En producción, provienen de outputs del módulo VPC)
    subnet_id         = "subnet-1234567890abcdef0"
    security_group_id = "sg-1234567890abcdef0"
    
    # Sobrescritura de variables opcionales para pruebas
    environment       = "AUY1105-test"
    instance_type     = "t2.micro"
}

output "ip_de_prueba" {
    value = module.ec2_basico.instance_ip
}