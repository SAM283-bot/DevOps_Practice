resource "aws_dynamodb_table" "lock" {
  name         = "samarth-tf-lock-table-unique"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
