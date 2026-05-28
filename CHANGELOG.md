# Changelog

Todos los cambios notables en este proyecto serán documentados en este archivo.
El formato está basado en [Keep a Changelog](https://keepachangelog.com/es-ES/1.0.0/), y este proyecto se adhiere a Versionado Semántico (SemVer).

## [1.0.0] - 2026-05-28
### Added
- Inicialización del módulo de Cómputo (EC2) desacoplado de la infraestructura monolítica.
- Archivos core de Terraform: `main.tf`, `variables.tf`, `outputs.tf` y `versions.tf` completamente parametrizados.
- Dependencias de red (`subnet_id`, `security_group_id`) configuradas como variables dinámicas obligatorias.
- Estructura de pruebas con la carpeta `examples/basico/` para demostrar la implementación del módulo.

### Security
- Mantenimiento de políticas de seguridad heredadas (Checkov):
  - Habilitación de monitoreo detallado de EC2.
  - Encriptación obligatoria del volumen raíz (EBS).
  - Uso forzado de IMDSv2 para metadatos seguros (`http_tokens = "required"`).