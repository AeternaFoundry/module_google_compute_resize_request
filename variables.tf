variable "compute_resize_requests" {
  description = <<EOT
Map of compute_resize_requests, attributes below
Required:
    - instance_group_manager
    - name
    - resize_by
Optional:
    - deletion_policy
    - description
    - project
    - zone
    - requested_run_duration (block):
        - nanos (optional)
        - seconds (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    instance_group_manager = string
    name                   = string
    resize_by              = number
    deletion_policy        = optional(string)
    description            = optional(string)
    project                = optional(string)
    zone                   = optional(string)
    requested_run_duration = optional(object({
      nanos   = optional(number)
      seconds = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

