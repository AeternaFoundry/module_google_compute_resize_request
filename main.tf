resource "google_compute_resize_request" "compute_resize_requests" {
  for_each = var.compute_resize_requests

  instance_group_manager = each.value.instance_group_manager
  name                   = each.value.name
  resize_by              = each.value.resize_by
  deletion_policy        = each.value.deletion_policy
  description            = each.value.description
  project                = each.value.project
  zone                   = each.value.zone

  dynamic "requested_run_duration" {
    for_each = each.value.requested_run_duration != null ? [each.value.requested_run_duration] : []
    content {
      nanos   = requested_run_duration.value.nanos
      seconds = requested_run_duration.value.seconds
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

