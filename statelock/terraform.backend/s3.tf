resource "aws_s3_bucket" "state" {
  bucket        = "samarth-tf-state-bucket-unique"
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "state" {
  bucket = aws_s3_bucket.state.id
  versioning_configuration {
    status = "Enabled"
  }
}
