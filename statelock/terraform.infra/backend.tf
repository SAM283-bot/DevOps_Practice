terraform {
  backend "s3" {
    bucket         = "samarth-tf-state-bucket-unique"
    key            = "app/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "samarth-tf-lock-table-unique"
    encrypt        = true
  }
}
