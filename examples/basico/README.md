# Ejemplo de Implementación Básica

Este directorio contiene un caso de uso práctico para invocar el módulo de cómputo EC2 de forma independiente.

## Instrucciones de Ejecución

Para validar la configuración localmente, navega a este directorio en tu terminal y ejecuta:

1. Inicializar el entorno:
   ```bash
   terraform init
   ```

2. Validar la sintaxis:
   ```bash
   terraform validate
   ```

3. Generar un plan de ejecución (requiere IDs válidos de Subnet y SG en tu cuenta AWS):
   ```bash
   terraform plan
   ```
