# ----------------------------------------------------------------------------------------------------------------------
# REQUIRE A SPECIFIC TERRAFORM VERSION OR HIGHER
# This module has been updated with 0.12 syntax, which means it is no longer compatible with any versions below 0.12.
# ----------------------------------------------------------------------------------------------------------------------

terraform {
  required_version = "~> 0.12"
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE ECS CLUSTER FARGATE
# ---------------------------------------------------------------------------------------------------------------------

resource "aws_ecs_cluster" "main" {
  count = var.create_ecs ? 1 : 0

  name               = var.name
  capacity_providers = var.capacity_providers

  dynamic "setting" {
    for_each = var.setting
    content {
      name  = setting.value["name"]
      value = setting.value["value"]
    }
  }
}