
# ---------------------------------------------------------------------------------------------------------------------
# RDS
# ---------------------------------------------------------------------------------------------------------------------

module "postgresql" {
  source                       = "./modules/postgresql"
  tag_name                     = var.project
  environment                  = var.environment
  env                          = var.env
  master_username              = var.master_username
  port_postgres                = var.port_postgres
  name_bd_postgres             = var.name_bd_postgres
  skip_final_snapshot          = var.skip_final_snapshot
  count_instances              = var.count_instances
  project                      = var.project
  engine_cluster               = var.engine_cluster
  backup_retention_period      = var.backup_retention_period
  preferred_backup_window      = var.preferred_backup_window
  preferred_maintenance_window = var.preferred_maintenance_window
  apply_immediately            = var.apply_immediately
  instance_class               = var.instance_class
  engine_instance              = var.engine_instance
  publicly_accessible          = var.publicly_accessible
  storage_encrypted            = var.storage_encrypted
  vpc_id                       = var.vpc_id
  ca_cert_identifier           = var.ca_cert_identifier
}

