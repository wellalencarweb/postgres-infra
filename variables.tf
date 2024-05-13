# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  default     = "us-east-1"
  description = "AWS region"
}

variable "db_user" {
  description = "RDS root user"
  sensitive   = true
}

variable "db_password" {
  description = "RDS root user password"
  sensitive   = true
}

variable "db_port" {
  description = "RDS port"
  sensitive   = true
}

variable "db_name" {
  description = "Database name"
  sensitive   = true
}