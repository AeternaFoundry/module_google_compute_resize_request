output "compute_resize_requests_id" {
  description = "Map of id values across all compute_resize_requests, keyed the same as var.compute_resize_requests except keys with no id are omitted"
  value       = { for k, v in google_compute_resize_request.compute_resize_requests : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_resize_requests_creation_timestamp" {
  description = "Map of creation_timestamp values across all compute_resize_requests, keyed the same as var.compute_resize_requests except keys with no creation_timestamp are omitted"
  value       = { for k, v in google_compute_resize_request.compute_resize_requests : k => v.creation_timestamp if v.creation_timestamp != null && length(v.creation_timestamp) > 0 }
}
output "compute_resize_requests_deletion_policy" {
  description = "Map of deletion_policy values across all compute_resize_requests, keyed the same as var.compute_resize_requests except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_resize_request.compute_resize_requests : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_resize_requests_description" {
  description = "Map of description values across all compute_resize_requests, keyed the same as var.compute_resize_requests except keys with no description are omitted"
  value       = { for k, v in google_compute_resize_request.compute_resize_requests : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_resize_requests_instance_group_manager" {
  description = "Map of instance_group_manager values across all compute_resize_requests, keyed the same as var.compute_resize_requests except keys with no instance_group_manager are omitted"
  value       = { for k, v in google_compute_resize_request.compute_resize_requests : k => v.instance_group_manager if v.instance_group_manager != null && length(v.instance_group_manager) > 0 }
}
output "compute_resize_requests_name" {
  description = "Map of name values across all compute_resize_requests, keyed the same as var.compute_resize_requests except keys with no name are omitted"
  value       = { for k, v in google_compute_resize_request.compute_resize_requests : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_resize_requests_project" {
  description = "Map of project values across all compute_resize_requests, keyed the same as var.compute_resize_requests except keys with no project are omitted"
  value       = { for k, v in google_compute_resize_request.compute_resize_requests : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_resize_requests_requested_run_duration" {
  description = "Map of requested_run_duration values across all compute_resize_requests, keyed the same as var.compute_resize_requests except keys with no requested_run_duration are omitted"
  value       = { for k, v in google_compute_resize_request.compute_resize_requests : k => one(v.requested_run_duration) if v.requested_run_duration != null && length(v.requested_run_duration) > 0 }
}
output "compute_resize_requests_resize_by" {
  description = "Map of resize_by values across all compute_resize_requests, keyed the same as var.compute_resize_requests except keys with no resize_by are omitted"
  value       = { for k, v in google_compute_resize_request.compute_resize_requests : k => v.resize_by if v.resize_by != null }
}
output "compute_resize_requests_state" {
  description = "Map of state values across all compute_resize_requests, keyed the same as var.compute_resize_requests except keys with no state are omitted"
  value       = { for k, v in google_compute_resize_request.compute_resize_requests : k => v.state if v.state != null && length(v.state) > 0 }
}
output "compute_resize_requests_status" {
  description = "Map of status values across all compute_resize_requests, keyed the same as var.compute_resize_requests except keys with no status are omitted"
  value       = { for k, v in google_compute_resize_request.compute_resize_requests : k => v.status if v.status != null && length(v.status) > 0 }
}
output "compute_resize_requests_zone" {
  description = "Map of zone values across all compute_resize_requests, keyed the same as var.compute_resize_requests except keys with no zone are omitted"
  value       = { for k, v in google_compute_resize_request.compute_resize_requests : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

