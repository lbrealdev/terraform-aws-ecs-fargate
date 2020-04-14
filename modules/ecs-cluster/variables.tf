# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "create_ecs" {
  description = "Controls if the ECS cluster should be created."
  type        = bool
  default     = true
}

variable "name" {
  description = "The name of the cluster."
  type        = string
}

variable "capacity_providers" {
  description = "List of short names of one or more capacity providers to associate with the cluster. Valid values also include FARGATE and FARGATE_SPOT."
  type        = list(string)
  default     = ["FARGATE", "FARGATE_SPOT"]
}

variable "setting" {
  description = "Configuration block(s) with cluster settings. For example, this can be used to enable CloudWatch Container Insights for a cluster. Defined below."
  type        = list(map(string))
  default = [
    {
      name  = "containerInsights"
      value = "disabled"
    }
  ]
}