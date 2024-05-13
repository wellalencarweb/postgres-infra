# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.20.0"
    }

    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.21.0"
    }
  }

  backend "s3" {
    bucket         = "tf-state-bucket-4567"
    key            = "rds/main.tf"
    region         = "us-east-1"
    profile        = "default"
    encrypt        = true
    dynamodb_table = "terraform-state-lock"
  }
}
