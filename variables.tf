variable allocated_storage {
  type        = number
  default     = null
  description = "Tamanho do banco"
}

variable storage_type {
  type        = string
  default     = null
  description = "Tipo de armazenamento do banco"
}

variable engine {
  type        = string
  default     = "mysql"
  description = "Tipo do banco"
}

variable engine_version {
  type        = string
  default     = "8.0.36"
  description = "Versão do banco escolhido"
}


variable instance_class {
  type        = string
  default     = null
  description = "Tipo da instancia"
}


variable db_name {
  type        = string
  default     = null
  description = "Nome do banco"
}


variable username {
  type        = string
  default     = null
  description = "Nome do usuario master"
}



variable parameter_group_name {
  type        = string
  default     = "default.mysql8.0"
  description = "Parameter group do RDS"
}


variable skip_final_snapshot {
  type        = bool
  default     = true
  description = "Snapshot final ?"
}


variable subnet1 {
  type        = string
  default     = null
  description = "subnet id 1"
}


variable subnet2 {
  type        = string
  default     = null
  description = "Subnet id 1"
}

variable desired_size {
  type        = number
  default     = 3
  description = "desired_size"
}

variable max_size {
  type        = number
  default     = 2
  description = "max_size"
}

variable min_size {
  type        = number
  default     = 1
  description = "min_size"
}



    
    

locals {
  allocated_storage     = var.allocated_storage
  storage_type          = var.storage_type
  engine                = var.engine
  engine_version        = var.engine_version
  instance_class        = var.instance_class
  db_name               = "doadmin"
  skip_final_snapshot   = var.skip_final_snapshot
  subnet1               = var.subnet1
  subnet2               = var.subnet2
  desired_size          = var.desired_size
  max_size              = var.max_size    
  min_size              = var.min_size    
}