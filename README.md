# Módulo Terraform: AWS EC2 (Grupo 4)

**Integrantes:** Marysabel Aedo, Solange Milla

## Descripción
Este módulo de Terraform provisiona recursos de cómputo (instancias EC2) en AWS siguiendo los estándares y nomenclaturas de la asignatura Infraestructura como Código II (AUY1105). Está diseñado para ser invocado desde un Orquestador principal, recibiendo dinámicamente las dependencias de red.

## Características de Seguridad
El módulo incluye configuraciones predeterminadas para pasar análisis estáticos (Checkov):
- Volúmenes EBS encriptados por defecto.
- Metadatos de instancia seguros (IMDSv2).
- Monitoreo detallado activado.
- Asociación al perfil de instancia `LabInstanceProfile` de AWS Academy.

## Ejemplo de Uso

```hcl
module "computo" {
  source = "git::[https://github.com/Solange-sm/terraform-aws-vpc-AUY1105-Grupo-4.git?ref=v1.0.0](https://github.com/Solange-sm/terraform-aws-vpc-AUY1105-Grupo-4.git?ref=v1.0.0)"
  
  # Variables obligatorias inyectadas por el módulo de red
  subnet_id         = "subnet-0123456789abcdef0"
  security_group_id = "sg-0123456789abcdef0"
  
  # Variables opcionales (con valores por defecto en el módulo)
  environment       = "AUY1105-appiac"
  instance_type     = "t2.micro"
}
```

## Referencia de Variables (Inputs)

| Nombre | Descripción | Tipo | Requerido | Valor por Defecto |
|--------|-------------|------|-----------|-------------------|
| `subnet_id` | ID de la subred destino. Debe ser inyectada por el Orquestador desde el módulo de red. | `string` | **Sí** | n/a |
| `security_group_id` | ID del Grupo de Seguridad asociado. Debe ser inyectado por el Orquestador desde el módulo de red. | `string` | **Sí** | n/a |
| `ami_id` | Identificador de la Imagen de Máquina de Amazon (AMI) a instanciar. | `string` | No | `"ami-0ec10929233384c7f"` |
| `instance_type` | Tipo de instancia computacional. | `string` | No | `"t2.micro"` |
| `environment` | Sufijo de nomenclatura para etiquetado estándar. | `string` | No | `"AUY1105-appiac"` |

## Salidas (Outputs)

| Nombre | Descripción |
|--------|-------------|
| `instance_id` | Identificador único de la instancia EC2 desplegada. |
| `instance_ip` | Dirección IPv4 pública asignada para la validación del despliegue y acceso web. |
