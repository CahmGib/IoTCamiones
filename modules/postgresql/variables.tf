variable "security_groups" {
  type        = list(string)
  description = "Listado de identificador de grupos de seguridad"
  default     = null
}
variable "env" {
  type = string
}



variable "environment" {
  type        = string
  description = "Identificador de ambientes"
}

variable "tag_name" {
  type        = string
  description = "Etiqueta de nombre"
}
/*
  variable "master_password" {
    type        = string
    description = "contraseña generada de manera ramdom"
  }

  variable "random_password" {
    
  }*/
variable "master_username" {

}

variable "port_postgres" {

}
variable "name_bd_postgres" {

}

variable "skip_final_snapshot" {

}

variable "project" {

}
variable "count_instances" {

}
variable "engine_cluster" {

}

variable "backup_retention_period" {

}
variable "preferred_backup_window" {

}
variable "preferred_maintenance_window" {

}
variable "apply_immediately" {

}
variable "instance_class" {

}
variable "engine_instance" {

}
variable "publicly_accessible" {

}
variable "storage_encrypted" {

}

variable "vpc_id" {

}
variable "ca_cert_identifier" {

}

