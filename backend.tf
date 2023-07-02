# Note: The bucket name may not work for you since buckets are unique globally in AWS, so you must give it a unique name.
resource "aws_s3_bucket" "terraform_state" {
  bucket = "test-bucket-k8s-terra"
  force_destroy = "true"
  # Enable versioning so we can see the full revision history of our state files
  versioning {
    enabled = true
  }
}