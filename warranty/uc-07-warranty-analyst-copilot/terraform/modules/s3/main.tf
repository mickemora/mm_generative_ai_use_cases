
data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "warranty_docs" {
  bucket = "${var.name_prefix}-docs-${data.aws_caller_identity.current.account_id}"
}

resource "aws_s3_bucket_public_access_block" "warranty_docs" {
  bucket = aws_s3_bucket.warranty_docs.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "warranty_docs" {
  bucket = aws_s3_bucket.warranty_docs.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_versioning" "warranty_docs" {
  bucket = aws_s3_bucket.warranty_docs.id

  versioning_configuration {
    status = "Enabled"
  }
}
