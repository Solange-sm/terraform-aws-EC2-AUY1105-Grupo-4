# Changelog

Todos los cambios notables en este proyecto serán documentados en este archivo.

El formato está basado en [Keep a Changelog](https://keepachangelog.com/es-ES/1.0.0/),
y este proyecto se adhiere a las buenas prácticas de versionado y revisión de código mediante Pull Requests bajo el estándar de Versionado Semántico (SemVer).

## [1.0.0] - 2026-05-30
### Added
- **Infraestructura Base:** Ingreso de los archivos core iniciales del módulo de Terraform (`main.tf`, `variables.tf`, `outputs.tf` y `versions.tf`).
- **Documentación:** Creación del archivo `CHANGELOG.md` para el control de versiones semántico.
- **Pruebas:** Creación de la carpeta `examples/` con el contenido necesario para demostrar la implementación práctica del módulo.

### Changed
- **Documentación:** Arreglos integrales al archivo `README.md` para documentar correctamente el uso del módulo de cómputo.
- **Configuración:** Formateo del archivo `versions.tf` para mantener una mayor coherencia visual y de código.

### Fixed
- **Seguridad (Checkov):** Modificación del archivo `main.tf` para obviar temporalmente las validaciones de Checkov que exigen el uso de Versionado Semántico (SemVer) mientras se prueba en ramas de desarrollo.
- **Seguridad (Checkov):** Corrección de un error tipográfico (typo) en el comentario de excepción para la optimización de discos EBS.
- **CI/CD:** Corrección de compatibilidad del pipeline limitando la versión requerida de Terraform directamente en el archivo `versions.tf`.
