resource "google_storage_bucket" "bucket_1" {
  name = "${var.project_id}-${var.tf_backend}"
  versioning {
    enabled = true
  }
  location                    = "US"
  uniform_bucket_level_access = true
}
