locals {
  common_name = "${var.project}-${var.environment}" # roboshop-dev
  common_tags = {
    Project     = var.project
    Environment = var.environment
    terraform   = "true"
    Name        = local.common_name
  }

  az_names = slice(data.aws_availability_zones.available.names, 0, 2)

}