# Parámetros Base
variable "ami_id" {
    description = "Identificador de la Imagen de Máquina de Amazon (AMI) a instanciar"
    type        = string
    default     = "ami-0ec10929233384c7f"
}

variable "instance_type" {
    description = "Tipo de instancia computacional"
    type        = string
    default     = "t2.micro"
}

# Dependencias Arquitectónicas (Obligatorias, sin valor default)
variable "subnet_id" {
    description = "ID de la subred destino. Debe ser inyectada por el Orquestador desde el módulo de red"
    type        = string
}

variable "security_group_id" {
    description = "ID del Grupo de Seguridad asociado. Debe ser inyectado por el Orquestador desde el módulo de red"
    type        = string
}

variable "environment" {
    description = "Sufijo de nomenclatura para etiquetado estándar"
    type        = string
    default     = "AUY1105-appiac"
}