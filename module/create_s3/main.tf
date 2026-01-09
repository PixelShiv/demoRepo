resource "aws_s3_bucket" "backend" {
    bucket = var.bucket
  }

  resource "aws_s3_bucket_versioning" "enable_version" {
    bucket = aws_s3_bucket.backend.id
     versioning_configuration {
    status = "Enabled"
    }
}
  
  resource "aws_s3_bucket_server_side_encryption_configuration" "enable_versioning" {
    bucket = aws_s3_bucket.backend.id

    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
    
  }