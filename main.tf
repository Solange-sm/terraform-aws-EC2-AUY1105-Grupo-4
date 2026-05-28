# ==============================================================================
# Módulo de Cómputo - Evaluación Parcial 2
# ==============================================================================

# Definición del recurso de cómputo EC2 parametrizado
resource "aws_instance" "app_iac" {
    ami                    = var.ami_id
    instance_type          = var.instance_type
    
    # Atributos de red provistos dinámicamente por el Orquestador Raíz
    subnet_id              = var.subnet_id
    vpc_security_group_ids = [var.security_group_id]
    iam_instance_profile   = "LabInstanceProfile"

    # Cumplimiento de normativas de seguridad (Mitigación Checkov EV1)
    monitoring = true
    
    root_block_device {
        encrypted = true
    }
    
    metadata_options {
        http_endpoint = "enabled"
        http_tokens   = "required"
    }

    tags = {
        Name = "${var.environment}-ec2"
    }
}