# ==============================================================================
# Módulo de Cómputo - Evaluación Parcial 2
# ==============================================================================

# checkov:skip=CKV_AWS_135: La instancia t2.micro no soporta optimización EBS
resource "aws_instance" "app_iac" {
    ami                    = var.ami_id
    instance_type          = var.instance_type
    
    subnet_id              = var.subnet_id
    vpc_security_group_ids = [var.security_group_id]
    iam_instance_profile   = "LabInstanceProfile"

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
