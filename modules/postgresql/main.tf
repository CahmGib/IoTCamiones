# ---------------------------------------------------------------------------------------------------------------------
# RANDOM PASSWORD AURORA POSTGRES
# ---------------------------------------------------------------------------------------------------------------------
resource "random_password" "master_password" {
  length           = 16
  special          = true
  override_special = "!<>"
}

resource "aws_db_subnet_group" "db_sg_groups" {
  name       = "${var.tag_name}-${var.environment}-aurora-sg"
  subnet_ids = data.aws_subnets.secure_subnets.ids
}

resource "aws_rds_cluster" "postgresql" {
  cluster_identifier           = "${var.environment}-aurora-cluster"
  engine                       = var.engine_cluster
  master_username              = aws_ssm_parameter.user_ps.value
  master_password              = aws_ssm_parameter.password.value
  db_subnet_group_name         = aws_db_subnet_group.db_sg_groups.name
  vpc_security_group_ids       = [aws_security_group.default.id]
  availability_zones           = data.aws_availability_zones.availability_zones.exclude_zone_ids
  backup_retention_period      = var.backup_retention_period
  preferred_backup_window      = var.preferred_backup_window
  preferred_maintenance_window = var.preferred_maintenance_window
  #apply_immediately             = var.apply_immediately  # Aplicar cambios inmediatamente
  skip_final_snapshot = var.skip_final_snapshot
  storage_encrypted   = var.storage_encrypted
}

resource "aws_rds_cluster_instance" "aurora_instances" {
  count               = var.count_instances
  identifier          = "${var.project}-${var.environment}-${count.index}-instancia"
  cluster_identifier  = aws_rds_cluster.postgresql.id
  instance_class      = var.instance_class # Reemplaza con el tipo de instancia que desees
  engine              = var.engine_instance
  engine_version      = aws_rds_cluster.postgresql.engine_version
  publicly_accessible = var.publicly_accessible
  ca_cert_identifier  = var.ca_cert_identifier
  apply_immediately   = var.apply_immediately
}

resource "aws_security_group" "default" {
  name_prefix = "${var.project}-${var.environment}-sg-rds"
  description = "grupo de seguridad postgre"
  vpc_id      = data.aws_vpc.vpc_id.id
  tags = {
    Name = "secure-${var.env}"

  }
  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


# ---------------------------------------------------------------------------------------------------------------------
# PARAMETER STORE WRITE
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_ssm_parameter" "password" {
  name        = "/${var.project}/${var.environment}/aurora/dbw.password"
  description = "Contraseña base de datos postgres"
  type        = "SecureString"
  value       = random_password.master_password.result

  tags = {
    Name = "${var.tag_name}_${var.environment}_password_postgres_ps"

  }
}

resource "aws_ssm_parameter" "user_ps" {

  name        = "/${var.project}/${var.environment}/aurora/dbw.user"
  description = "USuario base de datos"
  type        = "SecureString"
  value       = var.master_username

  tags = {
    Name = "${var.tag_name}_${var.environment}_master_user_ps"

  }
}
resource "aws_ssm_parameter" "port_ps" {

  name        = "/${var.project}/${var.environment}/aurora/dbw.port"
  description = "Puerto de la base de datos aurora postgres"
  type        = "SecureString"
  value       = var.port_postgres

  tags = {
    Name = "${var.tag_name}_${var.environment}_port_postgres_ps"

  }
}
resource "aws_ssm_parameter" "uri_postgres_ps" {

  name        = "/${var.project}/${var.environment}/aurora/dbw.uri"
  description = "Uri de la base de datos aurora postgres"
  type        = "SecureString"
  value       = aws_rds_cluster.postgresql.endpoint

  tags = {
    Name = "${var.tag_name}_${var.environment}_uri_postgres_ps"

  }
}

resource "aws_ssm_parameter" "bd_postgres_ps" {

  name        = "/${var.project}/${var.environment}/aurora/dbw.name"
  description = "Nombre de la base de datos aurora postgres"
  type        = "SecureString"
  value       = var.name_bd_postgres

  tags = {
    Name = "${var.tag_name}_${var.environment}_name_bd_postgres_ps"

  }
}

# ---------------------------------------------------------------------------------------------------------------------
# PARAMETER STORE READ
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_ssm_parameter" "password_read" {

  name        = "/${var.project}/${var.environment}/aurora/dbr.password"
  description = "Contraseña base de datos postgres_lector"
  type        = "SecureString"
  value       = random_password.master_password.result

  tags = {
    Name = "${var.tag_name}_${var.environment}_password_postgres_ps"

  }
}

resource "aws_ssm_parameter" "user_ps_read" {

  name        = "/${var.project}/${var.environment}/aurora/dbr.user"
  description = "USuario base de datos lector"
  type        = "SecureString"
  value       = var.master_username

  tags = {
    Name = "${var.tag_name}_${var.environment}_master_user_ps"

  }
}
resource "aws_ssm_parameter" "port_ps_read" {

  name        = "/${var.project}/${var.environment}/aurora/dbr.port"
  description = "Puerto de la base de datos aurora postgres lector"
  type        = "SecureString"
  value       = var.port_postgres

  tags = {
    Name = "${var.tag_name}_${var.environment}_port_postgres_ps"

  }
}
resource "aws_ssm_parameter" "uri_postgres_ps_read" {

  count       = var.count_instances > 1 ? 1 : 0
  name        = "/${var.project}/${var.environment}/aurora/dbr.uri"
  description = "Uri de la base de datos aurora postgres lector"
  type        = "SecureString"
  value       = aws_rds_cluster.postgresql.reader_endpoint
  tags = {
    Name = "${var.tag_name}_${var.environment}_uri_postgres_ps_lector"

  }
}

resource "aws_ssm_parameter" "bd_postgres_ps_read" {

  name        = "/${var.project}/${var.environment}/aurora/dbr.name"
  description = "Nombre de la base de datos aurora postgres"
  type        = "SecureString"
  value       = var.name_bd_postgres

  tags = {
    Name = "${var.tag_name}_${var.environment}_name_bd_postgres_ps_lector"

  }
}